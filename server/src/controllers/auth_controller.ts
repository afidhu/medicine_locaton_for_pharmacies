

import type { Request, Response } from "express";
import { prisma } from "../index.ts";
import e from "express";



export const addUser = (req:Request, res:Response) =>{

    const { name, email, phone, password } = req.body;
    try {
        
    const results = prisma.user.create({
        data:{
            email: email,
            name: name,
            phone: phone,
            password: password
        }
    })
    return res.status(201).json(results);

    } catch (error: any) {
        console.error("Error adding user:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while adding the user." });
        
    }
    // Here you would typically add the medicine to your database

}