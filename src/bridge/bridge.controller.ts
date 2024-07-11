import { Controller, Get, Post, Param, Body } from '@nestjs/common';
import { BridgeService } from './bridge.service';
import { CourtCase } from '@prisma/client';
import { parseISO } from 'date-fns'

@Controller('bridge')
export class BridgeController {
  constructor(private bridgeService: BridgeService) {}

  @Post('create')
  async createCase(@Body() courtCaseData: CourtCase): Promise<CourtCase> {
    try {
      return await this.bridgeService.create(courtCaseData)
    } catch(e){
      throw new Error(`Failed to create case: ${e.message}`)
    }
  }

  @Get('today')
  async getTodayCases(): Promise<CourtCase[]> {
    try {
      return await this.bridgeService.findTodayCases();
    } catch (e) {
      throw new Error(`Failed to fetch today's cases: ${e.message}`);
    }
  }
  
  @Get(':by-date/:enteredDateTime')
  async getCaseByDate(@Param('enteredDateTime') enteredDateTime: string): Promise<CourtCase[]>{
    try {    
      return await this.bridgeService.findAllByDate(enteredDateTime);
    } catch (e) {
      throw new Error(`Failed to fetch cases for ${enteredDateTime}: ${e.message}`);
    }
  }

  @Get(':by-id/:guid')
  async getCaseById(@Param('guid') guid: string): Promise<CourtCase>{
    try{ 
      return await this.bridgeService.findByCase(guid);
    } catch(e) {
      throw new Error(`Failed to fetch case for id ${guid}: ${e.message}`)
    }
  }
}
