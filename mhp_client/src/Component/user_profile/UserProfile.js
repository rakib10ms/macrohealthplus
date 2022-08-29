import axios from 'axios';
import React, { useEffect, useState } from 'react';

import MHP from '../../Images/loginuser.png';
import Sidebar1 from '../Sidebar1/Sidebar1';

const UserProfile = () => {


    const [userInfo, setuserInfo] = useState();
    const [doctorData, setDoctorData] = useState('')

    useEffect(() => {
        const storageData = localStorage.getItem('userData')
        const storageUser = JSON.parse(storageData)
        setuserInfo(storageUser)

        if (storageUser.user_type === "Doctor") {
            axios.get(`/single-doctor/${storageUser.user_id}`).then(res => {

                if (res.data.status === 200) {
                    setDoctorData(res.data.doctor);
                }

            })
        }
    }, [])

    // console.log(userInfo);
    return (
        <>
            <div className='pt-5 vh-100'>
                <div className="mt-5 d-flex justify-content-center" >
                    <div className="card d-flex justify-content-center text-center" style={{ width: '300px' }}>
                        <div className="mb-4 pt-0 text-center" style={{ width: '200px', margin: "0 auto" }}>

                            {
                                doctorData ?
                                    <img className=" bg-light rounded-circle card-img-top p-2" width="200" height="200" alt="MHP" border="0" src={`${global.img_url}/doctors/images/${doctorData.dr_images}`} />
                                    :
                                    <img  src={MHP} className=" bg-light rounded-circle card-img-top p-2" width="200" height="200" alt="MHP" border="0"/>
                            }
                           
                        </div>
                        <div className="card-body p-4">
                            <h5 className="card-title"> {
                                userInfo != null ? userInfo.name : "Dr. Jone"
                            }</h5>

                            <p className="fw-bolder text-muted ">
                                <span className="fw-bolder text-muted "> Name:</span>
                                <span className="fw-bolder text-muted " > {
                                    userInfo != null ? userInfo.name : "Dr. Jone"
                                }</span>
                            </p>

                            <p className=" fw-bolder text-muted">
                                <span className="fw-bolder text-muted ">Email:</span>
                                <span className="fw-bolder text-muted ">{
                                    userInfo != null ? userInfo.email : "Dr. Jone"
                                }</span>
                            </p>

                        </div>
                    </div>

                </div >
            </div>
        </>
    );
};

export default UserProfile;