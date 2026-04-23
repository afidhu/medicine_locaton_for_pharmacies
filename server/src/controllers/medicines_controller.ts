import type { Request, Response } from "express";
import { prisma } from "../index.ts";





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
    if(results){
        return res.status(201).json({ message: "Medicine added successfully", medicine: results });
    }else{
        return res.status(400).json({ message: "Failed to add medicine" }); 
    }

    } catch (error: any) {
        console.error("Error adding medicine:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while adding the medicine." });
        
    }
    // Here you would typically add the medicine to your database

}


export const getMedicine = async(req:Request, res:Response) => {
    console.log('object')
    try {
        const medicines = await prisma.medicines.findMany();
        return res.status(200).json(medicines);
    } catch (error: any) {
        console.error("Error fetching medicines:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while fetching the medicines." });
        
    }
}