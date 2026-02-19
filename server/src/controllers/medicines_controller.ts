import type { Request, Response } from "express";


export const addMedicine = (req:Request, res:Response) =>{
    const { name, description, price } = req.body;
    // const resukts = prism
    // Here you would typically add the medicine to your database
    res.status(201).json({ message: "Medicine added successfully", medicine: { name, description, price } });
}