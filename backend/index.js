import express from 'express';
import connectDB from './database/db.js';
import dotenv from 'dotenv';
import Routes from './routes/route.js';
const app=express();

dotenv.config();

app.use('/',Routes);

const PORT=8000;
const username=process.env.DB_USERNAME;
const password=process.env.DB_PASSWORD;
connectDB(username,password);

app.listen(PORT,()=>console.log(`Server is running sucessfully on PORT ${PORT}`));
