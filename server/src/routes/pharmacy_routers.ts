
import { Router } from "express";
import { addMedicineForPharmacy, addPharmacy, getPharmacy } from "../controllers/pharmacy_controller.ts";



const router = Router()

router.post('/add', addPharmacy)
router.get('/all', getPharmacy)
router.post('/addMedicineForPharmacy', addMedicineForPharmacy)
export default router;