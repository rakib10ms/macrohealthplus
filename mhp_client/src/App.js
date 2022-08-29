import React, { useEffect, useState } from "react";
import 'bootstrap/dist/css/bootstrap.min.css';
import 'bootstrap/dist/js/bootstrap.bundle.min.js';
import './App.css';
import { Routes, Route } from "react-router-dom";
import UserSignUp from "./Component/LoginForm/UserSignUp";
import NoMatch from "./Component/NoMatch/NoMatch";
import LoginForm from "./Component/LoginForm/LoginForm";
import Dashboard_content from "./Component/Dashboard/Dashboard_content";
import axios from "axios";

function App() {
  const [storageData, setstorageData] = useState(false)
  useEffect(() => {
    const value = JSON.parse(localStorage.getItem('userData'))
    if (value) {
      setstorageData(value)
    }

    // if (value) {
    //   axios.get(`/users/${value.email}`).then(res => {
    //     console.log("users",res)
    //     if(res.status === 200){
    //        setstorageData(true)
    //     }else{
    //       setstorageData(false)
    //     }
    //   })
    // }
  }, [])

  if (!storageData) {
    return (
      <>
        <Routes>
          <Route path="/" element={<LoginForm></LoginForm>}></Route>
          <Route path="*" element={<NoMatch />} />
          <Route path="/user-signup" element={<UserSignUp></UserSignUp>}></Route>
          {/* <Route path="/dash" element={<Dashboard_content></Dashboard_content>}></Route> */}
        </Routes>
      </>
    )
  } else {
    return (
      <>
        <Dashboard_content perStorageData={storageData}></Dashboard_content>
      </>
    );

  }

}
export default App;
