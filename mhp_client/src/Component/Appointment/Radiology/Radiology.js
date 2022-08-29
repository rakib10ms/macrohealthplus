import React, { useEffect, useState, useRef } from 'react';
import Sidebar1 from '../../Sidebar1/Sidebar1';
import MaterialTable from 'material-table';
import { Link } from 'react-router-dom';
import { Button, OverlayTrigger, Popover } from 'react-bootstrap';
import { Box, Popper } from '@material-ui/core';
import moment from 'moment';
import TextField from '@mui/material/TextField';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DatePicker from '@mui/lab/DatePicker';
import axios from 'axios';
import { useReactToPrint } from "react-to-print";
import { useNavigate } from "react-router-dom";
import '../Radiology/Radiology.css';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import { rightToLeft } from '@syncfusion/ej2-base';
import { data } from 'jquery';
import { toast } from 'react-toastify';
import Swal from "sweetalert2";
import { Autocomplete } from '@mui/material';



const Radiology = (props) => {

    toast.configure();


    const [allRadiologyCenter, setAllRadiologyCenter] = useState([]);
    const [allTestName, setAllTestName] = useState([]);
    const [allTestType, setAllTestType] = useState([]);

    const [patient, setPatient] = useState('');
    const [allClinicalIndication, setAllClinicalIndication] = useState([]);
    const [centerDate, setCenterDate] = React.useState(null);
    const [testDate, setTestDate] = React.useState(null);
    const [radiologyCenterId, setRadiologyCenterId] = React.useState('');
    const [allTestId, setAllTestId] = React.useState('');
    const [clinicalIndicationsId, setClinicalIndicationsId] = React.useState('');
    const [submitted, setSubmitted] = useState(false);
    const [maleOrFemale, setMaleOrFemale] = useState('');


    const [checkboxValue, setCheckboxValue] = useState({
        symptoms: [],
    });

    const [additional_test_name, setAdditionalTestName] = useState('');
    const [testTypeId, setTestTypeId] = useState('');


    useEffect(() => {
        axios.get(`/radiology-test-name-by-test-type-id/${allTestId}`).then(res => {
            if (res.data.status == 200) {
                setAllTestName(res.data.all_test_names);
            }
        })
    }, [allTestId])




  
    const handleAdditionalTestNameChange = (e) => {
        setAdditionalTestName(e.target.value)
    }

    //all radiology data get
    const [allRadiology, setAllRadiology] = useState([]);
    useEffect(() => {
        axios.get(`/radiology`).then(res => {
            if (res.data.status == 200) {
                setAllRadiology(res.data.all_radiology);
            }
        })
    }, [submitted])

    const handleCheckboxChange = (e) => {
        const { symptoms } = checkboxValue;
        if (e.target.checked) {
            setCheckboxValue({
                symptoms: [...symptoms, e.target.value],

            })
        }

        else {
            setCheckboxValue({
                symptoms: symptoms.filter((item) => item !== e.target.value),
            });
        }
    };



    const handleCenterChange = (event) => {
        setRadiologyCenterId(event.target.value);
    };
    const handleTestChange = (event) => {
        setAllTestId(event.target.value);
    };
    const handleClinicalChange = (event) => {
        setClinicalIndicationsId(event.target.value);
    };

    useEffect(() => {
        axios.get(`/radiology-center`).then(res => {
            if (res.data.status === 200) {
                setAllRadiologyCenter(res.data.radiology_center);
            }
        })
        axios.get(`/radiology-test-name`).then(res => {
            if (res.data.status === 200) {
                setAllTestName(res.data.radiology_test_name);
            }
        })

        axios.get(`/clinical-indications`).then(res => {
            if (res.data.status === 200) {
                setAllClinicalIndication(res.data.clinical_indications);
            }
        })
        axios.get(`/radiology-test-type`).then(res => {
            if (res.data.status === 200) {
                setAllTestType(res.data.radiology_test_type);
            }
        })
        axios.get(`/edit-patients/${props.patient_id}`).then(res => {
            setPatient(res.data.patient);
            if (res.data.patient.patient_birth_sex.birth_sex_name.match(/Female.*/)) {
                setMaleOrFemale('female')
            }
            else {
                setMaleOrFemale('');
            }

        });



    }, [])

    const radiology = {};
    radiology.center_id = radiologyCenterId;
    radiology.test_date = testDate;
    radiology.center_date = centerDate;
    radiology.test_name_id = allTestId;
    radiology.symptom_name = checkboxValue.symptoms;
    radiology.clinical_id = clinicalIndicationsId;
    radiology.test_type_id = testTypeId;
    radiology.additional_test_name = additional_test_name;
    radiology.patient_id = props.patient_id


    const submitRadiology = (e) => {
        e.preventDefault();

        // console.log('radiology data',radiology)
        if (centerDate === null || allTestId === '' || testTypeId=== '' ||  radiologyCenterId === '') {
            toast.error("Please Provide all valid input")
        }
        else {
            axios.post(`/save-radiology`, radiology).then(res => {
                if (res.data.status == 200) {
                    toast.success("Radiology added sucessfully");
                    setRadiologyCenterId();
                    setTestDate(null);
                    setCenterDate(null);
                    setAllTestId('');
                    setClinicalIndicationsId('');
                    setTestTypeId('');
                    setAdditionalTestName('');
                    setCheckboxValue({
                        symptoms: []
                    })
                    const list = document.querySelectorAll('input[type=checkbox]');
                    for (let checkbox of list) {
                        checkbox.checked = false;
                    }
                    setSubmitted(!submitted);

                }
                else if (res.data.status == 400) {

                }

            })
        }

    }


    const handleDelete = (e, check_id) => {
        e.preventDefault();
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
                axios.delete(`/delete-radiology/${check_id}`).then(res => {
                    if (res.data.status === 200) {
                        thisClicked.closest("tr").remove();
                        //   swal("Success", res.data.message, "success");
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

    return (
        <>
            <div className='row my-3 d-flex'>
                <div className='col-5 '>
                    <div className="card-body shadow p-3 bg-body rounded">
                        <div className='left-top col-12 p-3 shadow p-3 mb-3 bg-body rounded'>
                            <div className='row'>
                                <div className="col-5">
                                    <div className="form-group mt-2 fw-bold">
                                        Date:
                                    </div>
                                    <div className="form-group mt-5  fw-bold">
                                        Radiology Center:
                                    </div>

                                    <div className="form-group mt-5 fw-bold">
                                        Test type:
                                    </div>

                                </div>
                                <div className="col-7">
                                    <div class="form-group ">
                                        <LocalizationProvider dateAdapter={AdapterDateFns} >
                                            <DatePicker
                                                label="Date"
                                                value={centerDate}
                                                onChange={(newValue) => {
                                                    setCenterDate(newValue);
                                                }}
                                                renderInput={(params) => <TextField {...params} size="small" />}
                                            />
                                        </LocalizationProvider>
                                    </div>

                                    <FormControl fullWidth size="small">
                                        <InputLabel id="demo-simple-select-label">Center Name</InputLabel>
                                        <Select
                                            labelId="demo-simple-select-label"
                                            id="demo-simple-select"
                                            value={radiologyCenterId}
                                            label="Center Name"
                                            onChange={handleCenterChange}
                                        >


                                            {allRadiologyCenter.map((val, i) => {
                                                return <MenuItem key={i} value={val.id}>{val.radiology_center_name}</MenuItem>
                                            })

                                            }

                                        </Select>
                                    </FormControl>




                                    <FormControl fullWidth size="small" className='mt-5'>
                                        <InputLabel id="demo-simple-select-label">Test Type</InputLabel>
                                        <Select
                                            labelId="demo-simple-select-label"
                                            id="demo-simple-select"
                                            value={allTestId}
                                            label="Test Type"
                                            onChange={handleTestChange}
                                        >

                                            {allTestType.map((val, i) => {
                                                return <MenuItem key={i} value={val.id}>{val.radiology_test_type}</MenuItem>
                                            })

                                            }
                                        </Select>
                                    </FormControl>

                                </div>
                            </div>
                        </div>

                        <div className='left-middle col-12 shadow px-3 py-2 bg-body rounded'>
                            <div className='row'>
                                <div className="col-5">
                                    <div className="form-group mt-5  fw-bold">
                                        Test Name:
                                    </div>
                                    {maleOrFemale === "female" && <div className="form-group mt-5 fw-bold">
                                        LMP Date:
                                    </div>}


                                </div>
                                <div className="col-7">


                                    <div className="form-group mt-5 ">

                                        <Autocomplete
                                            style={{}}
                                            disablePortal
                                            id="combo-box-demo"
                                            options={allTestName}
                                            getOptionLabel={(option) => option.radiology_test_name}
                                            onChange={(e, newValue) => {
                                                if (newValue !== null) {
                                                    setTestTypeId(newValue.id)
                                                }
                                            }}
                                            size="small"

                                            renderInput={(params) => <TextField {...params} label="Test Name" />}
                                        />

                                    </div>
                                    {patient.patient_birth_sex_id !== null && maleOrFemale === "female" && <div class="form-group">
                                        <LocalizationProvider dateAdapter={AdapterDateFns}>
                                            <DatePicker
                                                label="Date"
                                                value={testDate}
                                                onChange={(newValue) => {
                                                    setTestDate(newValue);
                                                }}
                                                renderInput={(params) => <TextField {...params} size="small" />}
                                            />
                                        </LocalizationProvider>
                                    </div>
                                    }

                                    {patient.patient_birth_sex_id !== null

                                        && maleOrFemale === "female" &&

                                        <div className='px-3 py-4'>
                                            <div className='row'>
                                                <div class="form-check col-6">
                                                    <input class="form-check-input checkbox" type="checkbox" value="right" onChange={handleCheckboxChange} id="right" />
                                                    <b className='mx-2' for="right"><label for="right" >Right</label></b>
                                                </div>
                                                <div class="form-check col-6">
                                                    <input class="form-check-input checkbox" type="checkbox" value="left" onChange={handleCheckboxChange} id="left" />
                                                    <b className='mx-2' >
                                                        <label for="left">Left</label></b>
                                                </div>
                                                <div class="form-check col-6 mt-2">
                                                    <input class="form-check-input checkbox" type="checkbox" value="pregnent" onChange={handleCheckboxChange} id="pregnent" />
                                                    <b className='mx-2' >
                                                        <label for="pregnent">Pregnent</label></b>

                                                </div>
                                                <div class="form-check col-6 mt-2">
                                                    <input class="form-check-input checkbox" type="checkbox" value="lmp" onChange={handleCheckboxChange} id="lmp" />
                                                    <b className='mx-2' for="lmp">
                                                        <label for="lmp">LMP</label> </b>
                                                </div>
                                            </div>
                                        </div>
                                    }

                                </div>
                            </div>
                        </div>

                        <div className='left-down bg-body px-3 py-2 rounded shadow mt-3'>
                            <div className='row'>
                                <div className="col-5">
                                    <div className="form-group mt-2 px-2 fw-bold">
                                        Clinical Indigetions:
                                    </div>

                                    <div className="form-group mt-5 px-2 fw-bold">
                                        {/* Additional Text Box: */}
                                        Notes :
                                    </div>

                                </div>
                                <div className="col-7">


                                    <FormControl fullWidth size="small">
                                        <InputLabel id="demo-simple-select-label">Clinical Indications</InputLabel>
                                        <Select
                                            labelId="demo-simple-select-label"
                                            id="demo-simple-select"
                                            value={clinicalIndicationsId}
                                            label="Clinical Indications"
                                            onChange={handleClinicalChange}
                                        >
                                            {allClinicalIndication.map((val, i) => {
                                                return <MenuItem key={i} value={val.id}>{val.clinical_indications_name}</MenuItem>
                                            })

                                            }
                                        </Select>
                                    </FormControl>


                                    <div className="form-group mt-3">
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="additional_test_name" value={additional_test_name} onChange={handleAdditionalTestNameChange}></textarea>
                                    </div>

                                    <button className="buttonStyle" onClick={submitRadiology}>Add To List</button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div className='col-7'>
                    <div class="row shadow-sm p-3 mb-5 bg-body rounded ">
                        <div className=''>
                            <h5> List </h5>
                        </div>
                        <hr></hr>
                        <div class="table-responsive">
                            <table class="table table-bordered ">
                                <thead className='table-head'>
                                    <tr className='fw-bold'>
                                        <th scope="col" className='fw-bold'>#Sl</th>
                                        <th scope="col" className='fw-bold'>Date</th>
                                        <th scope="col" className='fw-bold'>Radiology Center</th>
                                        <th scope="col" className='fw-bold'>Date</th>
                                        <th scope="col" className='fw-bold'>Test Name</th>
                                        <th scope="col" className='fw-bold'>Symptom Name</th>
                                        <th scope="col" className='fw-bold'>Clinical Indications</th>
                                        <th scope="col" className='fw-bold'>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {
                                        allRadiology.map((item, i) => {

                                            return (<tr>
                                                <th scope="row">{i + 1}</th>
                                                <td>
                                                    {moment(item.center_date).format("dddd, MMMM Do YYYY")}

                                                </td>
                                                <td>{item.radiology_center_name}</td>
                                                <td> {moment(item.test_date).format("dddd, MMMM Do YYYY")}</td>
                                                <td>{item.radiology_test_name}</td>
                                                <td>{item.symptom_name}</td>
                                                <td>{item.clinical_indications_name}</td>
                                                <td> <i className="fa fa-trash" aria-hidden="true" style={{ color: 'red' }} onClick={(e) => { handleDelete(e, item.id) }
                                                }></i></td>


                                            </tr>);
                                        })}

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div className="d-flex justify-content-end">
                <div className="rx-one-button-group me-4">
                    <button className="btn me-3 flot-end">Save</button>
                    <button className="btn me-3 flot-end">Print</button>
                    <button className="btn me-3 flot-end">Email To Patient</button>
                    <button className="btn me-3 flot-end">Email To Patient & Center</button>
                    <button onClick={props.closeModal} className="btn me-3 flot-end">Cancel</button>
                </div>
            </div>
        </>
    );
};

export default Radiology;