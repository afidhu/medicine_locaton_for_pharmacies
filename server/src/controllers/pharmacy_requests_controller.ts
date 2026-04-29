import type { Request, Response } from "express";
import { prisma } from "../index.ts";

export const addPharmaciesRequest = async (req: Request, res: Response) => {
  const { pharmacyId, message } = req.body;
  console.log(req.body)
  if (!pharmacyId || !message) {
    return res.status(400).json({ message: "pharmacyId and message are required." });
  }
  try {
    const pharmacy = await prisma.pharmaciesRequest.create({
        data: {
            pharmacyId: pharmacyId,
            message: message
        }
    });
    return res.status(201).json(pharmacy);
  } catch (error: any) {
    console.error("Error adding pharmacy request:", error);
    return res
      .status(500)
      .json({
        error: error.message,
        message: "An error occurred while adding the pharmacy request.",
      });
  }
};


export const getPharmaciesRequests = async (req: Request, res: Response) => {
    try {
        const pharmaciesRequests = await prisma.pharmaciesRequest.findMany();
        return res.status(200).json(pharmaciesRequests);    
    } catch (error: any) {
        console.error("Error fetching pharmacy requests:", error);
        return res.status(500).json({ error: error.message, message:"An error occurred while fetching the pharmacy requests." });
        
     }
}