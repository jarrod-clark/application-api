const fs = require('fs');
const { parse } = require('csv-parse');
const axios = require('axios');

const apiUrl = 'http://localhost:3000/bridge/create';
const inputFile = 'Seed Bridge Database.csv';

const arrayFields = ['charges', 'codefendant']

const convertCSVToISO = (inputFile) => {
  return new Promise((resolve, reject) => {
    const outputData = [];

    fs.createReadStream(inputFile)
        .pipe(parse({ columns: true }))
        .on('data', (row) => {
            Object.keys(row).forEach((key) => {
                if (arrayFields.includes(key)) {
                    row[key] = JSON.parse(row[key]);
                }
                if (Date.parse(row[key])) {
                  // Convert to ISO string
                  row[key] = new Date(row[key]).toISOString();
                }
            });
            outputData.push(row);
        })
        .on('end', () => {
          resolve(outputData);
        })
        .on('error', (error) => {
          reject(error);
        });
  });
};

const seedDatabase = async (data) => {
  for (const record of data) {
    try {
      const response = await axios.post(apiUrl, record);
      console.log(`Created record: ${response.data.guid}`);
    } catch (e) {
      console.log(`Failed to create record: ${record.guid} because ${e.message}`);
    }
  }
};


convertCSVToISO(inputFile)
  .then((data) => {
    console.log(data)
    //seedDatabase(data);
  })
  .catch((error) => {
    console.error('Error:', error);
  });
