import React, { useState, useEffect } from 'react';
import './DoctorsInbox.css';
import icon from "../../../Images/crush.jpg";
import { Accordion, OverlayTrigger, Popover } from 'react-bootstrap';
import TreeItem, { treeItemClasses } from '@mui/lab/TreeItem';
import { alpha, styled } from '@mui/material/styles';
import DoctorsInboxPatientDetail from './DoctorsInboxPatientDetail';
import axios from "axios";
import moment from 'moment';

const DoctorsInbox = () => {
    const [smallMenu, setSmallMenu] = useState(true);
    const popover = (
        <Popover id="popover-basic" style={{ marginTop: "-6px" }}>
            <div className='g-doc-patient-contex-menu'>
                <span><i className="far fa-user me-1"></i> Profile </span>
            </div>
        </Popover>
    );

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
    const patientData = [
        { name: "Nolan Calzoni", id: 0, img: `${icon}` },
        { name: "Romaguera-Jacobson", id: 1, img: `${icon}` },
        { name: "Samantha", id: 3, img: `${icon}` },
        { name: "Deckow-Crist", id: 4, img: `${icon}` },
        { name: "Ervin Howell", id: 5, img: `${icon}` },
        { name: "Romaguera-Crona", id: 6, img: `${icon}` },
        { name: "Leanne Graham", id: 7, img: `${icon}` },
        { name: "Kurtis Weissnat", id: 8, img: `${icon}` },
        { name: "Considine-Lockman", id: 9, img: `${icon}` },
        { name: "Chelsey Dietrich", id: 10, img: `${icon}` },
        { name: "John Doe", id: 11, img: `${icon}` },
        { name: "Nolan Calzoni", id: 12, img: `${icon}` },
    ];
    const [doctorId, setDoctorId] = useState('');
    console.log('doctor id check', doctorId)
    useEffect(() => {
        const storageData = JSON.parse(localStorage.getItem('userData'))
        const doctorIdGet = storageData.user_id;
        setDoctorId(doctorIdGet)
    }, [])

    const [doctorAllLabPatients, setDoctorAllLabPatients] = useState([]);
    console.log('all patients', doctorAllLabPatients)

    // const [patientPropsValue, setPatientPropsValue] = useState(patientData[0]);

    console.log('all doc patients info', doctorAllLabPatients[0])
    const [patientId, setPatientId] = useState('');
    console.log('patient id', patientId)

    useEffect(() => {
        axios.get(`/doctor-inbox-lab-module/${doctorId}`).then(res => {
            if (res.data.status == 200) {
                setDoctorAllLabPatients(res.data.doc_labs_patient);
                setPatientId(res.data.doc_labs_patient[0].patient_id)

            }
        });

    }, [doctorId])


    const [individualPatientReport, setIndividualPatientReport] = useState();
    console.log('individual patient report', individualPatientReport)
    useEffect(() => {
        axios.get(`/doctor-inbox-lab-module-patients-report/${doctorId}/${patientId}`).then(res => {
            if (res.data.status == 200) {
                setIndividualPatientReport(res.data.patient_labs);

            }
        });

    }, [doctorId, patientId])

    const [searchTerm, setSearchTerm] = useState("");

    const handlePatientSearch = (e) => {
        setSearchTerm(e.target.value);

    }


    return (
        <div className='ms-2'>
            <div className="custom-card mt-2 p-2 d-flex justify-content-between">
                <h5 className="card-title">Doctor's Inbox</h5>
            </div>
            <div className='great-doc-container ms-1 mt-2'>
                <div className="row">
                    <div className={`${smallMenu ? "col-1" : "col-2"} g-doc-left-content custom-card`}>
                        <div className="g-doc-left-content-top clearfix">
                            {!smallMenu ?
                                <>
                                    <span className='float-end ms-1'><i onClick={() => setSmallMenu(!smallMenu)} className="fal fa-chevron-circle-left"></i></span>
                                </>

                                :
                                <span className='float-end ms-1'><i onClick={() => setSmallMenu(!smallMenu)} className="fal fa-chevron-circle-right"></i></span>
                            }
                            {!smallMenu &&
                                <input type="text" placeholder='search' onChange={handlePatientSearch} className="form-control form-control-sm mb-2" />
                            }
                        </div>

                        <div style={{ background: "#ffff" }} className="g-doc-left-content">

                            <h6 style={{ fontSize: "14px" }}>Patient</h6>
                            <div className="g-doc-paiten-list-container">
                                <ul>
                                    {
                                        doctorAllLabPatients.filter((val) => {
                                            if (searchTerm == "") {
                                                return val;
                                            } else if (val.patient_preferred_name.toLowerCase().includes(searchTerm.toLowerCase())
                                            ) {
                                                return val;
                                            }
                                        }).map((data, index) => {
                                            return (
                                                <li onClick={() => setPatientId(data.patient_id)} className={`d-flex g-doc-left-patient ${patientId === data.patient_id ? "active" : ""} mb-2`}>
                                                {/* <li onClick={() => setPatientId(data.patient_id)} className="mb-2 d-flex g-doc-left-patient"> */}
                                                    <div className=''>
                                                        <img src={`${global.img_url}/images/files/${data.patient_images}`} alt="" className={`img-fluid me-1 ${!smallMenu ? "mt-1" : ""}`} />
                                                        {/* {row.patient_images !== "" ? <img className="me-2" src={`${global.img_url}/images/files/${row.patient_images}`} width="20px" alt="No Image" /> */}
                                                    </div>
                                                    {
                                                        !smallMenu &&
                                                        <div className='g-doc-left-patient-detail ms-2'>
                                                            <h6 className='d-inline'>{data.patient_preferred_name}</h6>
                                                            <OverlayTrigger
                                                                trigger="click" placement="bottom-end" overlay={popover} rootClose="true"
                                                            >
                                                                <i style={{ cursor: "pointer" }} className="fas fa-ellipsis-h float-end text-white"></i>
                                                            </OverlayTrigger>
                                                            <br />
                                                            <span>{data.patient_address1}</span> <br />
                                                            <span><i className="fal fa-clock me-1"></i> {moment(data.date).format('LL')}</span>
                                                        </div>
                                                    }
                                                </li>
                                            )
                                        })
                                    }
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div className={`${smallMenu ? "col-11" : "col-10"}`}>
                        <DoctorsInboxPatientDetail singlePatientReport={individualPatientReport} />
                    </div>
                </div>
            </div>
        </div>
    );
};

export default DoctorsInbox;