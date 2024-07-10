import { Injectable, Param } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CourtCase } from '@prisma/client';
import { startOfDay, endOfDay} from 'date-fns'

@Injectable()
export class BridgeService {
    constructor(private readonly prisma: PrismaService) {}

    async create(data: CourtCase): Promise<CourtCase> {
        try {
            return this.prisma.courtCase.create({ data })
        } catch (e) {
            throw new Error(`Failed to create court case: ${e.message}`)
        }
    }

    async findTodayCases(): Promise<CourtCase[]> {
        try {
            const today = new Date();
            const start = startOfDay(today);
            const end = endOfDay(today);

            return this.prisma.courtCase.findMany({
                where: {
                    enteredDateTime: {
                        gte: start,
                        lt: end,
                    },
                },
            });
        } catch (e) {
            throw new Error(`Failed to fetch today's cases: ${e.message}`)
        }
    };

    async findAllByDate(enteredDate: Date): Promise<CourtCase[]> {
        try {
            const start = startOfDay(enteredDate);
            const end = endOfDay(enteredDate);

            return this.prisma.courtCase.findMany({
                where: {
                    enteredDateTime: {
                        gte: start,
                        lt: end,
                    },
                },
            });
        } catch (e) {
            throw new Error(`Failed to fetch cases for ${enteredDate}: ${e.message}`)
        }
    }
}
