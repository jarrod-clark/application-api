const fs = require('fs');
const { parse } = require('csv-parse');

const inputFile = 'Seed Bridge Database.csv';
const outputData = [];

fs.createReadStream(inputFile)
  .pipe(parse({ columns: true }))
  .on('data', (row) => {
    Object.keys(row).forEach((key) => {
      if (Date.parse(row[key])) {
        // Convert to ISO string
        row[key] = new Date(row[key]).toISOString();
      }
    });
    outputData.push(row);
  })
  .on('end', () => {
    console.log(outputData);
  });
