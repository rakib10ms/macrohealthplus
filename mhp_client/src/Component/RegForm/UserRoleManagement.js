import { Autocomplete, TextField } from '@mui/material';
import React, { useEffect, useState } from 'react';
import './UserRoleManagement.css';
import pic from '../../Images/crush.jpg'
import doc from '../../Images/doc-icon.png';
import emp from '../../Images/employee-icon.png';
import bill from '../../Images/billing-icon.png';
import app from '../../Images/appointment-icon.png';
import patient from '../../Images/patient-icon.png';
import axios from 'axios';

import { toast } from 'react-toastify';
import { useNavigate } from 'react-router-dom';
toast.configure();


const UserRoleManagement = () => {
    const [doctorData, setdoctorData] = useState([])
    const [userRole, setuserRole] = useState([])
    const [storageData, setstorageData] = useState()
    const [updatingArray, setupdatingArray] = useState([])
    const [patientData, setpatientData] = useState([])
    console.log("storageData", storageData)
    const navigate = useNavigate();

    useEffect(() => {

        const A = localStorage.getItem('userData')
        setstorageData(JSON.parse(A))

        axios.get(`/doctors`).then(res => {
            if (res.data.status === 200) {
                setdoctorData(res.data.doctors);
            }
        });
        axios.get(`/employee`).then(res => {
            if (res.data.status === 200) {
                setemployeData(res.data.employee);
            }
        });
        axios.get(`/patients`).then(res => {
            if (res.data.status === 200) {
                setpatientData(res.data.patients);
            }
        })
        axios.get(`/user-role`).then(res => {
            if (res.data.status === 200) {
                setuserRole(res.data.userRole);
            }

        });

        axios.get(`/feature-permission`).then(res => {
            if (res.data.status === 200) {
                console.log("fea", res.data.MhpFeaturePermission)
                setfeature(res.data.MhpFeaturePermission);
                setdataSaved()
                setupdatingArray(res.data.MhpFeaturePermission)
            }
        });


    }, [])

    const [userType, setuserType] = useState('doctor')

    const [employeUpdate, setemployeUpdate] = useState(false)
    const [employeData, setemployeData] = useState()


    const [feature, setfeature] = useState([])

    const [ischecked, setischecked] = useState(0)
    const [udateState, setudateState] = useState()
    // useEffect(() => {
    //     if (ischecked == 0) {
    //         feature.map((item, i) => {
    //             item.add = 1
    //             item.delete = 1
    //             item.edit = 1
    //             item.id = item.id
    //             item.name = item.name
    //             item.report = 1
    //             item.slug = item.slug
    //             item.validity = 1
    //             item.validity_date = null
    //             item.view = 1
    //             //   feature.push(item)
    //             // setfeature([...feature,item])
    //         })
    //         console.log("fea check", feature)
    //     }
    //     if (ischecked == 1) {
    //         feature.map((item, i) => {
    //             item.add = 0
    //             item.delete = 0
    //             item.edit = 0
    //             item.id = item.id
    //             item.name = item.name
    //             item.report = 0
    //             item.slug = item.slug
    //             item.validity = 0
    //             item.validity_date = null
    //             item.view = 0
    //             // feature.push(item)
    //             // setfeature([...feature,item])            
    //         })
    //         console.log("fea check", feature)

    //     }

    // }, [udateState])




    const allSeletedValue = () => {
        ischecked == 0 ? setischecked(1) : setischecked(0)
        setudateState(Math.random())


        if (ischecked == 0) {
            feature.map((item, i) => {
                item.add = 1
                item.delete = 1
                item.edit = 1
                item.id = item.id
                item.name = item.name
                item.report = 1
                item.slug = item.slug
                item.validity = 1
                item.validity_date = null
                item.view = 1
                //   feature.push(item)
                //setfeature([...feature,item])
            })
            console.log("fea check", feature)
        }
        if (ischecked == 1) {
            feature.map((item, i) => {
                item.add = 0
                item.delete = 0
                item.edit = 0
                item.id = item.id
                item.name = item.name
                item.report = 0
                item.slug = item.slug
                item.validity = 0
                item.validity_date = null
                item.view = 0
                // feature.push(item)
                //setfeature([...feature,item])            
            })
            console.log("fea check", feature)

        }

    }

    const changePermission = (e, index) => {

        const { name } = e.target;
        const list = [...feature];
        if (list[index][name] == 0) {
            list[index][name] = 1;
        } else {
            list[index][name] = 0;
        }
        setfeature(list);
        //  setDoctorPermissions(doctorPermissions[index][e.target.name] === 0 ? { ...doctorPermissions, [e.target.name]: 1 } : { ...doctorPermissions, [e.target.name]: 0 })
    }

    console.log("isCheck", ischecked)
    console.log("fea new", feature)

    const [roleId, setroleId] = useState()
    const [userId, setuserId] = useState()

    const [dataSaved, setdataSaved] = useState()
    const [validity, setValidity] = useState(false)
    const [validityDate, setValidityDate] = useState()
    const [successMess, setsuccessMess] = useState(false)

    const saveData = () => {

        // if (!userId) {
        //     toast.error("Please select an user")
        // }
        if (!roleId) {
            toast.error("Please select user role")
        }

        feature.map(item => {
            const featData = {
                role_id: roleId,
                user_id: userId,
                user_type: userType,
                name: item.name,
                slug: item.slug,
                view: item.view,
                add: item.add,
                edit: item.edit,
                delete: item.delete,
                report: item.report,
                for_all: allUser,
                validity: validity,
                validity_date: validityDate,
            }

            axios.post('save-user-role-permission', featData).then(res => {
                console.log("Res", res.data)
                if (res.data.status === 200) {
                    setdataSaved(res.data.message)

                }
            })


        })

        {
            roleId &&
                toast.success("Permission save sucessfully")
        }
    }


    const updateData = () => {
        // if (!userId) {
        //     toast.error("Please select user")
        // }
        if (!roleId) {
            toast.error("Please select role")
        }

        if (allUser) {
            feature.map(item => {
                const featData = {
                    role_id: roleId,
                    user_id: userId,
                    user_type: userType,
                    name: item.name,
                    slug: item.slug,
                    view: item.view,
                    add: item.add,
                    edit: item.edit,
                    delete: item.delete,
                    report: item.report,
                    for_all: allUser,
                    validity: item.validity,
                    validity_date: item.validity_date,
                }
                {
                    item.role_id ?
                        roleId &&
                        axios.put(`/update-user-role-permission/${item.id}`, featData).then(res => {
                            console.log("Res", res.data)

                            // toast.success("Permission Update sucessfully")
                        })
                        :
                        axios.post('save-user-role-permission', featData).then(res => {
                            if (res.data.status === 200) {

                                // toast.success("Permission save sucessfully")

                            }
                        })
                }


            })
        } else {
            feature.map(item => {
                const featData = {
                    role_id: roleId,
                    user_id: userId,
                    user_type: userType,
                    name: item.name,
                    slug: item.slug,
                    view: item.view,
                    add: item.add,
                    edit: item.edit,
                    delete: item.delete,
                    report: item.report,
                    validity: item.validity,
                    validity_date: item.validity_date,
                }
                {
                    item.user_id && item.role_id ?
                        roleId &&
                        axios.put(`/update-user-role-permission/${item.id}`, featData).then(res => {
                            console.log("Res", res.data)

                            // toast.success("Permission Update sucessfully")
                        })
                        :
                        axios.post('save-user-role-permission', featData).then(res => {
                            if (res.data.status === 200) {

                                // toast.success("Permission save sucessfully")

                            }
                        })
                }


            })
        }

        {
            roleId &&
                toast.success("Permission Update sucessfully")
        }


    }
    const [permissionUpdate, setpermissionUpdate] = useState()

    useEffect(() => {
        if (userId) {
            axios.get(`/get-user-role-permission/${userId}`).then(res => {
                console.log("res.data.userRole", res.data.userRole)
                if (res.data.status === 200) {
                    if (res.data.userRole.length > 0) {
                        setpermissionUpdate(Math.random())
                        setfeature(res.data.userRole);
                    } else {
                        axios.get(`/feature-permission`).then(res => {
                            if (res.data.status === 200) {
                                setpermissionUpdate()
                                setfeature(res.data.MhpFeaturePermission);
                            }
                        });
                    }

                }
            });
        }
    }, [userId])

    const [allUser, setallUser] = useState(false)
    const [alluserStateUpdate, setalluserStateUpdate] = useState()
    useEffect(() => {
        if (allUser) {
            axios.get(`/get-user-permission-all-user/${userType}`).then(res => {
                console.log("res.data.userRole", res.data.userRole)
                if (res.data.status === 200) {
                    if (res.data.userRole.length > 0) {
                        setpermissionUpdate(Math.random())
                        setfeature(res.data.userRole);
                    } else {
                        axios.get(`/feature-permission`).then(res => {
                            if (res.data.status === 200) {
                                setpermissionUpdate()
                                setfeature(res.data.MhpFeaturePermission);
                            }
                        });
                    }

                }
            });
        } else {
            axios.get(`/feature-permission`).then(res => {
                if (res.data.status === 200) {
                    setpermissionUpdate()
                    setfeature(res.data.MhpFeaturePermission);
                }
            });
        }
    }, [allUser, alluserStateUpdate])

    console.log("alluserStateUpdate", alluserStateUpdate)

    const refresh = () => {
        const origArr = [...updatingArray];
        console.log("orginal array", origArr)
        const updatingArr = [...feature];

        // updatingArr.map((item,i)=>{
        //     console.log("Exis role_id",item.name)
        //     origArr.map((oItem,j)=>{
        //         console.log("set role_id",oItem.name)
        //         if (item.name == oItem.name) {
        //             console.log("Abc",item)
        //         }
        //     })
        // })

        let hash = {};

        console.log("hash", hash)

        for (let i of origArr.concat(updatingArr)) {
            if (!hash[i]) {
                hash[i.name] = i;
            }
        }

        let newArr = [];

        for (let i in hash) {
            newArr.push(hash[i])
        }

        setfeature(newArr)
        console.log("array3", newArr)
    }


    console.log("userId", userId)
    console.log("userType", userType)


    return (
        <div className='ms-2 mt-2'>
            <div className="custom-card flex-grow-1">
                <h5 className="fw-normal  text-start py-2 px-1 mb-2 text-login">User Roles, Permissions and Access</h5>
            </div>
            <div className='custom-card overflow-hidden'>
                <div className="row user-role-header m-2 p-2">
                    <div className="col-8">
                        <div className="row">
                            <div className="col-6">
                                {
                                    !allUser ?
                                        <div className="row">
                                            <label className="col-sm-4 col-form-label">Module - User</label>
                                            <div className="col-8">

                                                {
                                                    userType === 'doctor' &&
                                                    <Autocomplete
                                                        disablePortal
                                                        id="combo-box-demo"
                                                        size="small"
                                                        options={doctorData}
                                                        loadingText='loading...'
                                                        getOptionLabel={(option) => option.dr_given_name}
                                                        onChange={(e, value) => {
                                                            if (value != null) {
                                                                setuserId(value.id)
                                                                setdataSaved()
                                                            } else {
                                                                setuserId()
                                                            }

                                                        }}
                                                        renderInput={(params) => <TextField sx={{ width: "100%", height: 10 }} {...params} label="Doctors" />}
                                                    />
                                                }

                                                {
                                                    userType === 'employee' &&
                                                    <Autocomplete
                                                        disablePortal
                                                        id="combo-box-demo"
                                                        size="small"
                                                        options={employeData}
                                                        loadingText='loading...'
                                                        getOptionLabel={(option) => option.given_name}
                                                        onChange={(e, value) => {
                                                            if (value != null) {
                                                                setuserId(value.id)
                                                                setdataSaved()
                                                            } else {
                                                                setuserId()
                                                            }

                                                        }}
                                                        renderInput={(params) => <TextField sx={{ width: "100%", height: 10 }} {...params} label="Employee" />}
                                                    />
                                                }

                                                {
                                                    userType === 'patient' &&
                                                    <Autocomplete
                                                        disablePortal
                                                        id="combo-box-demo"
                                                        size="small"
                                                        options={patientData}
                                                        loadingText='loading...'
                                                        getOptionLabel={(option) => option.patient_preferred_name}
                                                        onChange={(e, value) => {
                                                            if (value != null) {
                                                                setuserId(value.id)
                                                                setdataSaved()
                                                            } else {
                                                                setuserId()
                                                            }

                                                        }}
                                                        renderInput={(params) => <TextField sx={{ width: "100%", height: 10 }} {...params} label="Patient" />}
                                                    />
                                                }

                                            </div>
                                        </div>
                                        :
                                        <div>
                                            <label className="col-form-label forAll">For All {userType} Permission</label>
                                        </div>
                                }

                            </div>
                            <div className="col-6">
                                <div className="row">
                                    {
                                        !userId &&
                                        <div className='col-4'>
                                            <div className="form-check">
                                                <input checked={allUser} onChange={() => {
                                                    setallUser(!allUser)
                                                    setuserId()
                                                }} className="form-check-input" type="checkbox" id="flexCheckDefaultNew" />
                                                <label className='AllUser'>
                                                    All
                                                </label>
                                            </div>
                                        </div>
                                    }


                                    <div className="col-8">
                                        <div className='row'>
                                            <div className='col-2'>
                                                <label className="col-form-label">Role </label>
                                            </div>
                                            <div className='col-8'>
                                                <Autocomplete
                                                    disablePortal
                                                    id="combo-box-demo"
                                                    size="small"
                                                    options={userRole}
                                                    loadingText='loading...'
                                                    getOptionLabel={(option) => option.name}
                                                    onChange={(e, value) => { setroleId(value.id) }}
                                                    renderInput={(params) => <TextField sx={{ width: "100%", height: 10 }} {...params} label="Role" />}
                                                />
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4 user-role-header-user d-flex justify-content-end">
                        <div className='me-2'>
                            <img src={pic} alt="" className='me-1' />
                            <span>{storageData && storageData.name}</span>
                        </div>
                    </div>
                </div>
                <div className="row m-2 p-2">
                    <div className="col-2 new-rx-container user-role-sidebar" >
                        <div className="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <button onClick={() => {
                                setuserType('doctor')
                                setuserId('')
                                setallUser(false)
                                setalluserStateUpdate(Math.random())
                            }} className="nav-link active mb-2" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true"><img src={doc} alt="" className='me-2' /> Doctor</button>
                            <button onClick={() => {
                                setuserType('patient')
                                setuserId('')
                                setallUser(false)
                                setalluserStateUpdate(Math.random())
                            }}
                                className="nav-link mb-2" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false"><img src={patient} alt="" className='me-2' /> Patient</button>
                            <button onClick={() => {
                                setuserType('employee')
                                setuserId('')
                                setallUser(false)
                                setalluserStateUpdate(Math.random())
                            }} className="nav-link mb-2" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false"><img src={emp} alt="" className='me-2' />Employee</button>
                            <button className="nav-link mb-2" id="v-pills-settings-tab1" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false"><img src={app} alt="" className='me-2' />Appointment</button>
                            <button className="nav-link mb-2" id="v-pills-settings-tab1" data-bs-toggle="pill" data-bs-target="#v-pills-settings1" type="button" role="tab" aria-controls="v-pills-settings1" aria-selected="false"><img src={bill} alt="" className='me-2' />Billing</button>
                        </div>
                    </div>
                    <div className="col-10 user-role-container">
                        <div className="tab-content" id="v-pills-tabContent">
                            <div className="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                <div className="user-role-content-head d-flex justify-content-between mb-2 p-2">
                                    <div>
                                        <h6>Doctor Permission</h6>
                                        <span className="text-muted">
                                            Select the role for each feature
                                        </span>
                                    </div>
                                    <div className='rx-one-button-group d-flex align-items-end'>
                                        {
                                            permissionUpdate ?
                                                <button onClick={updateData} className="btn float-end me-2">Update</button>
                                                :
                                                dataSaved ?
                                                    <button className="btn float-end me-2"><i className="fas fa-check-circle"></i></button>
                                                    : <button onClick={saveData} className="btn float-end me-2">Save</button>

                                        }
                                        <button onClick={() => navigate('/main')} className="btn float-end me-2">Cancel</button>
                                        <button onClick={refresh} className="btn float-end me-2">Refresh </button>

                                    </div>
                                </div>
                                <div className="user-role-content-table custom-card mt-2 p-2">
                                    <div className="d-flex justify-content-between">
                                        <div>
                                            <ul className="nav nav-pills" id="pills-tab" role="tablist">
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link active" id="pills-home-tab-content" data-bs-toggle="pill" data-bs-target="#pills-home-content" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Features</button>
                                                </li>
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link disabled" id="pills-profile-tab-content" data-bs-toggle="pill" data-bs-target="#pills-profile-content" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Smart SMS</button>
                                                </li>
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link disabled" id="pills-contact-tab-content" data-bs-toggle="pill" data-bs-target="#pills-contact-content" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Email</button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div>
                                            <div className="form-check">
                                                <input className="form-check-input" checked={ischecked == 1} onChange={() => allSeletedValue()} type="checkbox" id="flexCheckDefaultNew" />
                                                <label className="form-check-label">
                                                    All
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="tab-content" id="pills-tabContent">
                                        <div className="tab-pane fade show active" id="pills-home-content" role="tabpanel" aria-labelledby="pills-home-tab-content">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>View Page</th>
                                                        <th>Add</th>
                                                        <th>Edit / Update</th>
                                                        <th>Delete</th>
                                                        <th>Report</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {
                                                        feature.length > 0 && feature.map((item, i) => {
                                                            return (
                                                                <tr key={i}>
                                                                    <td className="user-role-table-first-column">
                                                                        <div>{item.name}</div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" value={item.view} checked={item.view == 1} name="view" onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="add" value={item.add} checked={item.add == 1} type="checkbox" onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" name="edit" value={item.edit} checked={item.edit == 1} onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="delete" value={item.delete} checked={item.delete == 1} onChange={(e) => { changePermission(e, i) }} type="checkbox" id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="report" value={item.report} checked={item.report == 1} onChange={(e) => { changePermission(e, i) }} type="checkbox" id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            )
                                                        })
                                                    }
                                                </tbody>


                                            </table>
                                        </div>
                                        <div className="tab-pane fade" id="pills-profile-content" role="tabpanel" aria-labelledby="pills-profile-tab-content">..2.</div>
                                        <div className="tab-pane fade" id="pills-contact-content" role="tabpanel" aria-labelledby="pills-contact-tab-content">..3.</div>
                                    </div>

                                    <p>In case of deactivation, the operator will not be able to select a campaign, the operator client will automatically add it to all enable campaigns. The operator will not be able to change this setting within the operator client either. </p>
                                    <div className="d-flex">
                                        <div className="form-check">
                                            <input className="form-check-input" onChange={() => setValidity(!validity)} type="checkbox" name="validity" id="flexCheckDefault" />
                                            <label style={{ fontWeight: 600 }}>The permission is valid till,</label>
                                        </div>
                                        <div style={{ width: "200px" }} className="ms-3 mt-1">
                                            <input type="date" name="validity_date" onChange={(e) => setValidityDate(e.target.value)} className="form-control form-control-sm" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                <div className="user-role-content-head d-flex justify-content-between mb-2 p-2">
                                    <div>
                                        <h6>Patient Permission</h6>
                                        <span className="text-muted">
                                            Select the role for each feature
                                        </span>
                                    </div>
                                    <div className='rx-one-button-group d-flex align-items-end'>
                                        {
                                            permissionUpdate ?
                                                <button onClick={updateData} className="btn float-end me-2">Update</button>
                                                :
                                                dataSaved ?
                                                    <button className="btn float-end me-2"><i className="fas fa-check-circle"></i></button>
                                                    : <button onClick={saveData} className="btn float-end me-2">Save</button>

                                        }
                                        <button onClick={() => navigate('/main')} className="btn float-end me-2">Cancel</button>
                                        <button onClick={refresh} className="btn float-end me-2">Refresh </button>

                                    </div>
                                </div>
                                <div className="user-role-content-table custom-card mt-2 p-2">
                                    <div className="d-flex justify-content-between">
                                        <div>
                                            <ul className="nav nav-pills" id="pills-tab" role="tablist">
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link active" id="pills-home-tab-content" data-bs-toggle="pill" data-bs-target="#pills-home-content" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Features</button>
                                                </li>
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link disabled" id="pills-profile-tab-content" data-bs-toggle="pill" data-bs-target="#pills-profile-content" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Smart SMS</button>
                                                </li>
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link disabled" id="pills-contact-tab-content" data-bs-toggle="pill" data-bs-target="#pills-contact-content" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Email</button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div>
                                            <div className="form-check">
                                                <input className="form-check-input" checked={ischecked == 1} onChange={() => allSeletedValue()} type="checkbox" id="flexCheckDefaultNew" />
                                                <label className="form-check-label">
                                                    All
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="tab-content" id="pills-tabContent">
                                        <div className="tab-pane fade show active" id="pills-home-content" role="tabpanel" aria-labelledby="pills-home-tab-content">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>View Page</th>
                                                        <th>Add</th>
                                                        <th>Edit / Update</th>
                                                        <th>Delete</th>
                                                        <th>Report</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {
                                                        feature.length > 0 && feature.map((item, i) => {
                                                            return (
                                                                <tr key={i}>
                                                                    <td className="user-role-table-first-column">
                                                                        <div>{item.name}</div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" value={item.view} checked={item.view == 1} name="view" onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="add" value={item.add} checked={item.add == 1} type="checkbox" onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" name="edit" value={item.edit} checked={item.edit == 1} onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="delete" value={item.delete} checked={item.delete == 1} onChange={(e) => { changePermission(e, i) }} type="checkbox" id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="report" value={item.report} checked={item.report == 1} onChange={(e) => { changePermission(e, i) }} type="checkbox" id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            )
                                                        })
                                                    }
                                                </tbody>


                                            </table>
                                        </div>
                                        <div className="tab-pane fade" id="pills-profile-content" role="tabpanel" aria-labelledby="pills-profile-tab-content">..2.</div>
                                        <div className="tab-pane fade" id="pills-contact-content" role="tabpanel" aria-labelledby="pills-contact-tab-content">..3.</div>
                                    </div>

                                    <p>In case of deactivation, the operator will not be able to select a campaign, the operator client will automatically add it to all enable campaigns. The operator will not be able to change this setting within the operator client either. </p>
                                    <div className="d-flex">
                                        <div className="form-check">
                                            <input className="form-check-input" onChange={() => setValidity(!validity)} type="checkbox" name="validity" id="flexCheckDefault" />
                                            <label style={{ fontWeight: 600 }}>The permission is valid till,</label>
                                        </div>
                                        <div style={{ width: "200px" }} className="ms-3 mt-1">
                                            <input type="date" name="validity_date" onChange={(e) => setValidityDate(e.target.value)} className="form-control form-control-sm" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <div className="user-role-content-head d-flex justify-content-between mb-2 p-2">
                                    <div>
                                        <h6>Employee Permission</h6>
                                        <span className="text-muted">
                                            Select the role for each feature
                                        </span>
                                    </div>
                                    <div className='rx-one-button-group d-flex align-items-end'>
                                        {
                                            permissionUpdate ?
                                                <button onClick={updateData} className="btn float-end me-2">Update</button>
                                                :
                                                dataSaved ?
                                                    <button className="btn float-end me-2"><i className="fas fa-check-circle"></i></button>
                                                    : <button onClick={saveData} className="btn float-end me-2">Save</button>

                                        }
                                        <button onClick={() => navigate('/main')} className="btn float-end me-2">Cancel</button>
                                        <button onClick={refresh} className="btn float-end me-2">Refresh </button>

                                    </div>
                                </div>
                                <div className="user-role-content-table custom-card mt-2 p-2">
                                    <div className="d-flex justify-content-between">
                                        <div>
                                            <ul className="nav nav-pills" id="pills-tab" role="tablist">
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link active" id="pills-home-tab-content" data-bs-toggle="pill" data-bs-target="#pills-home-content" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Features</button>
                                                </li>
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link disabled" id="pills-profile-tab-content" data-bs-toggle="pill" data-bs-target="#pills-profile-content" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Smart SMS</button>
                                                </li>
                                                <li className="nav-item" role="presentation">
                                                    <button className="nav-link disabled" id="pills-contact-tab-content" data-bs-toggle="pill" data-bs-target="#pills-contact-content" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Email</button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div>
                                            <div className="form-check">
                                                <input className="form-check-input" checked={ischecked == 1} onChange={() => allSeletedValue()} type="checkbox" id="flexCheckDefaultNew" />
                                                <label className="form-check-label">
                                                    All
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="tab-content" id="pills-tabContent">
                                        <div className="tab-pane fade show active" id="pills-home-content" role="tabpanel" aria-labelledby="pills-home-tab-content">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>View Page</th>
                                                        <th>Add</th>
                                                        <th>Edit / Update</th>
                                                        <th>Delete</th>
                                                        <th>Report</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    {
                                                        feature.length > 0 && feature.map((item, i) => {
                                                            return (
                                                                <tr key={i}>
                                                                    <td className="user-role-table-first-column">
                                                                        <div>{item.name}</div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" value={item.view} checked={item.view == 1} name="view" onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="add" value={item.add} checked={item.add == 1} type="checkbox" onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" name="edit" value={item.edit} checked={item.edit == 1} onChange={(e) => { changePermission(e, i) }} id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="delete" value={item.delete} checked={item.delete == 1} onChange={(e) => { changePermission(e, i) }} type="checkbox" id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" name="report" value={item.report} checked={item.report == 1} onChange={(e) => { changePermission(e, i) }} type="checkbox" id="flexCheckDefault" />
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            )
                                                        })
                                                    }
                                                </tbody>


                                            </table>
                                        </div>
                                        <div className="tab-pane fade" id="pills-profile-content" role="tabpanel" aria-labelledby="pills-profile-tab-content">..2.</div>
                                        <div className="tab-pane fade" id="pills-contact-content" role="tabpanel" aria-labelledby="pills-contact-tab-content">..3.</div>
                                    </div>

                                    <p>In case of deactivation, the operator will not be able to select a campaign, the operator client will automatically add it to all enable campaigns. The operator will not be able to change this setting within the operator client either. </p>
                                    <div className="d-flex">
                                        <div className="form-check">
                                            <input className="form-check-input" onChange={() => setValidity(!validity)} type="checkbox" name="validity" id="flexCheckDefault" />
                                            <label style={{ fontWeight: 600 }}>The permission is valid till,</label>
                                        </div>
                                        <div style={{ width: "200px" }} className="ms-3 mt-1">
                                            <input type="date" name="validity_date" onChange={(e) => setValidityDate(e.target.value)} className="form-control form-control-sm" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">..fg.</div>
                            <div className="tab-pane fade" id="v-pills-settings1" role="tabpanel" aria-labelledby="v-pills-settings-tab1">..fg.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div >
    );
};

export default UserRoleManagement;