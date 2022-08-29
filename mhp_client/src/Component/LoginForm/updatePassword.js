import axios from 'axios';
import React, { useEffect } from 'react';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import swal from 'sweetalert';
import Sidebar1 from '../Sidebar1/Sidebar1';


const CreatePassword = () => {
   const [oldPassword, setoldPassword] = useState()
   const [newPassword, setnewPassword] = useState()
   const [confirmNewPassword, setconfirmNewPassword] = useState()


    const [getId, setgetId] = useState()
    
    useEffect(() => {
        const storageData = localStorage.getItem('userData')
        const storageUser = JSON.parse(storageData)
        setgetId(storageUser)
    }, [])


    let navigate = useNavigate();
    const handleSubmit = (event) => {
        event.preventDefault();

        if (newPassword == confirmNewPassword) {

            console.log("oldPass",oldPassword)
           console.log("conPas",confirmNewPassword)
         axios
        .post(`/update-password/${getId.id}`,  
        {
          password:oldPassword,
          new_password:confirmNewPassword
        }
        ).then((res) => {
    
            if (res.data.status == 200) {
                swal("Success", res.data.message, "success"); 
                navigate('/main'); 
            } 
            if (res.data.status == 404) {
                swal("Eroor", res.data.message, "error"); 
            }

                                                                    
        })
        .catch( error => {
            swal("Error", "Your new password must be different from previous used passwords", "error");
        })


        }else{
            alert("Check Confirm Password Again !")
        }
        
    }


    return (
        <>
            <div className="container pt-3 vh-100">
                <div className="row ">
                    <div className="container col-12 col-md-12 pt-5 d-flex justify-content-center">

                        <form onSubmit={handleSubmit} className=" ">
                            <div className="row container mb-3"  >
                                <div className="col-md-12 col-sm-12"  >
                                    <h2 className="fw-bolder  text-center pt-5 text-login" >Change password</h2>
                                    <p className="text-center pt-3" >Your new password must be different from previous used passwords.</p>
                                </div>
                            </div>
                            <div className="row container pt-1">
                                <level for="password" className="col-form-label fw-bolder text-muted ">Old Password: </level>
                                <div className="col-md-12 col-sm-12 ">
                                    <input type="password"
                    
                                    onChange={(e) => setoldPassword(e.target.value)} 
                                    name="oldPassword" value={oldPassword}
                                    id="password1" className="form-control" placeholder="Old Password" required />
                                </div>
                            </div>
                            <div className="row container pt-1">
                                <level for="password" className="col-form-label fw-bolder text-muted ">New Password: </level>
                                <div className="col-md-12 col-sm-12 ">
                                    <input type="password" 
                                    onChange={(e) => setnewPassword(e.target.value)}
                                    name="newPassword"
                                    value={newPassword}
                                     id="password2" className="form-control" placeholder="Password" required />
                                </div>
                            </div>
                            <div className="row container pt-1 mb-3">
                                <level for="password2" className="col-form-label fw-bolder text-muted ">Confirm New Password: </level>
                                <div className="col-md-12 col-sm-12 ">
                                    <input type="password"  
                                    onChange={(e) => setconfirmNewPassword(e.target.value)} 
                                    name="confirmNewPassword"
                                    value={confirmNewPassword} 
                                    id="password3" className="form-control" placeholder="Confirm password" required />
                                </div>
                            </div>
                            <div className=" row container mb-3"  >
                                <div className="col-md-12 col-sm-12 pt-3"  >
                                    {/* <input type="submit" style={{ backgroundColor: "#69B128" }} className="form-control  shadow rounded  fw-bolder text-white text-nowrap" value="Send instructions link" required /> */}
                                    <button type="submit" style={{ backgroundColor: "#69B128" }} className="form-control  shadow rounded  fw-bold text-white text-nowrap p-2" value="Reset password" required >Reset password</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </ >
    );
};

export default CreatePassword;