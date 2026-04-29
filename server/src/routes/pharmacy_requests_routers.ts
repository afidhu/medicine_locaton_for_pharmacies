
import { Router } from "express";
import { addPharmaciesRequest, getPharmaciesRequests } from "../controllers/pharmacy_requests_controller.ts";



const router = Router()
router.post("/add", addPharmaciesRequest)
router.get("/get", getPharmaciesRequests)

export default router;