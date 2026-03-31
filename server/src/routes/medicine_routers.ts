import { Router } from "express";
import { addMedicine } from "../controllers/medicines_controller.ts";



const router = Router()
router.post("/add", addMedicine);

export default router;