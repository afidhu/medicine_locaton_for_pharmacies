

import type { Request, Response } from "express";
import { prisma } from "../index.ts";
import e from "express";



export const addPharmacy = async(req:Request, res:Response) =>{

    try {


    const { name, address, latitude, longitude, phone, email, password, license, openTime, closeTime, image, status } = req.body;
        
    const results = await prisma.pharmacy.create({
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
   if(results){
    return res.status(201).json({ message: "Pharmacy added successfully", pharmacy: results });
   }else{
    return res.status(400).json({ message: "Failed to add pharmacy" }); 
   }

    } catch (error: any) {
        console.error("Error adding pharmacy:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while adding the pharmacy." });
        
    }

}



export const getPharmacy = async(req:Request, res:Response) => {
    try {
        const pharmacies = await prisma.pharmacy.findMany();
        return res.status(200).json(pharmacies);
    } catch (error: any) {
        console.error("Error fetching pharmacies:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while fetching the pharmacies." });
        
    }
}


// export const addMedicineForPharmacy = async(req:Request, res:Response) 


export const addMedicineForPharmacy = async(req:Request, res:Response) =>{

    const {distances,rates,reviews,availability,medicineId,pharmacyId } = req.body;
    try {
        
    const results = await prisma.medicineForPharmacy.create({
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

export const getMedicineForPharmacy = async(req:Request, res:Response) => {
    try {
        const medicineForPharmacy  = await prisma.medicineForPharmacy.findMany(

);
        return res.status(200).json(medicineForPharmacy);
    } catch (error: any) {
        console.error("Error fetching MedicineForPharmacy :", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while fetching the pharmacies." });
        
    }
}