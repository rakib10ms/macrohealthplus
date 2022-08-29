import React, { useState, useEffect } from 'react';
import './DoctorsInbox.css';
import icon from "../../../Images/crush.jpg";
import xRay from "../../../Images/xray.png";
import { Accordion, OverlayTrigger, Popover } from 'react-bootstrap';
import TreeView from '@mui/lab/TreeView';
import TreeItem, { treeItemClasses } from '@mui/lab/TreeItem';
import { alpha, styled } from '@mui/material/styles';
import ViewInArRoundedIcon from '@mui/icons-material/ViewInArRounded';
import InsertDriveFileOutlinedIcon from '@mui/icons-material/InsertDriveFileOutlined';
import notice_pdf from './notice_pdf.pdf';
import { TransformWrapper, TransformComponent } from "react-zoom-pan-pinch";
import axios from "axios";
import moment from 'moment';
import { toast } from 'react-toastify';

const DoctorsInboxPatientDetail = (props) => {
    // console.log('propssssssssssssssssssssss', props)
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

    const [theResultIs, setTheResultIs] = useState([]);
    const [storeResultIn, setStoreResultIn] = useState([]);
    const [actionTobeTaken, setActionTobeTaken] = useState([]);

    useEffect(() => {
        axios.get(`/theResultIs`).then(res => {
            if (res.data.status == 200) {
                setTheResultIs(res.data.theResultIs);

            }
        });
        axios.get(`/storeResultIn`).then(res => {
            if (res.data.status == 200) {
                setStoreResultIn(res.data.storeResultIn);

            }
        });
        axios.get(`/actionTobeTaken`).then(res => {
            if (res.data.status == 200) {
                setActionTobeTaken(res.data.actionTobe);

            }
        });
    }, [])

    // const { name } = props.patientPropsValue;

    const [result, setResult] = useState("");
    const [action, setAction] = useState("");
    const [storeResult, setStoreResult] = useState("");
    const [storeLocation, setStoreLocation] = useState("");

    const singlePatientReport = props.singlePatientReport;

    console.log('ppppppppppppppppppppppppp', singlePatientReport);

    const [patientSendData, setPatientSendData] = useState({
        patient_lab_id: '',
        patient_id: '',
        reference_id: ''

    })


    //handleClick
    const [dynamicSrc, setDynamicSrc] = useState();
    const handleClick = (e, report, item) => {
        setDynamicSrc(report)
        // setPatient_lab_id(item.id)
        setPatientSendData({
            patient_lab_id: item.id,
            patient_id: item.patient_id,
            reference_id: item.reference_id
        })

    }
    console.log(dynamicSrc, "ddde")
    useEffect(() => {
        setTimeout(() => {
            setDynamicSrc(singlePatientReport[0].report)
        }, 50)
    }, [props.singlePatientReport])

    const handleSave = (e) => {
        e.preventDefault();
        const submitData = {
            patient_id: patientSendData.patient_id,
            store_result_in_id: storeResult,
            action_to_be_taken_id: action,
            the_result_is_id: result,
            doctor_id: patientSendData.reference_id,
            patient_lab_id: patientSendData.patient_lab_id
        }

        setResult('');
        setAction('');
        setStoreResult('');

        console.log('submitted data check', submitData)
        var checkboxes = document.querySelectorAll('input[type=radio]')
        for (var checkbox of checkboxes) {
            if (checkbox.checked) {
                checkbox.checked = false
            }
        }

        if (patientSendData.patient_lab_id === '' || patientSendData.patient_id === '') {
            toast.error('Please Select Patient and Report')
        }
        else {
            axios.post(`/save-doctor-inbox`, submitData).then(res => {
                if (res.data.status === 200) {
                    toast.success(res.data.message);

                }
            })
        }

    }
    const [searchTerm, setSearchTerm] = useState("");

    const handleReportSearch = (e) => {
        setSearchTerm(e.target.value);

    }

    return (
        <div >
            <div className="doctors-inbox-middle-content doc-inbox-main-content ms-1 custom-card">
                <div className="row">
                    <div className="col-2 doc-inbox-left-content p-1">
                        <input type="text" placeholder='Search' onChange={handleReportSearch} className='ms-1 form-control form-control-sm mb-2 mt-1' />
                        <TreeView
                            aria-label="file system navigator"
                            defaultCollapseIcon={<ViewInArRoundedIcon />}
                            defaultExpandIcon={<ViewInArRoundedIcon />}
                            defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                            // sx={{ height: "800px", flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                            // sx={{ height: "800px",overflow:'hidden', overflowY: 'auto' }}
                            className="g-doc-scroll ms-1"
                        >
                            {

                                singlePatientReport !== undefined && singlePatientReport.filter((val) => {
                                    if (searchTerm == "") {
                                        return val;
                                    } else if (val.name.toLowerCase().includes(searchTerm.toLowerCase())
                                    ) {
                                        return val;
                                    }
                                }).map((item, i) => {
                                    return (
                                        <StyledTreeItem nodeId={`${i + 1}`} label={item.name} >
                                            <StyledTreeItem nodeId={`${item.report}`} label={item.report} onClick={(e) => handleClick(e, item.report, item)} />
                                            {moment(item.date).format('LL')}

                                        </StyledTreeItem>
                                    )
                                })}

                        </TreeView>
                    </div>
                    <div className="col-8 doc-inbox-viewer ">
                        <div className="border rounded bg-white mb-1">
                            {
                                dynamicSrc?.endsWith('.jpg' || '.jpeg' || '.png') ?
                                    <div className="doc-inbox-content">
                                        <TransformWrapper >
                                            {({ zoomIn, zoomOut, doubleClick, resetTransform, ...rest }) => (
                                                <React.Fragment>
                                                    <div className="tools">
                                                        <button className='zoom-button' onClick={() => zoomIn()}><i className="fas fa-search-plus"></i></button>
                                                        <button className='zoom-button' onClick={() => zoomOut()}><i className="fas fa-search-minus"></i></button>
                                                        <button className='zoom-button' onClick={() => resetTransform()}><i className="fas fa-sync-alt"></i></button>
                                                    </div>
                                                    <TransformComponent>
                                                        <img src={`${global.img_url}/lab_modules/${dynamicSrc}`} className="img-fluid" />
                                                    </TransformComponent>
                                                </React.Fragment>
                                            )}
                                        </TransformWrapper>
                                    </div>

                                    :
                                    dynamicSrc?.endsWith('.pdf') ?
                                        <iframe width="100%" height="550px" src={`${global.img_url}/lab_modules/${dynamicSrc}`} frameborder="0"
                                            style={{ objectFit: 'cover' }}></iframe>
                                        :
                                        <iframe width="100%" height="550px" src={`dummy`} frameborder="0"
                                            style={{ objectFit: 'cover' }}></iframe>
                            }
                        </div>
                    </div>
                    <div className="col-2 doc-inbox-right-content">
                        <Accordion className='mb-2' defaultActiveKey="0">
                            <Accordion.Item eventKey="0">
                                <Accordion.Header>This result is <br /> </Accordion.Header>
                                {/* {
                                            result && <div className="accordion-value"><span>{result}</span></div>
                                        } */}
                                <Accordion.Body>
                                    <div className="form-check">
                                        {
                                            theResultIs.map((item, i) => {
                                                return (
                                                    <>
                                                        <input className="form-check-input" type="radio" value={item.id} onChange={(e) => setResult(e.target.value)} name="the_result_is" id="flexRadioDefault1" />
                                                        <label className="form-check-label" for="flexRadioDefault1">
                                                            {item.the_result_is_name}
                                                        </label>
                                                    </>

                                                )
                                            })
                                        }

                                    </div>

                                </Accordion.Body>
                            </Accordion.Item>
                        </Accordion>
                        <Accordion className='mb-2' defaultActiveKey="1">
                            <Accordion.Item eventKey="1">
                                <Accordion.Header>Action to be taken <br /> </Accordion.Header>

                                <Accordion.Body>
                                    <div className="form-check">

                                        {
                                            actionTobeTaken.map((item, i) => {
                                                return (
                                                    <>
                                                        <input className="form-check-input" type="radio" value={item.id} onChange={(e) => setAction(e.target.value)} name="action_to_be_taken" id="flexRadioDefault1" />
                                                        <label className="form-check-label" for="flexRadioDefault1">
                                                            {item.action_to_be_taken}
                                                        </label>
                                                    </>
                                                )
                                            })
                                        }
                                    </div>

                                </Accordion.Body>
                            </Accordion.Item>
                        </Accordion>
                        <Accordion className='mb-2' defaultActiveKey="2" >
                            <Accordion.Item eventKey="2">
                                <Accordion.Header>Store result in <br /> </Accordion.Header>
                                {/* {
                                            storeResult && <div className="accordion-value"><span>{storeResult}</span></div>
                                        } */}
                                <Accordion.Body>
                                    <div class="form-check">

                                        {
                                            storeResultIn.map((item, i) => {
                                                return (
                                                    <>
                                                        <input className="form-check-input" type="radio" value={item.id} onChange={(e) => setStoreResult(e.target.value)} name="store_result_in" id="flexRadioDefault1" />
                                                        <label className="form-check-label" for="flexRadioDefault1">
                                                            {item.store_result_in}
                                                        </label>
                                                    </>
                                                )
                                            })
                                        }

                                    </div>

                                </Accordion.Body>
                            </Accordion.Item>
                        </Accordion>
                        <button className='btn btn-sm btn-success mt-1' onClick={handleSave}>Save</button>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default DoctorsInboxPatientDetail;