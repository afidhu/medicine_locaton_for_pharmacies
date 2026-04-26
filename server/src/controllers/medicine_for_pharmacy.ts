// import { prisma } from '../index.ts';



// export const addMedicineForPharmacy = async(req:Request, res:Response) =>{

//     const {distances,rates,reviews,availability,medicineId,pharmacyId } = req.body;
//     try {
        
//     const results = await prisma.medicineForPharmacy.create({
//         data:{
//             distances: distances,
//             rates: rates,
//             reviews: reviews,
//             availability: availability,
//             medicineId: medicineId,
//             pharmacyId: pharmacyId

//         }
//     })
//     return res.status(201).json(results);

//     } catch (error: any) {
//         console.error("Error adding medicine for pharmacy:", error);
//         return res.status(500).json({ error: error.message, message:"An error occurred while adding the medicine for pharmacy." });
        
//     }

// }