import { useState } from 'react';
import React from 'react';
import { FormControl, FormGroup, Input, InputLabel, Typography,Styled,Button } from '@mui/material';
import styled from '@emotion/styled';
import { addUser } from '../service/api';
import axios from 'axios';
const Container=styled(FormGroup)`
width:50%;
margin:5% auto 0 auto;
& > div{
  margin-top:20px;
}
`
const defaultValue={
  name:"",
  username:"",
  email:"",
  phone:""
}

const AddUser = () => {
  const [user,setUser]=useState({});
  const onValueChange=(e)=>{
    console.log(e.target.name,e.target.value)
    setUser({...user,[e.target.name]:e.target.value})
    console.log(user);
  }
  const addUserDetails=async()=>{
   await addUser();

  }
  return ( 
    <Container>
      <Typography variant='h4'>Add User</Typography>
      <FormControl>
        <InputLabel>name</InputLabel>
        <Input onChange={(e)=>onValueChange(e)} name="name"/>
      </FormControl>
        <FormControl>
        <InputLabel>username</InputLabel>
        <Input onChange={(e)=>onValueChange(e)} name="username"/>
      </FormControl>
        <FormControl>
        <InputLabel>Email</InputLabel>
        <Input onChange={(e)=>onValueChange(e)} name="email"/>
      </FormControl>
        <FormControl>
        <InputLabel>Phone</InputLabel>
        <Input onChange={(e)=>onValueChange(e)} name="phone"/>
      </FormControl>
      <FormControl>
        <Button variant="contained" onClick={()=>addUserDetails()}>Add User</Button>
      </FormControl>
      </Container>
  )
}

export default AddUser