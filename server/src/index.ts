
import 'dotenv/config'; // or import dotenv from 'dotenv'; dotenv.config();
import express from 'express';


const app = express();
const PORT = process.env.PORT || 3000;

import { PrismaPg } from "@prisma/adapter-pg";
import { PrismaClient } from '@prisma/client';
import medicine_routers from './routes/medicine_routers.ts';
import pharmacy_routers from './routes/pharmacy_routers.ts';
import pharmacy_requests_routers from './routes/pharmacy_requests_routers.ts';
const connectionString = `${process.env.DATABASE_URL}`;
const adapter = new PrismaPg({ connectionString });
export const prisma = new PrismaClient({ adapter });

app.use(express.json());

app.use('/medicines', medicine_routers)
app.use('/pharmacy', pharmacy_routers)
app.use('/pharmacy-requests', pharmacy_requests_routers)

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
