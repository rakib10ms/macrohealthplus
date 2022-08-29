import "../Patients/PatientVitalReading.css"
import moment from 'moment';
import React, { useEffect, useState } from "react";
import axios from "axios";
import Modal from 'react-modal';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import TimePicker from '@mui/lab/TimePicker';
import TextField from '@mui/material/TextField';
import Swal from "sweetalert2";
import { toast } from "react-toastify";

function PatientVitalReading() {

    const customStyles = {
        content: {
            top: '35%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "40%",
            height: "370px",
            background: "#ffffff",
        },
        overlay: { zIndex: 1000 }

    };


    useEffect(() => {
        Modal.setAppElement('body');
    }, []);

    const [modalIsOpen, setIsOpen] = React.useState(false);
    function openModal(e) {
        e.preventDefault();
        setIsOpen(true);
        setVitalRefValue('');
    }


    function closeModal() {
        setIsOpen(false);

    }


    const [value, setValue] = React.useState(new Date());
    // useEffect(()=>{
    //     setInterval(()=>{
    //         setValue(new Date(),180000)
    //     })
    // },[])


    const handleChange = (newValue) => {
        setValue(newValue)
    }

    const [patientIdRender, setpatientIdRender] = useState('');
    const [todaysAppt, setTodaysAppt] = useState([]);
    console.log('patient id check', patientIdRender)
    console.log('checking', todaysAppt);

    const [searchValue, setSearchValue] = useState('');

    const [patientInfo, setPatientInfo] = useState([])

    const [singlePatient, setSinglePatient] = useState('')
    const handlePatientSearchSubmit = (e) => {
        e.preventDefault();
        // alert("submitted")
        axios.post(`/patient-search-by-phone-or-hin/${searchValue}`).then(res => {
            // console.log('patient_id get', res.data);
            if (res.data.status === 200) {
                setPatientInfo(res.data.patient);
                if (res.data.patient == null) {
                    setpatientIdRender('');
                }
                else {
                    setpatientIdRender(res.data.patient.id)
                    setTodaysAppt(res.data.todaysPatientAppointments)

                }
            }
        });
        setSearchValue('');

    }

    const [allAppointments, setAllAppointments] = useState([]);
    // console.log('todays appointment check', allAppointments)

    useEffect(() => {
        axios.get(`/patients-profile/${patientIdRender}`).then(res => {
            if (res.data.status === 200) {
                // console.log('patient data', res.data.patients_details)

                setSinglePatient(res.data.patients_details);
            }
        });

        axios.get(`/todays-patientappointment/${patientIdRender}`).then(res => {
            if (res.data.status === 200) {

                setAllAppointments(res.data.todaysPatientAppointments);
            }
        });
    }, [patientIdRender])


    const [vitaSignArray, setvitalSignArray] = useState([]);
    // console.log('vitals info', vitaSignArray)

    useEffect(() => {
        axios.get('vital-sign').then(res => {

            setvitalSignArray(res.data.vitalSign);
        })
    }, []);



    const [vitalInfoAdd, setVitalInfoAdd] = useState({
        name: '',
        value: '',
        remarks: '',

    })


    // console.log('vital parametr id ', vitalInfoAdd.name)
    const handleVitalInfoAdd = (e) => {
        setVitalInfoAdd({
            ...vitalInfoAdd, [e.target.name]: e.target.value
        })
    }

    const [vitalRefValue, setVitalRefValue] = useState('')
    // console.log('vital value name', vitalValue.value)
    useEffect(() => {
        axios.get(`/get-vital-sign-by-id/${vitalInfoAdd.name}`).then(res => {

            setVitalRefValue(res.data.vitalSignValue);
        })
    }, [vitalInfoAdd.name]);






    const [renderData, setRenderData] = useState('');
    const handleSubmitData = (e) => {
        e.preventDefault();

        const submitData = {
            name: vitalInfoAdd.name,
            ref_range_value: vitalRefValue.value,
            remarks: vitalInfoAdd.remarks,
            patient_id: patientInfo.id,
            nurse_id: '',
            value: vitalInfoAdd.value,
            last_check_up_date: value,
            status_id: 1
        }
        axios.post(`/save-vital-sign-patient`, submitData).then(res => {
            toast.success(res.data.message);
            setRenderData(res.data)

        })
        setVitalInfoAdd({
            name: '',
            ref_range_value: '',
            remarks: '',
        })
        setVitalRefValue('');
        // setValue('')
        closeModal();

    }

    const [allVitals, setAllVitals] = useState([]);
    // console.log('all specific ', allVitals)
    useEffect(() => {
        console.log('data submitted but this not rendering', patientIdRender)
        axios.get(`/get-todays-vital-sign-patient/${patientIdRender}`).then(res => {
            console.log('vital data response check', res.data)
            setAllVitals(res.data.getTodayPatientVital);
        })
    }, [patientIdRender, renderData]);




    const handleDelete = (e, id) => {
        e.preventDefault();
        const thisClicked = e.currentTarget;
        console.log('this clicked check', thisClicked)
        //  thisClicked.innerText = "Deleting";

        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                axios.delete(`/delete-vital-sign-patient/${id}`).then(res => {
                    if (res.data.status === 200) {
                        thisClicked.closest("tr").remove();
                        //   swal("Success", res.data.message, "success");
                        // setAllVitals(res.data.getTodayPatientVital);
                    }
                });
                Swal.fire(
                    'Deleted!',
                    'Your data has been deleted.',
                    'success'
                )
            }
        })
    }


    const customStyles1 = {
        content: {
            top: '35%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "40%",
            height: "370px",
            background: "#ffffff",
        },
        overlay: { zIndex: 1000 }

    };

    useEffect(() => {
        Modal.setAppElement('body');
    }, []);

    const [modalEditIsOpen, setEditIsOpen] = React.useState(false);
    function openEditModal() {
        setEditIsOpen(true);
    }
    function closeEditModal() {
        setEditIsOpen(false);

    }

    const [editVitalId, setEditVitalId] = useState('');
    const handleEdit = (e, id) => {
        e.preventDefault();
        setEditVitalId(id);
        openEditModal();
    }

    const [editVitalData, setEditVitalData] = useState({
        name: '',
        value: '',
        remarks: '',
    });
    console.log('edit data check', editVitalData)

    useEffect(() => {
        axios.get(`/get-vital-sign-by-id/${editVitalData.name}`).then(res => {

            setVitalRefValue(res.data.vitalSignValue);
        })
    }, [editVitalData.name]);


    useEffect(() => {
        axios.get(`/edit-vital-sign-patient/${editVitalId}`).then(res => {
            if (res.data.status === 200) {
                setEditVitalData(res.data.editVital);
                setValue(res.data.editVital.last_check_up_date)
            }
        });
    }, [editVitalId]);


    const handleVitalInfoEdit = (e) => {
        setEditVitalData({
            ...editVitalData, [e.target.name]: e.target.value
        })
    }
    const updateVital = (e) => {
        e.preventDefault();
        const submitUpdateData = {
            name: editVitalData.name,
            ref_range_value: vitalRefValue.value,
            remarks: editVitalData.remarks,
            patient_id: patientInfo.id,
            nurse_id: '',
            value: editVitalData.value,
            last_check_up_date: value,
            status_id: 1
        }
        setEditVitalData({
            name: '',
            value: '',
            remarks: '',
        })
        setVitalRefValue('');
        setEditVitalId('')
        axios.post(`/update-vital-sign-patient/${editVitalId}`, submitUpdateData).then(res => {
            if (res.data.status == 200) {
                toast.success(res.data.message);
                setRenderData(res.data)

            }
        })
        closeEditModal();
    }


    ///reason for visit functionality /////
    const [reasonVisitType, setReasonVisitType] = useState([]);
    const [reasonFor, setReasonFor] = useState([]);
    // console.log('reason for data',reasonFor)
    // console.log('reason visit type data',reasonVisitType)
    useEffect(() => {
        axios.get(`/diagnosis-procedure-reason/ResonForVisit`)
            .then(res => {
                setReasonVisitType(res.data.data);
            })
        axios.get(`/diagnosis-procedure-reason-for/ResonForVisit`)
            .then(res => {
                setReasonFor(res.data.data);
            })
    }, []);

    const [resonForVisitData, setresonForVisitData] = useState({
        reson_name: "",
        reson_for_name: "",
        reson_further_details: "",
        category_name: '',
        nurse_id: '',
        patient_id: patientIdRender,
        last_check_up_date: value
    })
    const handleResonInput = (e) => {
        setresonForVisitData({ ...resonForVisitData, [e.target.name]: e.target.value })

    }

    const [allReasonForVisit, setAllReasonForVisit] = useState([]);
    const [renderReasonData, setRenderReasonData] = useState('')
    // console.log('allReasonForVisit ', allReasonForVisit)

    useEffect(() => {
        axios.get(`/get-great-doc-reson/${patientIdRender}`).then(res => {
            setAllReasonForVisit(res.data.allReasons);
        })
    }, [patientIdRender, renderReasonData]);


    const handleReasonSubmit = (e) => {
        e.preventDefault();
        const resonForVisit = {
            reson_name: resonForVisitData.reson_name,
            reson_for_name: resonForVisitData.reson_for_name,
            reson_further_details: resonForVisitData.reson_further_details,
            category_name: resonForVisitData.category_name,
            nurse_id: '',
            patient_id: patientIdRender,
            last_check_up_date: value
        }
        axios.post(`/save-great-doc-reson`, resonForVisit).then(res => {
            if (res.data.status == 200) {
                setresonForVisitData({
                    reson_name: "",
                    reson_for_name: "",
                    reson_further_details: "",
                    category_name: ''

                })
                setRenderReasonData(res.data)
                toast.success('Reason For Visit Added Successfully')
                closeReasonModal();
            }
        });
    }

    const [editReasonId, setEditReasonId] = useState('');

    const handleReasonEdit = (e, id) => {
        e.preventDefault();
        setEditReasonId(id);
        openReasonEditModal();
    }

    const [modalReasonEditIsOpen, setReasonEditIsOpen] = React.useState(false);
    function openReasonEditModal() {
        setReasonEditIsOpen(true);
    }
    function closeEditReasonModal() {
        setReasonEditIsOpen(false);

    }

    const [editReasonData, setEditReasonData] = useState({
        reson_name: "",
        reson_for_name: "",
        reson_further_details: "",
        category_name: '',
        nurse_id: '',
        patient_id: patientIdRender,
        last_check_up_date: value
    });
    // console.log('edit reason data', editReasonData)

    useEffect(() => {
        axios.get(`/edit-great-doc-reson/${editReasonId}`).then(res => {
            if (res.data.status === 200) {
                setEditReasonData(res.data.edit_reason);
                console.log('reason edit data', res.data)
            }
        });
    }, [editReasonId]);


    const handleReasonEditFunc = (e) => {
        setEditReasonData({
            ...editReasonData, [e.target.name]: e.target.value
        })
    }
    const ReasonUpdate = (e) => {
        e.preventDefault();
        const submitUpdateReasonData = {
            reson_name: editReasonData.reson_name,
            reson_for_name: editReasonData.reson_for_name,
            reson_further_details: editReasonData.reson_further_details,
            category_name: editReasonData.category_name,
            nurse_id: '',
            patient_id: patientIdRender,
            last_check_up_date: value
        }
        // setEditVitalData({
        //     name: '',
        //     value: '',
        //     remarks: '',
        // })
        setEditReasonId('')
        axios.post(`/update-great-doc-reson/${editReasonId}`, submitUpdateReasonData).then(res => {
            if (res.data.status == 200) {
                toast.success(res.data.message);
                setRenderReasonData(res.data)

            }
        })
        closeEditReasonModal();
    }


    const handleDeleteReason = (e, id) => {
        e.preventDefault();
        const thisClicked = e.currentTarget;
        console.log('this clicked check', thisClicked)
        //  thisClicked.innerText = "Deleting";

        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                axios.delete(`/delete-great-doc-reson/${id}`).then(res => {
                    if (res.data.status === 200) {
                        thisClicked.closest("tr").remove();
                        //   swal("Success", res.data.message, "success");
                        // setAllVitals(res.data.getTodayPatientVital);
                    }
                });
                Swal.fire(
                    'Deleted!',
                    'Your data has been deleted.',
                    'success'
                )
            }
        })
    }


    const [modalReasonIsOpen, setReasonIsOpen] = React.useState(false);
    function openReasonModal() {
        setReasonIsOpen(true);
    }
    function closeReasonModal() {
        setReasonIsOpen(false);

    }

    return (
        <div className="ms-2 mt-2">
            <div className="custom-card flex-grow-1">
                <h5 className="fw-normal  text-start py-2 px-1 mb-2 text-login">Add vital Reading</h5>
            </div>
            <div class="custom-card">
                <h6 className="fw-normal  text-start py-2 px-1 mb-2">Nurse Counter</h6>
                {/* <div className="shadow-sm bg-body rounded px-3 d-flex">
                    <div className="nu-image" style={{ height: '30px', width: '30px' }}>
                        <img src="https://wp-media.petersons.com/blog/wp-content/uploads/2020/04/28091440/iStock-1178896241.jpg" style={{ height: '30px', width: '30px' }} className="rounded-circle" alt="image" />
                    </div>
                    <div className="nu-name mx-4">
                        <h6>Jon Doe </h6>
                    </div>
                    <i class=" fas fa-angle-down mt-1"></i>
                </div> */}
            </div>



            <div className="custom-card p-1 " >
                <div className="p-search mt-2 ">
                    <div className="row">
                        <div className="col-5 d-flex align-items-center">
                            <h6 class="">Patient Search</h6>
                            <form class="mx-1 col-8" onSubmit={handlePatientSearchSubmit}>

                                <input class="form-control mb-1 " onChange={(e) => setSearchValue(e.target.value)} value={searchValue} type="search" placeholder="Search" aria-label="Search" />
                            </form>
                        </div>
                        <div className="col-4 d-flex align-items-center">
                            <h6>Date:</h6>

                            <h6 className="mx-2">
                                {moment(new Date()).format('MM/DD/YYYY')}
                            </h6>
                        </div>
                        <div className="col-3 d-flex align-items-center">
                            <h6>Time</h6>

                            <div className=" mb-1 py-2 mx-1 col-8 ">
                                <LocalizationProvider dateAdapter={AdapterDateFns}>
                                    <TimePicker
                                        label="Time"
                                        value={value}
                                        onChange={handleChange}
                                        renderInput={(params) => <TextField {...params} size="small" />}
                                    />
                                </LocalizationProvider>
                            </div>
                        </div>
                    </div>
                </div>

                {patientIdRender && todaysAppt.length >= 1 &&
                    <>
                        <div className="doc-pat-info d-flex mt-4 ">
                            <div className="col-6 d-flex justify-content-between">
                                <div className="rounded-3">
                                    {singlePatient.patient_images !== "" ? <img className="rounded-3" src={`${global.img_url}/images/files/${singlePatient.patient_images}`} style={{ width: '60px', height: '50px' }} alt="ptn-image" /> : <img className="me-2" src={`https://static.thenounproject.com/png/363640-200.png`} width="60px" alt="No Image" />}

                                    {/* <img className="rounded-3" src="https://www.reutersevents.com/pharma/sites/default/files/patient.jpg" style={{ width: '60px', height: '50px' }} alt="ptn-image" /> */}
                                </div>
                                <div className="">
                                    <b>{singlePatient.patient_preferred_name}</b>
                                    <span className="d-block">{singlePatient.patient_hn_number}</span>
                                    <div style={{ width: "2px", height: '100%', backgroundColor: '#d2d2d2', display: 'inline' }}></div>
                                </div>
                                <div style={{ width: '1px', height: '80%', backgroundColor: '#d2d2d2' }}></div>
                                <div className="">
                                    <b>Gender</b>
                                    <span className="d-block">
                                        {
                                            singlePatient.patient_birth_sex == null ? '' :
                                                singlePatient.patient_birth_sex.birth_sex_name}
                                    </span>

                                </div>
                                <div style={{ width: '1px', height: '80%', backgroundColor: '#d2d2d2' }}></div>

                                <div className="">
                                    <b>Date Of Birth</b>
                                    <span className="d-block">{singlePatient.patient_dob}</span>

                                </div>
                                <div style={{ width: '1px', height: '80%', backgroundColor: '#d2d2d2' }}></div>

                                <div className="">
                                    <b>Phone No</b>
                                    <span className="d-block">{singlePatient.patient_emergency_contact}</span>

                                </div>

                            </div>

                            <div className="col-2">

                            </div>
                            <div className="col-4 d-flex mx-5">
                                {allAppointments.map((item, i) => {
                                    return (
                                        <div className="nu-image" style={{ height: '40px', width: '40px' }}>

                                            {item.dr_images !== "" ?
                                                <img src={`${global.img_url}/doctors/images/${item.dr_images}`} style={{ height: '40px', width: '40px' }} className="rounded-circle" alt="image" data-bs-toggle="tooltip" data-bs-placement="top" title={item.dr_preferred_name} /> : <img className="rounded-circle" src={`https://static.thenounproject.com/png/363640-200.png`} style={{ height: '40px', width: '40px' }} alt="image" />}
                                        </div>
                                    )
                                })
                                }

                            </div>

                        </div>


                        <button className="float-end rounded fw-bold me-1 mt-4" onClick={openReasonModal} style={{ backgroundColor: '#69B128', padding: '6px 27px', color: 'white', border: '0', outline: 'none' }}> Add </button>

                        <Modal
                            isOpen={modalReasonIsOpen}
                            onRequestClose={closeReasonModal}
                            style={customStyles}
                            contentLabel="Example Modal"
                        >

                            <div className='card-body'>
                                <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeReasonModal}><i class="fal fa-times"></i></span>

                                <h5 className=""> <b>Add Reason For Visit </b></h5>


                                <div className="row">

                                    <div className="col-12 d-flex">
                                        <div className="col-5 mt-4">
                                            <h6 className="mt-1 ml-1">Visit Type</h6>
                                            <h6 className="mt-3 ml-1">Category</h6>
                                            <h6 className="mt-4">Reason For Visit</h6>
                                            <h6 className="mt-4">Further Details</h6>

                                        </div>
                                        <div className="col-7 mt-4">

                                            <select class="form-select form-select-sm mt-2" aria-label=".form-select-sm" name="reson_name" value={resonForVisitData.name} onChange={handleResonInput}>
                                                <option selected >Select Visit Type</option>
                                                {reasonVisitType.map((item, i) => {
                                                    return (
                                                        <option key={i} value={item.DiagnosisProcedure_name}>{item.DiagnosisProcedure_name}</option>

                                                    )
                                                })}


                                            </select>

                                            <select class="form-select form-select-sm mt-2" aria-label=".form-select-sm" name="category_name" value={resonForVisitData.category_name} onChange={handleResonInput}>
                                                <option selected >Select Category</option>
                                                <option value="category-1">Category 1</option>
                                                <option value="category-2">Category 2</option>
                                                <option value="category-3">Category 3</option>
                                                <option value="category-4">Category 4</option>
                                                <option value="category-5">Category 5</option>


                                            </select>

                                            <select class="form-select form-select-sm mt-2" aria-label=".form-select-sm" name="reson_for_name" value={resonForVisitData.name} onChange={handleResonInput}>
                                                <option selected >Select Visit Type</option>
                                                {reasonFor.map((item, i) => {
                                                    return (
                                                        <option key={i} value={item.DiagnosisProcedureFor_name}>{item.DiagnosisProcedureFor_name}</option>

                                                    )
                                                })}


                                            </select>


                                            <div class="mt-3">
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Write here" name="reson_further_details" onChange={handleResonInput} value={resonForVisitData.reson_further_details}></textarea>
                                            </div>


                                            <div className="float-right mt-3">

                                                <button className=" rounded  fw-bold me-1" onClick={handleReasonSubmit} style={{ backgroundColor: '#69B128', padding: '6px 25px', color: 'white', border: '0', outline: 'none' }}> Save </button>
                                                <button className=" rounded  fw-bold mx-1" onClick={closeModal} style={{ backgroundColor: '#FFFFFF', padding: '6px 20px', color: 'black', border: '1px solid #69B128 ', outline: 'none' }}> Cancel </button>


                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </Modal>


                        <h5 className="mt-5">Reason For Visit</h5>


                        <table className="tablenur mt-2">
                            <tr class="lol">
                                <th>Vist Type</th>
                                <th>Category</th>
                                <th>Reason For Visit</th>
                                <th>Further Details</th>
                                <th>Action</th>

                            </tr>

                            {allReasonForVisit.map((item, i) => {
                                return (
                                    <tr key={i} id={item.id}>
                                        <td>{item.reson_name}</td>
                                        <td>{item.category_name}</td>
                                        <td>{item.reson_for_name}</td>
                                        <td>{item.reson_further_details}</td>
                                        <td>
                                            <i class="fa fa-edit " style={{ fontSize: '20px' }} onClick={(e) => handleReasonEdit(e, item.id)}></i>
                                            <i class="fa fa-trash text-danger mx-2 " style={{ fontSize: '20px' }} onClick={(e) => handleDeleteReason(e, item.id)}></i>
                                        </td>
                                    </tr>
                                )
                            })}

                        </table>

                        <Modal
                            isOpen={modalReasonEditIsOpen}
                            onRequestClose={closeEditReasonModal}
                            style={customStyles}
                            contentLabel="Example Modal"
                        >

                            <div className='card-body'>
                                <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeEditReasonModal}><i class="fal fa-times"></i></span>

                                <h5 className=""> <b>Edit Reason For Visit </b></h5>


                                <div className="row">

                                    <div className="col-12 d-flex">
                                        <div className="col-5 mt-4">
                                            <h6 className="mt-2 ml-1">Visit Type</h6>
                                            <h6 className="mt-4 ml-1">Category</h6>
                                            <h6 className="mt-4">Reason For Visit</h6>
                                            <h6 className="mt-4">Further Details</h6>

                                        </div>
                                        <div className="col-7 mt-4">

                                            <select class="form-select form-select-sm mt-2" aria-label=".form-select-sm" name="reson_name" value={editReasonData.reson_name} onChange={handleReasonEditFunc}>
                                                <option selected >Select Visit Type</option>
                                                {reasonVisitType.map((item, i) => {
                                                    return (
                                                        <option key={i} value={item.DiagnosisProcedure_name}>{item.DiagnosisProcedure_name}</option>

                                                    )
                                                })}


                                            </select>

                                            <select class="form-select form-select-sm mt-2" aria-label=".form-select-sm" name="category_name" value={editReasonData.category_name} onChange={handleReasonEditFunc}>
                                                <option selected >Select Category</option>
                                                <option value="category-1">Category 1</option>
                                                <option value="category-2">Category 2</option>
                                                <option value="category-3">Category 3</option>
                                                <option value="category-4">Category 4</option>
                                                <option value="category-5">Category 5</option>


                                            </select>

                                            <select class="form-select form-select-sm mt-2" aria-label=".form-select-sm" name="reson_for_name" value={editReasonData.reson_for_name} onChange={handleReasonEditFunc}>
                                                <option selected >Select Visit Type</option>
                                                {reasonFor.map((item, i) => {
                                                    return (
                                                        <option key={i} value={item.DiagnosisProcedureFor_name}>{item.DiagnosisProcedureFor_name}</option>

                                                    )
                                                })}


                                            </select>


                                            <div class="mt-3">
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Write here" name="reson_further_details" onChange={handleReasonEditFunc} value={editReasonData.reson_further_details}></textarea>
                                            </div>


                                            <div className="float-right mt-3">

                                                <button className=" rounded  fw-bold me-1" onClick={ReasonUpdate} style={{ backgroundColor: '#69B128', padding: '6px 25px', color: 'white', border: '0', outline: 'none' }}> Update </button>
                                                <button className=" rounded  fw-bold mx-1" onClick={closeEditReasonModal} style={{ backgroundColor: '#FFFFFF', padding: '6px 20px', color: 'black', border: '1px solid #69B128 ', outline: 'none' }}> Cancel </button>


                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </Modal>



                        <button className="float-end rounded fw-bold me-1 mt-4" onClick={openModal} style={{ backgroundColor: '#69B128', padding: '6px 27px', color: 'white', border: '0', outline: 'none' }}> Add </button>

                        <h5 className="mt-5">Vital Sign Reading</h5>


                        <Modal
                            isOpen={modalIsOpen}
                            onRequestClose={closeModal}
                            style={customStyles}
                            contentLabel="Example Modal"
                        >

                            <div className='card-body'>
                                <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeModal}><i class="fal fa-times"></i></span>

                                <h5 className=""> <b>Add Vital Reading</b></h5>


                                <div className="row">

                                    <div className="col-12 d-flex">
                                        <div className="col-5 mt-4">
                                            <h6 className="mt-2 ml-1">Parameters</h6>
                                            <h6 className="mt-4">Ref. Range</h6>
                                            <h6 className="mt-4">Values</h6>
                                            <h6 className="mt-4">Remarks</h6>

                                        </div>
                                        <div className="col-7 mt-4">

                                            <select class="form-select form-select-sm mt-2" aria-label=".form-select-sm" name="name" value={vitalInfoAdd.name} onChange={handleVitalInfoAdd}>
                                                <option selected >Select Parameters</option>
                                                {vitaSignArray.map((item, i) => {
                                                    return (
                                                        <option key={i} value={item.name}>{item.name}</option>

                                                    )
                                                })}


                                            </select>

                                            <input type="text" class="form-control mt-3" id="exampleFormControlInput1" aria-label="default input example" name="ref_range_value" onChange={handleVitalInfoAdd} value={vitalRefValue.value} disabled />


                                            <input type="text" class="form-control mt-3" id="exampleFormControlInput1" placeholder="Write here" aria-label="default input example" name="value" onChange={handleVitalInfoAdd} value={vitalInfoAdd.value} />



                                            <div class="mt-3">
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Write here" name="remarks" onChange={handleVitalInfoAdd} value={vitalInfoAdd.remarks}></textarea>
                                            </div>


                                            <div className="float-right mt-3">

                                                <button className=" rounded  fw-bold me-1" onClick={handleSubmitData} style={{ backgroundColor: '#69B128', padding: '6px 25px', color: 'white', border: '0', outline: 'none' }}> Save </button>
                                                <button className=" rounded  fw-bold mx-1" onClick={closeModal} style={{ backgroundColor: '#FFFFFF', padding: '6px 20px', color: 'black', border: '1px solid #69B128 ', outline: 'none' }}> Cancel </button>


                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </Modal>


                        <table className="tablenur mt-2">
                            <tr class="lol">
                                <th>Paramiters</th>
                                <th>Ref. Range</th>
                                <th>Values</th>
                                <th>Remarks</th>
                                <th>Action</th>

                            </tr>

                            {allVitals.map((item, i) => {
                                return (
                                    <tr key={i} id={item.id}>
                                        <td>{item.name}</td>
                                        <td>{item.ref_range_value}</td>
                                        <td>{item.value}</td>
                                        <td>{item.remarks}</td>
                                        <td>
                                            <i class="fa fa-edit " style={{ fontSize: '20px' }} onClick={(e) => handleEdit(e, item.id)}></i>
                                            <i class="fa fa-trash text-danger mx-2 " style={{ fontSize: '20px' }} onClick={(e) => handleDelete(e, item.id)}></i>
                                        </td>
                                    </tr>
                                )
                            })}




                        </table>

                        <Modal
                            isOpen={modalEditIsOpen}
                            onRequestClose={closeEditModal}
                            style={customStyles1}
                            contentLabel="Example Modal"
                        >

                            <div className='card-body'>
                                <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeEditModal}><i class="fal fa-times"></i></span>

                                <h5 className=""> <b>Edit Vital Reading</b></h5>


                                <div className="row">

                                    <div className="col-12 d-flex">
                                        <div className="col-5 mt-4">
                                            <h6 className="mt-2 ml-1">Parameters</h6>
                                            <h6 className="mt-4">Ref. Range</h6>
                                            <h6 className="mt-4">Values</h6>
                                            <h6 className="mt-4">Remarks</h6>

                                        </div>
                                        <div className="col-7 mt-4">

                                            <select class="form-select form-select-sm mt-2" aria-label=".form-select-sm" name="name" value={editVitalData.name} onChange={handleVitalInfoEdit}>
                                                <option selected >Select Parameters</option>
                                                {vitaSignArray.map((item, i) => {
                                                    return (
                                                        <option key={i} value={item.name}>{item.name}</option>

                                                    )
                                                })}


                                            </select>

                                            <input type="text" class="form-control mt-3" id="exampleFormControlInput1" aria-label="default input example" name="ref_range_value" value={vitalRefValue.value} disabled />


                                            <input type="text" class="form-control mt-3" id="exampleFormControlInput1" placeholder="Write here" aria-label="default input example" name="value" onChange={handleVitalInfoEdit} value={editVitalData.value} />



                                            <div class="mt-3">
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="Write here" name="remarks" onChange={handleVitalInfoEdit} value={editVitalData.remarks}></textarea>
                                            </div>


                                            <div className="float-right mt-3">

                                                <button className=" rounded  fw-bold me-1" onClick={updateVital} style={{ backgroundColor: '#69B128', padding: '6px 25px', color: 'white', border: '0', outline: 'none' }}> Update </button>
                                                <button className=" rounded  fw-bold mx-1" onClick={closeEditModal} style={{ backgroundColor: '#FFFFFF', padding: '6px 20px', color: 'black', border: '1px solid #69B128 ', outline: 'none' }}> Cancel </button>


                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </Modal>
                    </>
                }

            </div>

            {todaysAppt.length == 0 && patientIdRender && <h4 className="text-danger mt-4 text-center py-3"> This Patient has no appointment today !</h4>}
        </div>
    )
}

export default PatientVitalReading