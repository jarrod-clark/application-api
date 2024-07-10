import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { BridgeModule } from './bridge/bridge.module';
import { PrismaModule } from './prisma/prisma.module';

@Module({
  imports: [BridgeModule, PrismaModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
