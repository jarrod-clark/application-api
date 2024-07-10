import { Module } from '@nestjs/common';
import { BridgeService } from './bridge.service';
import { BridgeController } from './bridge.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  providers: [BridgeService, PrismaService],
  controllers: [BridgeController]
})
export class BridgeModule {}
