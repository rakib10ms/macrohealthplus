import React, { useEffect, useState } from 'react';
import './GreatDoc.css';
import { Box, Popper, Tooltip } from '@material-ui/core';
import { Popover as Popover1 } from '@material-ui/core';
import icon from "../../../Images/crush.jpg";
import smsIcon from "../../../Images/g-doc-sms.png";
import nurseIcon from "../../../Images/g-doc-nurse.png";
import callIcon from "../../../Images/g-doc-call.png";
import sms1 from "../../../Images/doc-sms-1.png";
import sms2 from "../../../Images/doc-sms-2.png";
import sms3 from "../../../Images/doc-sms-3.png";
import sms4 from "../../../Images/doc-sms-4.png";
import sms5 from "../../../Images/doc-sms-5.png";
import sms6 from "../../../Images/doc-sms-6.png";
import sms7 from "../../../Images/doc-sms-7.png";
import sms8 from "../../../Images/doc-sms-8.png";
import sms9 from "../../../Images/doc-sms-9.png";
import sms10 from "../../../Images/doc-sms-10.png";
import maleNurse from "../../../Images/male-nurse.png";
import femaleNurse from "../../../Images/female-nurse.png";
import nurseGroup from "../../../Images/nurse-group.png";
import alergy1 from "../../../Images/g-alergy1.png";
import alergy2 from "../../../Images/g-alergy2.png";
import alergy3 from "../../../Images/g-alergy3.png";
import alergy4 from "../../../Images/g-alergy4.png";
import alergy5 from "../../../Images/g-alergy5.png";
import appointment from "../../../Images/appointment - copy.png";
import closeFull from "../../../Images/close_full_Screen.png";
import openFull from "../../../Images/open_full_Screen.png";
import { Accordion, Button, OverlayTrigger, Table } from 'react-bootstrap';
import { Popover as Popover2 } from 'react-bootstrap';
import InsertDriveFileOutlinedIcon from '@mui/icons-material/InsertDriveFileOutlined';
import TreeView from '@mui/lab/TreeView';
import TreeItem, { treeItemClasses } from '@mui/lab/TreeItem';
import { alpha, styled } from '@mui/material/styles';
import ViewInArRoundedIcon from '@mui/icons-material/ViewInArRounded';
import GreatDocPatientDetail from './GreatDocPatientDetail';
import axios from 'axios';
import moment from 'moment';
import VitalSignModal from './VitalSignModal';
import DoctorMenuModal from './DoctorMenuModal';
import '../../../imageUrl';
import { Link, useNavigate } from 'react-router-dom';
import Modal, { setAppElement } from 'react-modal';
import PastObservation from './PastObservation';
import CareSuggestion from './CareSuggestion';
import Immunisation from './Immunisation';
import MedicenDetails from './MedicenDetails';
import AddReactionModal from './AddReactionModal';
import { useParams } from "react-router-dom";
import Swal from 'sweetalert2';
import ObstreaticModal from './ObstreaticModal';
import rx1 from "../../../Images/current rx.png";
import rx2 from "../../../Images/past rx.png";
import pastHistoryIcon from "../../../Images/past history.png";
import cares from "../../../Images/care suggestion.png";
import observation from "../../../Images/past observation.png";
import obsteric from "../../../Images/obstreatic history.png";


