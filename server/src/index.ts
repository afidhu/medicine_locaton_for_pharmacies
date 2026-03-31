
import 'dotenv/config'; // or import dotenv from 'dotenv'; dotenv.config();
import express from 'express';


const app = express();
const PORT = process.env.PORT || 3000;

import { PrismaPg } from "@prisma/adapter-pg";
import { PrismaClient } from '@prisma/client';
import medicine_routers from './routes/medicine_routers.ts';
const connectionString = `${process.env.DATABASE_URL}`;
const adapter = new PrismaPg({ connectionString });
const prisma = new PrismaClient({ adapter });

export { prisma };
app.get('/', (req, res) => {
  res.send('Hello World!');
});


app.use(express.json());

app.use('/medicines', medicine_routers)


app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
