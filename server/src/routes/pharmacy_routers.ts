
import { Router } from "express";
import { addMedicineForPharmacy, addPharmacy, getMedicineForPharmacy, getPharmacy } from "../controllers/pharmacy_controller.ts";



const router = Router()

router.post('/add', addPharmacy)
router.get('/all', getPharmacy)
router.post('/medicine-pharmacy', addMedicineForPharmacy)
router.get('/medicine-pharmacy', getMedicineForPharmacy)
export default router;