const GreatDoc = () => {

    const [smallMenu, setSmallMenu] = useState(false);
    const [modalIsOpen, setIsOpen] = useState(false);
    const [docMenuModalIsOpen, setDocMenuModalIsOpen] = useState(false);
    const [showFullScreen, setShowFullScreen] = useState(true);


    // popover 
    // sms popover
    const [anchorEl, setAnchorEl] = useState(null);
    const handleClick = (event) => {
        setAnchorEl(event.currentTarget);
    };
    const handleClose = () => {
        setAnchorEl(null);
    };
    const open = Boolean(anchorEl);
    const id = open ? 'simple-popover' : undefined;
    //
    const [anchorEl2, setAnchorEl2] = useState(null);
    const handleClick2 = (event) => {
        setAnchorEl2(event.currentTarget);
    };
    const handleClose2 = () => {
        setAnchorEl2(null);
    };
    const open2 = Boolean(anchorEl2);
    const id2 = open2 ? 'simple-popover' : undefined;
    //
    const [anchorEl3, setAnchorEl3] = useState(null);
    const handleClick3 = (event) => {
        setAnchorEl3(event.currentTarget);
    };
    const handleClose3 = () => {
        setAnchorEl3(null);
    };
    const open3 = Boolean(anchorEl3);
    const id3 = open3 ? 'simple-popover' : undefined;

    let params = useParams();
    const [activeId, setActiveId] = useState(params.id)



    // popover 

    const StyledTreeItem = styled((props) => (
        <TreeItem {...props} />
    ))(({ theme }) => ({
        [`& .${treeItemClasses.iconContainer}`]: {
            '& .close': {
                opacity: 0.3,
            },
        },
        [`& .${treeItemClasses.group}`]: {
            marginLeft: 15,
            paddingLeft: 18,
            borderLeft: `1px dashed ${alpha(theme.palette.text.primary, 0.4)}`,
        },
    }));
    const [patientId, setpatientId] = useState();


    const fullScreen = () => {
        document.body.requestFullscreen();
    }
    const closeFullScreen = () => {
        document.exitFullscreen()
    }
    const [scheduleData, setscheduleData] = useState([]);

    const [uppcomingApp, setuppcomingApp] = useState([]);

    const [appointmentTime, setappointmentTime] = useState({
        StartTime: ''
    });

    const [reactionTableData, setReactionTableData] = useState([]);
    const [reactionTableUpdate, setReactionTableUpdate] = useState();
    useEffect(() => {
        if (patientPropsValue.id) {
            axios.get(`/added-reaction/${patientPropsValue.id}`).then(res => setReactionTableData(res.data.reaction));
        }
    }, [reactionTableUpdate])


    const [prescribedDrugs, setprescribedDrugs] = useState([])
    const [PastPrescribedDrugs, setPastPrescribedDrugs] = useState([])
    const [pastHistory, setPastHistory] = useState([]);
    const [allNurse, setAllNurse] = useState([]);
    const [nurseUpdate, setNurseUpdate] = useState([]);
    const [allEmployee, setAllEmployee] = useState([]);
    const [updateEmployee, setUpdateEmployee] = useState([]);
    const [updateSchedule, setUpdateSchedule] = useState('')


    const [nodataFoundtodays, setnodataFoundtodays] = useState(false)
    const [nodataFoundupcomming, setnodataFoundupcomming] = useState(false)
    const [nodatafoundPrescribedDrugs, setnodatafoundPrescribedDrugs] = useState(false)

    useEffect(() => {
        const storageData = JSON.parse(localStorage.getItem('userData'))
        if (storageData.user_type == 'Doctor') {
            axios.get(`great-doc-today-patient-appointment/${storageData.user_id}`).then(res => {
                console.log("GDPatientAppointmentToday", res.data.GDPatientAppointmentToday)
                setscheduleData(res.data.GDPatientAppointmentToday)
                if (res.data.GDPatientAppointmentToday.length === 0) {
                    setnodataFoundtodays(true)
                }
            })

            axios.get(`great-doc-upcomming-patient-appointment/${storageData.user_id}`).then(res => {
                setuppcomingApp(res.data.upcomingAppointments)
                if (res.data.upcomingAppointments.length === 0) {
                    setnodataFoundupcomming(true)
                }
            })
        }
        axios.get("/all-nurses")
            .then(res => {
                setAllNurse(res.data.nurse);
                setNurseUpdate(res.data.nurse);
            });

    }, [updateSchedule]);
    useEffect(() => {
        axios.get("/employee")
            .then(res => {
                setAllEmployee(res.data.employee);
            });

    }, [updateEmployee]);


    // const setNurseUpdate = ()=> {

    // }

    const [updateState, setupdateState] = useState();
    const [saveMedicen, setsaveMedicen] = useState()
    const [currentMedicen, setcurrentMedicen] = useState([])

    useEffect(() => {
        if (patientPropsValue.id) {
            setnodatafoundPrescribedDrugs(false)
            axios.get(`get-pescriped-dugs/${patientPropsValue.id}`).then(res => {
                setprescribedDrugs(res.data.drugs)
                if (res.data.drugs === 0) {
                    setnodatafoundPrescribedDrugs(true)
                }
            })
            axios.get(`past-dugs-history/${patientPropsValue.id}`).then(res => {
                console.log("past", res.data.drugs)
                setPastPrescribedDrugs(res.data.drugs)
            })
        }

        if (saveMedicen !== undefined) {
            setcurrentMedicen([...currentMedicen, saveMedicen])
        }


    }, [updateState, saveMedicen]);
    useEffect(() => {
        if (patientPropsValue.id) {
            setnodatafoundPrescribedDrugs(false)
            axios.get(`get-pescriped-dugs/${patientPropsValue.id}`).then(res => {
                setprescribedDrugs(res.data.drugs)
                if (res.data.drugs.length === 0) {
                    setnodatafoundPrescribedDrugs(true)
                }
            })
            axios.get(`past-dugs-history/${patientPropsValue.id}`).then(res => {
                console.log("past", res.data.drugs)
            })
        }

        if (saveMedicen !== undefined) {
            setcurrentMedicen([...currentMedicen, saveMedicen])
        }


    }, [updateState, saveMedicen]);
    const [obstericHistory, setObstericHistory] = useState([]);
    const [immunisationHistory, setImmunisationHistory] = useState([]);
    useEffect(() => {
        if (patientPropsValue.id !== "") {
            axios.get(`/pregnancy-history/${patientPropsValue.id}`)
                .then(res => {
                    setObstericHistory(res.data.pregnancy)
                });
            axios.get(`/past-history/${patientPropsValue.id}`)
                .then(res => {
                    setPastHistory(res.data.past_history)
                });
            axios.get(`/get-immunisation/${patientPropsValue.id}`)
                .then(res => {
                    setImmunisationHistory(res.data.immunisation)
                });


        }

    }, [updateState]);

    const [patientPropsValue, setPatientPropsValue] = useState({
        id: '',
        patient_hn_number: '',
        patient_first_name: '',
        patient_middle_name: '',
        patient_last_name: '',
        patient_hcc_no: '',
        blood_group: {
            blood_group_name: ''
        },
        patient_birth_sex: {
            birth_sex_name: ''
        },
        religion: {
            religion_name: ''
        },
        patient_images: '',
        patient_dob: ''
    });

    const [vitalSign, setvitalSign] = useState([{
        name: '',
        value: '',
        icon: '',
        color: '',
        units_id: ''
    }]);

    const customStyles = {
        content: {
            top: '30%',
            left: '30%',
            height: '55vh',
            width: '80%',
            transform: 'translate(-50%, -50%)',
            backgroundColor: 'rgb(243, 242, 239)'
        },
    };
    const customStylesImmunisation = {
        content: {
            top: '30%',
            left: '30%',
            height: '500px',
            width: '80%',
            transform: 'translate(-50%, -50%)',
            backgroundColor: 'rgb(243, 242, 239)'
        },
    };
    const customStylesObs = {
        content: {
            top: '40%',
            left: '30%',
            height: '60%',
            width: '80%',
            transform: 'translate(-50%, -50%)',
            backgroundColor: 'rgb(243, 242, 239)'
        },
    };
    const customStylesPast = {
        content: {
            top: '37%',
            left: '21%',
            right: 'auto',
            bottom: 'auto',
            transform: 'translate(-50%, -50%)',
            width: "80%",
            height: "83%",
            background: "#F3F2EF",
            padding: "10px",
            marginLeft: "38%"
        },
    };

    const customStylesMedicen = {
        content: {
            top: '37%',
            left: '21%',
            right: 'auto',
            bottom: 'auto',
            transform: 'translate(-50%, -50%)',
            width: "40%",
            height: "73%",
            background: "white",
            padding: "15px",
            marginLeft: "38%"
        },
    };

    const [immunisationModalIsOpen, setImmunisationIsOpen] = React.useState(false);

    function openImmunisationModal() {
        setImmunisationIsOpen(true);
    }


    function closeModal() {
        setImmunisationIsOpen(false);
    }


    // modal observation

    const [modalPastObservationIsOpen, setPastObservationIsOpen] = React.useState(false);


    function openModal() {
        setPastObservationIsOpen(true);
    }

    function closePastObservationModal() {
        setPastObservationIsOpen(false);
    }

    // modal care suggestions

    const [modalCareSuggestionIsOpen, setCareSuggestionIsOpen] = React.useState(false);

    function openCareModal() {
        setCareSuggestionIsOpen(true);
    }

    function closeCareSuggestionModal() {
        setCareSuggestionIsOpen(false);
    }

    const [fullImmunisation, setFullImmunisation] = useState();

    function handleImmunisationChange(e) {
        setFullImmunisation({ ...fullImmunisation, [e.target.name]: e.target.value })
    }
    const [addReactionModalIsOpen, setAddReactionModalIsOpen] = useState(false);
    function addReactionModalOpen() {
        setAddReactionModalIsOpen(true)
    }
    function closeReactionModal() {
        setAddReactionModalIsOpen(false)
    }
    const [obstreaticModalIsOpen, setObstreaticModalIsOpen] = useState(false);
    function closeObstreaticModal() {
        setObstreaticModalIsOpen(false);
    }
    const [medicenDetailsModelShow, setmedicenDetailsModelShow] = useState(false);
    const [medicenDetails, setmedicenDetails] = useState();
    const [element, setElement] = useState("CurrentRx");
    const deleteHistory = (id, e) => {
        const thisClicked = e.currentTarget;

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
                axios.delete(`/added-allergy-delete/${id}`).then(res => {
                    if (res.data.status === 200) {
                        thisClicked.closest("tr").remove();
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
    // useEffect(() => {
    //     axios.get(`patient-search-by-id/${activeId}`).then(res => {
    //         setPatientPropsValue(res.data.patient)
    //         setvitalSign(res.data.vital_signs)
    //         // setActiveId(item.patient_id)
    //         setupdateState(Math.random())
    //         setcurrentMedicen([])
    //         setReactionTableUpdate(Math.random())
    //     })
    // }, [activeId]);
    const initialSet = (item) => {

        console.log("initialSet", item)
        setappointmentTime(item);
        axios.get(`patient-search-by-id/${item.patient_id}`).then(res => {
            setPatientPropsValue(res.data.patient)
            setvitalSign(res.data.vital_signs)
            setActiveId(item.patient_id)
            setupdateState(Math.random())
            setcurrentMedicen([])
            setReactionTableUpdate(Math.random())
        })
    }

    useEffect(() => {

        if (params.id) {
            scheduleData.find((ele, i) => {
                if (ele.patient_id === params.id) {
                    setappointmentTime({
                        StartTime: scheduleData[i].StartTime
                    });
                }
            })


            axios.get(`patient-search-by-id/${params.id}`).then(res => {
                setPatientPropsValue(res.data.patient)

                setvitalSign(res.data.vital_signs)
                setupdateState(Math.random())
                setcurrentMedicen([])
                setReactionTableUpdate(Math.random())
            })
        }
    }, [params.id, scheduleData])


    const popover = (
        <Popover2 id="popover-basic" style={{ marginTop: "-6px" }}>
            <div className='g-doc-patient-contex-menu'>
                <Link to={`/patients-profile/${patientPropsValue?.id}`}><span><i className="far fa-user me-1"></i> Profile </span></Link>
            </div>
        </Popover2>
    );



    return (

        <div className='ms-1'>
            <div className="custom-card m-1 mt-2 p-2 d-flex justify-content-between">
                <h5 className="card-title">Great Doc</h5>
                <div className=" g-doc-patient-menu">
                    <img onClick={handleClick} src={smsIcon} alt="" className="d-inline me-3" />
                    <Popover1
                        id={id}
                        open={open}
                        anchorEl={anchorEl}
                        onClose={handleClose}
                        anchorOrigin={{
                            vertical: 'bottom',
                            horizontal: 'left',
                        }}
                        transformOrigin={{
                            vertical: 'top',
                            horizontal: 'center',
                        }}
                    >

                        <Box sx={{ p: 1, bgcolor: '#ffff' }}>
                            <div className='g-doc-doctor-sms-popover row'>
                                <div className="row">
                                    <div className='text-center col-4'>
                                        <img src={sms1} alt="" className="img-fluid" />
                                        <p>Clinical</p>
                                    </div>

                                    <div className='text-center col-4'>
                                        <Link className='text-decoration-none' to="/patients">
                                            <img src={sms2} alt="" className="img-fluid" />
                                            <p>Patient</p>
                                        </Link>
                                    </div>

                                    <div className='text-center col-4'>
                                        <img src={sms3} alt="" className="img-fluid" />
                                        <p>Administration</p>
                                    </div>
                                    <div className='text-center col-4'>

                                        <Link className='text-decoration-none' to="/doctors-inbox">
                                            <img src={sms4} alt="" className="img-fluid" />
                                            <p>Inbox</p>
                                        </Link>
                                    </div>
                                    <div className='text-center col-4'>
                                        <img src={sms5} alt="" className="img-fluid" />
                                        <p>Clinical Data</p>
                                    </div>
                                    <div className='text-center col-4'>
                                        <img src={sms6} alt="" onClick={openImmunisationModal} className="img-fluid" />
                                        <p>Immunisation</p>
                                    </div>
                                    <div className='text-center col-4'>
                                        <img src={sms7} alt="" className="img-fluid" />
                                        <p>Disease Register</p>
                                    </div>
                                    <div className='text-center col-4'>
                                        <img src={sms8} alt="" className="img-fluid" />
                                        <p>Resources</p>
                                    </div>
                                    <div className='text-center col-4'>
                                        <img src={sms9} alt="" className="img-fluid" />
                                        <p>Setup</p>
                                    </div>
                                    <div className='text-center col-4'>
                                        <img src={sms10} alt="" className="img-fluid" />
                                        <p>Help</p>
                                    </div>
                                </div>
                            </div>
                        </Box>
                    </Popover1>

                    {/* immunisation modal */}

                    <Modal
                        isOpen={immunisationModalIsOpen}
                        onRequestClose={closeModal}
                        style={customStylesImmunisation}
                        contentLabel="Example Modal"
                    >
                        <span className='float-end' style={{ fontSize: "15px", cursor: "pointer" }} onClick={closeModal}><i className="fal fa-times"></i></span>
                        <h6 style={{ fontSize: "14px" }}>Immunisation</h6>
                        <hr />
                        <Immunisation patientId={patientPropsValue.id} closeModal={closeModal}></Immunisation>
                    </Modal>
                    <img onClick={handleClick2} src={callIcon} alt="" className="d-inline me-3" />
                    <Popover1
                        id={id2}
                        open={open2}
                        anchorEl={anchorEl2}
                        onClose={handleClose2}
                        anchorOrigin={{
                            vertical: 'bottom',
                            horizontal: 'left',
                        }}
                        transformOrigin={{
                            vertical: 'top',
                            horizontal: 'center',
                        }}
                    >
                        <Box sx={{ p: 1, bgcolor: '#ffff', width: "270px", }}>
                            <div className='g-doc-doctor-call-popover main-call'>
                                <div className="g-doc-call-pop-top p-2">
                                    <h6>Office Directory</h6>
                                    <input type="text" onChange={(e) => {
                                        const data = allEmployee.filter(item => item.given_name.toLowerCase().match(e.target.value.toLowerCase()));
                                        e.target.value.length > 0 ?
                                            setAllEmployee(data) : setUpdateEmployee(Math.random())
                                    }} placeholder='Search by name' className="form-control form-control-sm mt-3 mb-2" />
                                </div>
                                <div className="g-doc-call-pop-contact p-2">
                                    <ul>
                                        {
                                            allEmployee.length > 0 ?
                                                allEmployee.map((item, i) => {
                                                    return (
                                                        <li key={i} className='row pop-contact-details p-2 mb-2'>
                                                            <div className="col-3">
                                                                <img src={`${global.img_url}/employee/images/${item.image}`} alt="" />
                                                            </div>
                                                            <div className='col-6'>
                                                                <h6 className='pop-contact-details-name ms-1 mt-2'>{item.given_name}</h6>
                                                                <span className='pop-contact-details-number'>{item.mobile_phone}</span>
                                                            </div>
                                                            <div className="col-3">
                                                                <span><i className="fal fa-comment-lines me-1 pop-contact-icon-sms mt-2"></i></span>
                                                                <span> <a href={`tel: ${item.mobile_phone}`}><i className=" mt-2 fas fa-phone-alt pop-contact-icon-call"></i></a></span>
                                                            </div>
                                                        </li>
                                                    )
                                                })
                                                :
                                                <i style={{ fontSize: "20px", marginLeft: "40%" }} className="fas fa-spinner fa-spin"></i>

                                        }


                                    </ul>
                                </div>
                            </div>
                        </Box>
                    </Popover1>
                    <img onClick={handleClick3} src={nurseIcon} alt="" className="d-inline" />
                    <Popover1
                        id={id3}
                        open={open3}
                        anchorEl={anchorEl3}
                        onClose={handleClose3}
                        anchorOrigin={{
                            vertical: 'bottom',
                            horizontal: 'left',
                        }}
                        transformOrigin={{
                            vertical: 'top',
                            horizontal: 'center',
                        }}
                    >
                        <Box sx={{ p: 1, bgcolor: '#ffff', width: "270px" }}>
                            <div className='g-doc-doctor-call-popover'>
                                <div className="g-doc-call-pop-top p-2">
                                    <h6>Nurse Directory</h6>
                                    <input type="text" onChange={(e) => setNurseUpdate(allNurse.filter(item => item.given_name.toLowerCase().match(e.target.value.toLowerCase())))} placeholder='Search by name' className="form-control form-control-sm mt-3 mb-2" />
                                </div>
                                <div className="g-doc-nurse-directory-filter d-flex justify-content-around p-2">
                                    <div onClick={() => setNurseUpdate(allNurse.filter(item => item.birth_sex_name.toLowerCase() === "male"))} className='male-nurse d-flex me-2 p-2 ms-2'>
                                        <img src={maleNurse} className=' me-1' alt="" />
                                        <p >Male Nurse</p>
                                    </div>
                                    <div onClick={() => setNurseUpdate(allNurse.filter(item => item.birth_sex_name.toLowerCase() === "female"))} className='male-nurse d-flex me-2 p-2'>
                                        <img src={femaleNurse} alt="" />
                                        <p>Female Nurse</p>
                                    </div>
                                    <div onClick={() => setNurseUpdate(allNurse)} className='male-nurse d-flex me-2 p-2'>
                                        <img src={nurseGroup} alt="" />
                                        <p>Nurse Group</p>
                                    </div>
                                </div>
                                <div className="g-doc-call-pop-contact p-2">
                                    <ul>
                                        {
                                            nurseUpdate.length > 0 ?
                                                nurseUpdate.map((item, i) => {
                                                    return (
                                                        <li key={i} className='row  pop-contact-details p-2 mb-2'>
                                                            <div className="col-3">
                                                                <img src={`${global.img_url}/employee/images/${item.image}`} alt="" />
                                                            </div>
                                                            <div className='col-6'>
                                                                <h6 className='pop-contact-details-name mt-2 ms-1'>{item.given_name}</h6>
                                                                <span className='pop-contact-details-number ms-1'>{item.mobile_phone}</span>
                                                            </div>
                                                            <div className="col-3">
                                                                <span><i className="fal fa-comment-lines me-1 pop-contact-icon-sms mt-2"></i></span>
                                                                <span><a href={`tel: ${item.mobile_phone}`}><i className=" mt-2 fas fa-phone-alt pop-contact-icon-call"></i></a></span>
                                                            </div>
                                                        </li>
                                                    )
                                                })
                                                : <i style={{ fontSize: "20px", marginLeft: "40%" }} className="fas fa-spinner fa-spin"></i>
                                        }
                                    </ul>
                                </div>
                            </div>
                        </Box>
                    </Popover1>
                    {
                        showFullScreen ?
                            <img className='ms-3 screen-img' onClick={() => { fullScreen(); setShowFullScreen(!showFullScreen) }} src={openFull} alt="" />
                            :
                            <img className='ms-3 screen-img' onClick={() => { closeFullScreen(); setShowFullScreen(!showFullScreen) }} src={closeFull} alt="" />
                    }

                </div>
            </div>
            <div className='great-doc-container ms-2 mt-2'>
                <div className="row">
                    <div className={`${smallMenu ? "col-1" : "col-2"} g-doc-left-sidebar g-doc-scroll custom-card g-doc-left-content`}>
                        <div className="g-doc-left-content-top clearfix">
                            {!smallMenu ?
                                <>
                                    <h6 className='d-inline ms-1'>Patient</h6>
                                    <span className='float-end ms-1'><i onClick={() => setSmallMenu(!smallMenu)} className="fal fa-chevron-circle-left"></i></span>
                                </>

                                :
                                <span className='float-end ms-1'><i onClick={() => setSmallMenu(!smallMenu)} className="fal fa-chevron-circle-right"></i></span>
                            }
                        </div>
                        <Accordion defaultActiveKey="0" className='mb-2'>
                            <Accordion.Item eventKey="0">

                                {
                                    smallMenu ?
                                        <Tooltip title="Appointments" placement="top">
                                            <Accordion.Header onClick={() => setSmallMenu(false)}> {smallMenu ? <img src={appointment} className="me-2" alt="" /> : "Appointments"}</Accordion.Header>
                                        </Tooltip>
                                        :
                                        <Accordion.Header> Appointments</Accordion.Header>

                                }


                                <Accordion.Body>
                                    <div className="g-doc-left-content">
                                        {!smallMenu &&
                                            <input type="text" onChange={(e) => {
                                                const data = scheduleData.filter(item => item.patient_name.toLowerCase().match(e.target.value.toLowerCase()));
                                                e.target.value.length > 0 ?
                                                    setscheduleData(data) : setUpdateSchedule(Math.random())
                                            }} placeholder='search' className="form-control form-control-sm mb-2" />
                                        }
                                        {
                                            !smallMenu ?
                                                <p style={{ fontSize: "13px" }}>Today’s Appointments</p>
                                                : <h6 style={{ fontSize: "14px" }}>Today..</h6>
                                        }
                                        <div className="g-doc-paiten-list-container">
                                            <ul>
                                                {scheduleData.length > 0 ?
                                                    scheduleData.map((item, i) => {
                                                        return (
                                                            <li key={i} onClick={() => initialSet(item)} className={`d-flex g-doc-left-patient ${activeId === item.patient_id ? "active" : ""} mb-2`}>
                                                                <div className=''>
                                                                    <img src={`${global.img_url}/images/files/${item.patients.patient_images}`} alt="" className="img-fluid me-1" />
                                                                    {/* <img src={icon} alt="" className={`img-fluid me-1 ${!smallMenu ? "mt-1" : ""}`} /> */}
                                                                </div>
                                                                {
                                                                    !smallMenu &&
                                                                    <div className='g-doc-left-patient-detail ms-2'>
                                                                        <h6 className='d-inline'>{item.patient_name}</h6>
                                                                        <OverlayTrigger
                                                                            trigger="click" placement="bottom-end" overlay={popover} rootClose="true"
                                                                        >
                                                                            <i style={{ cursor: "pointer" }} className="fas fa-ellipsis-h float-end text-white"></i>
                                                                        </OverlayTrigger>
                                                                        <br />

                                                                        <span><i className="fal fa-clock me-1"></i> {moment(item.StartTime).calendar()}</span>
                                                                    </div>
                                                                }
                                                            </li>
                                                        )
                                                    })
                                                    :

                                                    <>
                                                        {
                                                            nodataFoundtodays ? <p style={{ fontSize: "13px", marginLeft: "19%",color:"red" }}>No Data Found</p> :
                                                                <i style={{ fontSize: "26px", marginLeft: "40%" }} className="fas fa-spinner fa-spin"></i>

                                                        }

                                                    </>}

                                            </ul>
                                            {
                                                !smallMenu ?
                                                    <p style={{ fontSize: "13px" }}>Upcoming Appointments</p>
                                                    : <h6 style={{ fontSize: "14px" }}>Upcoming</h6>
                                            }
                                            <ul>
                                                {
                                                    uppcomingApp.length > 0 ? uppcomingApp.map((item, i) => {
                                                        return (
                                                            <li key={i} className={`d-flex g-doc-left-patient ${patientPropsValue.id === item.patient_id ? "active" : ""} mb-2`}>
                                                                <div className=''>
                                                                    <img src={`${global.img_url}/images/files/${item.patients.patient_images}`} alt="" className="img-fluid me-1" />
                                                                </div>
                                                                {
                                                                    !smallMenu &&
                                                                    <div className='g-doc-left-patient-detail ms-2'>
                                                                        <h6 className='d-inline'>{item.patient_name}</h6>
                                                                        <OverlayTrigger
                                                                            trigger="click" placement="bottom-end" overlay={popover} rootClose="true"
                                                                        >
                                                                            <i style={{ cursor: "pointer" }} className="fas fa-ellipsis-h float-end "></i>
                                                                        </OverlayTrigger>
                                                                        <br />
                                                                        <span><i className="fal fa-clock me-1"></i> {moment(item.StartTime).calendar()}</span>
                                                                    </div>
                                                                }
                                                            </li>
                                                        )
                                                    }):
                                                    <>
                                                    {
                                                        nodataFoundupcomming ? <p style={{ fontSize: "13px", marginLeft: "19%",color:"red" }}>No Data Found</p> :
                                                            <i style={{ fontSize: "26px", marginLeft: "40%" }} className="fas fa-spinner fa-spin"></i>

                                                    }

                                                </>
                                                }

                                            </ul>
                                        </div>
                                    </div>
                                </Accordion.Body>
                            </Accordion.Item>
                        </Accordion>
                        <Accordion>
                            <Accordion.Item eventKey="0">

                                {
                                    smallMenu ?
                                        <Tooltip title="Allergy" placement="bottom">
                                            <Accordion.Header onClick={() => setSmallMenu(false)}> {smallMenu ? <img style={{ width: "27px" }} src={alergy1} className="me-2" alt="" /> : "Allergy"} </Accordion.Header>
                                        </Tooltip>
                                        :
                                        <Accordion.Header> Allergy </Accordion.Header>

                                }
                                <Accordion.Body>
                                    <div className="g-doc-reaction-container">
                                        {
                                            !smallMenu &&
                                            <>
                                                <span className='ms-1 mb-2'>Allergy / Drug
                                                    Reaction: {
                                                        patientPropsValue.id != '' && <i onClick={addReactionModalOpen} style={{ color: "#429846", fontSize: "16px", cursor: "pointer" }} className="fas fa-plus-circle mx-1 mt-2"></i>
                                                    }
                                                </span>
                                                <AddReactionModal setReactionTableUpdate={setReactionTableUpdate} patient_id={patientPropsValue.id} closeModal={closeReactionModal} modalIsOpen={addReactionModalIsOpen} />
                                                {
                                                    reactionTableData.length > 0 ?
                                                        <div className="g-doc-left-reaction mt-2">
                                                            <table className="table-sm">
                                                                <tr className='left-reaction-thead'>
                                                                    <td >Item</td>
                                                                    <td >Reaction</td>
                                                                    <td >Severty</td>
                                                                    <td >Action</td>
                                                                </tr>
                                                                {
                                                                    reactionTableData.length > 0 &&
                                                                    reactionTableData.map((item, i) => {
                                                                        return (
                                                                            <tr key={i}>
                                                                                <td>{item.drug_name}</td>
                                                                                <td>{item.reaction}</td>
                                                                                <td>{item.severty}</td>
                                                                                <td><i onClick={(e) => deleteHistory(item.id, e)} style={{ cursor: "pointer", fontSize: "12px" }} className="far fa-trash-alt"></i></td>
                                                                            </tr>
                                                                        )
                                                                    })
                                                                }

                                                            </table>
                                                        </div>
                                                        :
                                                        <i style={{ fontSize: "26px", marginLeft: "40%" }} className="fas fa-spinner fa-spin"></i>
                                                }
                                            </>
                                        }


                                    </div>
                                </Accordion.Body>
                            </Accordion.Item>
                        </Accordion>
                        {
                            !smallMenu &&
                            <div className="g-doc-alergy-examination-container g-doc-scroll p-2 mt-3">
                                <div className=''>
                                    <TreeView
                                        aria-label="file system navigator"
                                        defaultCollapseIcon={<img className='img-fluid' src={rx1} />}
                                        defaultExpandIcon={<img className='img-fluid' src={rx1} />}
                                        defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                                        sx={{ flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                                    >
                                        <StyledTreeItem onClick={() => setElement("CurrentRx")} nodeId="1" label="Current RX">
                                            {
                                                prescribedDrugs.length > 0 ?
                                                    prescribedDrugs.map((item, i) => {
                                                        return (
                                                            <>
                                                                <StyledTreeItem onClick={() => {
                                                                    setmedicenDetailsModelShow(true)
                                                                    setmedicenDetails(item)
                                                                }} nodeId={`${i} + 20`} label={item.drug_name} />

                                                                <Modal
                                                                    isOpen={medicenDetailsModelShow}
                                                                    onRequestClose={medicenDetailsModelShow}
                                                                    style={customStylesMedicen}
                                                                    contentLabel="Medicen details"
                                                                >
                                                                    <span style={{ cursor: "pointer" }} className='float-end'><i className="fal fa-times" onClick={() => setmedicenDetailsModelShow(false)}></i></span>
                                                                    <h6 style={{ fontSize: "14px" }}>Medicen Details</h6>
                                                                    <hr />
                                                                    <MedicenDetails medicenDetails={medicenDetails} />
                                                                </Modal>
                                                            </>
                                                        )
                                                    })
                                                    :
                                                    <StyledTreeItem nodeId="156" label="loading...." />
                                            }
                                            {/* {
                                                currentMedicen.length > 0 ?
                                                    currentMedicen.map((item, i) => {
                                                        return (
                                                            <StyledTreeItem nodeId={`${i} + 20`} label={item.drug_name} />
                                                        )
                                                    })
                                                    :
                                                    <StyledTreeItem nodeId="156" label="No data" />
                                            } */}

                                        </StyledTreeItem>


                                    </TreeView>
                                    <TreeView
                                        aria-label="file system navigator"
                                        defaultCollapseIcon={<img className='img-fluid' src={rx2} />}
                                        defaultExpandIcon={<img className='img-fluid' src={rx2} />}
                                        defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                                        sx={{ flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                                    >


                                        <StyledTreeItem onClick={() => setElement("pastRx")} nodeId="155" label="Past RX">

                                            {
                                                PastPrescribedDrugs.length > 0 ?
                                                    PastPrescribedDrugs.map((item, i) => {
                                                        return (
                                                            <>
                                                                <StyledTreeItem onClick={() => {
                                                                    setmedicenDetailsModelShow(true)
                                                                    setmedicenDetails(item)
                                                                }} nodeId={`${i} + 20`} label={item.drug_name} />

                                                                <Modal
                                                                    isOpen={medicenDetailsModelShow}
                                                                    onRequestClose={medicenDetailsModelShow}
                                                                    style={customStylesMedicen}
                                                                    contentLabel="Medicen details"
                                                                >
                                                                    <span style={{ cursor: "pointer" }} className='float-end'><i className="fal fa-times" onClick={() => setmedicenDetailsModelShow(false)}></i></span>
                                                                    <h6 style={{ fontSize: "14px" }}>Medicen Details</h6>
                                                                    <hr />
                                                                    <MedicenDetails medicenDetails={medicenDetails} />
                                                                </Modal>
                                                            </>
                                                        )
                                                    })
                                                    :
                                                    <StyledTreeItem nodeId="156" label="loading...." />
                                            }

                                        </StyledTreeItem>
                                    </TreeView>
                                    <TreeView
                                        aria-label="file system navigator"
                                        defaultCollapseIcon={<img className='img-fluid' src={pastHistoryIcon} />}
                                        defaultExpandIcon={<img className='img-fluid' src={pastHistoryIcon} />}
                                        defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                                        sx={{ flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                                    >

                                        <StyledTreeItem onClick={() => setElement("pastHistory")} nodeId="157" label="Past History">
                                            {
                                                pastHistory.length > 0 ?
                                                    pastHistory.map((item, i) => {
                                                        return (
                                                            <StyledTreeItem key={i} nodeId={158 + i} label={moment(item.date).format("DD/MM/YYYY")} />
                                                        )
                                                    })
                                                    :
                                                    <StyledTreeItem nodeId="159" label="No data" />
                                            }
                                        </StyledTreeItem>


                                    </TreeView>
                                </div>

                                <div className="mt-1">
                                    <TreeView
                                        aria-label="file system navigator"
                                        defaultCollapseIcon={<img className='img-fluid' src={alergy4} />}
                                        defaultExpandIcon={<img className='img-fluid' src={alergy4} />}
                                        defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                                        sx={{ flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                                    >
                                        <StyledTreeItem onClick={() => setElement("immunisation")} nodeId="23" label="Immunization">
                                            {
                                                immunisationHistory.length > 0 ?
                                                    immunisationHistory.map((item, i) => <StyledTreeItem key={i} nodeId={21 + i} label={item.date} />)
                                                    : <StyledTreeItem nodeId="21" label=" No data" />
                                            }

                                        </StyledTreeItem>
                                    </TreeView>
                                </div>
                                <div className="mt-1">
                                    <TreeView
                                        aria-label="file system navigator"
                                        defaultCollapseIcon={<img className='img-fluid' src={cares} />}
                                        defaultExpandIcon={<img className='img-fluid' src={cares} />}
                                        defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                                        sx={{ flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                                    >
                                        <StyledTreeItem nodeId="30" label="Care Suggestion" onClick={openCareModal}>
                                            <Modal
                                                isOpen={modalCareSuggestionIsOpen}
                                                onRequestClose={closeCareSuggestionModal}
                                                style={customStyles}
                                                contentLabel="Example Modal"
                                            >
                                                <span className='float-end'><i className="fal fa-times" onClick={closeCareSuggestionModal} style={{ cursor: 'pointer' }}></i></span>
                                                <h6 style={{ fontSize: "14px" }}>Care Suggestions</h6>
                                                <hr />
                                                <CareSuggestion closeCareSuggestionModal={closeCareSuggestionModal}></CareSuggestion>
                                            </Modal>
                                        </StyledTreeItem>
                                    </TreeView>
                                </div>


                                <div className="mt-1">
                                    <TreeView
                                        aria-label="file system navigator"
                                        defaultCollapseIcon={<img className='img-fluid' src={observation} />}
                                        defaultExpandIcon={<img className='img-fluid' src={observation} />}
                                        defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                                        sx={{ flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                                    >
                                        <StyledTreeItem nodeId="45" label="Past Observation" onClick={openModal}>
                                            <Modal
                                                isOpen={modalPastObservationIsOpen}
                                                onRequestClose={closePastObservationModal}
                                                style={customStylesPast}
                                                contentLabel="Example Modal"
                                            >
                                                <span className='float-end'><i className="fal fa-times" onClick={closePastObservationModal} style={{ cursor: 'pointer' }}></i></span>
                                                <h6 style={{ fontSize: "14px" }}>Past Observation</h6>
                                                <hr />
                                                <PastObservation patientId={patientPropsValue.id} closePastObservationModal={closePastObservationModal}></PastObservation>
                                            </Modal>
                                        </StyledTreeItem>
                                    </TreeView>
                                </div>
                                <div className="mt-1">
                                    <TreeView
                                        aria-label="file system navigator"
                                        defaultCollapseIcon={<img className='img-fluid' src={obsteric} />}
                                        defaultExpandIcon={<img className='img-fluid' src={obsteric} />}
                                        defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                                        sx={{ flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                                    >
                                        <StyledTreeItem onClick={() => setElement("obstreaticHistory")} nodeId="157" label="Obstreatic History">
                                            {
                                                obstericHistory.length > 0 ?
                                                    obstericHistory.map((item, i) => {
                                                        return (
                                                            <>
                                                                <StyledTreeItem onClick={() => setObstreaticModalIsOpen(true)} key={i} nodeId={159 + i} label={item.pregnancy_no} />
                                                                <Modal
                                                                    isOpen={obstreaticModalIsOpen}
                                                                    onRequestClose={closeObstreaticModal}
                                                                    style={customStylesObs}
                                                                    contentLabel="Medicen details"
                                                                >
                                                                    <span style={{ cursor: "pointer" }} className='float-end'><i className="fal fa-times" onClick={() => setObstreaticModalIsOpen(false)}></i></span>
                                                                    <h6 style={{ fontSize: "14px" }}>Pregnancy Details</h6>
                                                                    <hr />
                                                                    <ObstreaticModal id={item.id} />
                                                                </Modal>
                                                            </>

                                                        )
                                                    })
                                                    :
                                                    <StyledTreeItem nodeId={159} label={"No data"} />
                                            }

                                        </StyledTreeItem>
                                    </TreeView>
                                </div>
                            </div>
                        }
                    </div>
                    <div className={`${smallMenu ? "col-11" : "col-10"}`}>
                        <GreatDocPatientDetail element={element} PastPrescribedDrugs={PastPrescribedDrugs} prescribedDrugs={prescribedDrugs} nodatafoundPrescribedDrugs={nodatafoundPrescribedDrugs} setupdateState={setupdateState} setElement={setElement} saveMedicen={saveMedicen} setsaveMedicen={setsaveMedicen} appointmentTime={appointmentTime} patientPropsValue={patientPropsValue} vitalSign={vitalSign} />
                    </div>
                </div>
            </div>
        </div>
    );
};

export default GreatDoc;