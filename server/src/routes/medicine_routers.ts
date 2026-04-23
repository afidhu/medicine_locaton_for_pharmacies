import { Router } from "express";
import { addMedicine, getMedicine } from "../controllers/medicines_controller.ts";



const router = Router()
router.post("/add", addMedicine);
router.get("/all", getMedicine);

export default router;