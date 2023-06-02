import React from 'react'
import { useState } from 'react'
import TopBar from '../containers/TopBar';

function VerifyLogin(){
  console.log("User login worked");
  return true;
}

function LoginPage() {
  console.log("Rendering Login page...")
  return (
    <TopBar></TopBar>
  )
}

export default LoginPage