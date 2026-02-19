import type { Request, Response } from "express";



export const addMedicine = (req:Request, res:Response) =>{
    console.log('hellow')
    res.send('Medicine added successfully!');
    // const { name, description, price,type } = req.body;
    // const resukts = prisma.medicines.create({
    //     data:{
    //         description: description,
    //         name: name,
    //         price: price,
    //         imageUrl: "https://example.com/medicine-image.jpg", // You can replace this with an actual image URL or handle it as needed
    //         type: "tablet" // You can replace this with the actual type of medicine or handle it as needed
    //     }
    // })
    // Here you would typically add the medicine to your database

}