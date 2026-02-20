

import type { Request, Response } from "express";
import { prisma } from "../index.ts";
import e from "express";



export const addPharmacy = (req:Request, res:Response) =>{

    const { name, address, latitude, longitude, phone, email, password, license, openTime, closeTime, image, status } = req.body;
    try {
        
    const results = prisma.pharmacy.create({
        data:{
            name: name,
            address: address,
            latitude: latitude,
            longitude: longitude,
            phone: phone,
            email: email,
            password: password,
            license: license,
            openTime: openTime,
            closeTime: closeTime,
            image: image,
            status: status
        }
    })
    return res.status(201).json(results);

    } catch (error: any) {
        console.error("Error adding pharmacy:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while adding the pharmacy." });
        
    }

}


export const addMedicineForPharmacy = (req:Request, res:Response) =>{

    const {distances,rates,reviews,availability,medicineId,pharmacyId } = req.body;
    try {
        
    const results = prisma.medicineForPharmacy.create({
        data:{
            distances: distances,
            rates: rates,
            reviews: reviews,
            availability: availability,
            medicineId: medicineId,
            pharmacyId: pharmacyId
        }
    })
    return res.status(201).json(results);

    } catch (error: any) {
        console.error("Error adding medicine for pharmacy:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while adding the medicine for pharmacy." });
        
    }

}






