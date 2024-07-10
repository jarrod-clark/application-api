import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import * as bodyParser from 'body-parser';
import * as dotenv from 'dotenv';

async function bootstrap() {
  dotenv.config()

  console.log('Database URL: ', process.env.DATABASE_URL)
  const app = await NestFactory.create(AppModule);
  app.use(bodyParser.json({limit: '1mb'}))
  await app.listen(3000);
}
bootstrap();
