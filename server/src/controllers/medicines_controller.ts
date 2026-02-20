import type { Request, Response } from "express";
import { prisma } from "../index.ts";
import e from "express";



export const addMedicine = (req:Request, res:Response) =>{

    const { name, description, price,type, imageUrl} = req.body;
    try {
        
    const results = prisma.medicines.create({
        data:{
            description: description,
            name: name,
            price: price,
            imageUrl: "https://example.com/medicine-image.jpg", // You can replace this with an actual image URL or handle it as needed
            type: "tablet" // You can replace this with the actual type of medicine or handle it as needed
        }
    })
    return res.status(201).json(results);

    } catch (error: any) {
        console.error("Error adding medicine:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while adding the medicine." });
        
    }
    // Here you would typically add the medicine to your database

}