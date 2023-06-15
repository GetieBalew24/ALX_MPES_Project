import Express, { Router } from "express";


const router=express.Router();

router.post('/add',()=>{
    console.log('Hello');
})

export default router;