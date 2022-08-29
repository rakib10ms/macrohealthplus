import React, { useEffect, useRef, useState } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";
import moment from 'moment';
import axios from "axios";
import Stack from '@mui/material/Stack';
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import FormControl from '@mui/material/FormControl';
import TextField from '@mui/material/TextField';
import { ToastContainer, toast } from 'react-toastify';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DatePicker from '@mui/lab/DatePicker';

function PatientLabReport(props) {
    console.log('pro',props)
    const {id}=useParams();
    console.log('id check ',id)
    const [allDepartment, setAllDepartment] = useState([]);
    const [allUsualProvider, setAllUsualProvider] = useState([]);
    const [allDoctors, setAllDoctors] = useState([]);
    const [allTestType, setAllTestType] = useState([]);
    const [departmentId, setDepartmentId] = React.useState(null);
    const [testType, setTestType] = useState('');
    // const [testName, setTestName] = useState('');
    const [testName, setTestName] = useState([]);
    const [date, setDate] = React.useState(null);

    useEffect(() => {
        axios.get(`/usual-provider`).then(res => {
            if (res.data.status == 200) {
                setAllUsualProvider(res.data.usual_provider);
            }
        })
        axios.get(`/department`).then(res => {
            if (res.data.status == 200) {
                setAllDepartment(res.data.department);
            }
        })
        axios.get(`/lab-test-type`).then(res => {
            if (res.data.status == 200) {
                setAllTestType(res.data.testType);
            }
        })

        axios.get(`/doctors`).then(res => {
            console.log(res.data);
            if (res.data.status == 200) {
                setAllDoctors(res.data.doctors);
                // setDoctorName(res.data.doctors.dr_given_name);
            }
        })

    }, [])
    const [testTypeId, setTestTypeId] = useState('');
    const [testNameId, setTestNameId] = useState('');

    useEffect(() => {
        axios.get(`/all-test-name-by-test-type-id/${testTypeId}`).then(res => {
            if (res.data.status == 200) {
                setTestName(res.data.test_names);
            }
        });

    }, [testTypeId])
    const [data, setData] = useState({
        department_id: '',
        usual_provider_id: '',
        reference_id: '',
        report: ''

    })
    const [report,setReport]=useState('');
    const handleChange = (e) => {
        setData({
            ...data, [e.target.name]: e.target.value
        })
    }
  
    const handleTestNameChange = (e) => {
        setTestNameId(e.target.value);
    }
    const handleTestTypeChange = (e) => {
        setTestTypeId(e.target.value);
    }
    const formData = new FormData();

    formData.append('department_id', data.department_id);
    formData.append('usual_provider_id', data.usual_provider_id);
    formData.append('reference_id', data.reference_id);
    formData.append('date', date);
    formData.append('test_type_id', testTypeId);
    formData.append('test_name_id', testNameId);
    formData.append('report', report);
    formData.append('patient_id', id);

    const handleSave = (e) => {
        e.preventDefault();
        // const submitData={
        // department_id: data.department_id,
        // usual_provider_id: data.usual_provider_id,
        // reference_id: data.reference_id,
        // report: data.report,
        // test_type_id:testTypeId,
        // test_name_id:testNameId,
        // date:date 
        // }
        // console.log('state checking', submitData)
        if (date == null || testTypeId == '' || report == '' || data.reference_id== '') {
            toast.error("Please fill up all field");
        }
        else {
            axios.post(`/save-lab-modules`, formData).then(res => {
                if (res.data.status == 200) {
                    toast.success("Your Lab Data added sucessfully");
                    setTestTypeId('');
                    setTestNameId('');
                    setData({
                        department_id: '',
                        usual_provider_id: '',
                        reference_id: '',
                
                    })
                    setDate(null);
                    setReport('')

                }
            })
          
        }
    }


    return (
        <div className="custom-card pb-1">
            <div className="card-body">
                <div className="row">
                    <div className="col-6">
                        <div className="col-md-12 p-1 px-3">
                            <label htmlFor="inputEmail4"
                                className="">Department <span style={{ color: "red" }}>*</span></label>
                            <select id="inputState" name="department_id" onChange={handleChange} value={data.department_id}
                                className="form-select  col-form-label-sm font-size-patient">
                                <option selected>Select</option>
                                {
                                    allDepartment.map((item, i) => {
                                        return (
                                            <option key={i} value={item.id}>{item.departments_name}</option>

                                        )
                                    })
                                }

                            </select>
                        </div>

                        <div className="col-md-12 p-1 px-3">
                            <label htmlFor="inputEmail4"
                                className="">Usual Provider</label>
                            <select id="inputState" name="usual_provider_id" onChange={handleChange} value={data.usual_provider_id}
                                className="form-select  col-form-label-sm font-size-patient">
                                <option selected>Select</option>

                                {
                                    allUsualProvider.map((item, i) => {
                                        return (
                                            <option key={i} value={item.id}>{item.usual_provider_name}</option>

                                        )
                                    })
                                }

                            </select>
                        </div>

                        <div className="col-md-12 p-1 px-3">
                            <label htmlFor="inputEmail4"
                                className="">Referenced By<span style={{ color: "red" }}>*</span></label>
                            <select id="inputState" name="reference_id" onChange={handleChange} value={data.reference_id}
                                className="form-select  col-form-label-sm font-size-patient">
                                <option selected>Select</option>

                                {
                                    allDoctors.map((item, i) => {
                                        return (
                                            <option key={i} value={item.id}>{item.dr_given_name}</option>

                                        )
                                    })
                                }

                            </select>

                        </div>
                        <div className="col-md-12 p-1 px-3">
                            <label htmlFor="inputPassword4"
                                className="">Date</label>

                            <Box
                            >
                                <FormControl fullWidth className="datedropdown"
                                >
                                    <LocalizationProvider dateAdapter={AdapterDateFns} >
                                        <DatePicker
                                            label="Date"
                                            value={date}
                                            onChange={(newValue) => {
                                                setDate(newValue);
                                            }}
                                            renderInput={(params) => <TextField size="small" {...params} />}

                                        />
                                    </LocalizationProvider>
                                </FormControl>
                            </Box>
                        </div>

                    </div>
                    <div className="col-6">
                        <div className="col-md-12 p-1 px-3">
                            <label htmlFor="inputEmail4"
                                className="">Test Type</label>
                            <select id="inputState" name="test_type_id" value={testTypeId} onChange={handleTestTypeChange}
                                className="form-select  col-form-label-sm font-size-patient">
                                <option selected>Select</option>
                                {
                                    allTestType.map((item, i) => {
                                        return (
                                            <option key={i} value={item.id}>{item.name}</option>

                                        )
                                    })
                                }

                            </select>
                        </div>
                        <div className="col-md-12 p-1 px-3">
                            <label htmlFor="inputEmail4"
                                className="">Test Name</label>
                            <select id="inputState" name="test_name_id" value={testNameId} onChange={handleTestNameChange}
                                className="form-select  col-form-label-sm font-size-patient">
                                <option selected>Select</option>
                                {testName.map((item, i) => {
                                    return (
                                        <option key={i} value={item.id}>{item.test_name}</option>
                                    )
                                })}

                            </select>
                        </div>
                        {/* <div className="col-md-12 p-1 px-3">
                        <label htmlFor="inputEmail4"
                            className="">NID/Smart
                            ID</label>
                        <input name="patient_nid" type="text" onChange="" value="" className="form-control form-control-sm "
                            id="inputEmail4" />
                    </div> */}


                        <div className="col-md-12 p-1 px-3">
                            <label htmlFor="inputEmail4"
                                className="">Report</label>

                            <input name="report" type="file" onChange={(e) => { setReport(e.target.files[0]) }} className="form-control form-control-sm"
                                id="" />


                        </div>

                    </div>
                    <div className="mt-2">
                        {/* <button onClick="" className="btn btn-success btn-sm  float-end mt-2"><i
                        className="far fa-hand-point-right"></i> Next
                    </button> */}
                        <button onClick={handleSave} className="btn btn-success btn-sm  float-end mt-2 mr-2"><i
                            className="fas fa-save"></i> Save
                        </button>
                    </div>
                </div>

            </div>
        </div>
    )
}

export default PatientLabReport;