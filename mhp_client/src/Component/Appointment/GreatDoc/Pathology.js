import React, { useState, useEffect, useRef } from 'react';
import moment from 'moment';
import TextField from '@mui/material/TextField';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DatePicker from '@mui/lab/DatePicker';
import axios from 'axios';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import { toast } from 'react-toastify';
import Swal from "sweetalert2";
import { Checkbox, OutlinedInput } from '@mui/material';
import ListItemText from '@mui/material/ListItemText';
import Radio from '@mui/material/Radio';
import RadioGroup from '@mui/material/RadioGroup';
import FormControlLabel from '@mui/material/FormControlLabel';
import { useReactToPrint } from "react-to-print";
import './Pathology.css';
import CheckBoxOutlineBlankIcon from '@material-ui/icons/CheckBoxOutlineBlank';


// favorite test
const ITEM_HEIGHT = 35;
const ITEM_PADDING_TOP = 3;
const MenuProps = {
    PaperProps: {
        style: {
            maxHeight: ITEM_HEIGHT * 4.5 + ITEM_PADDING_TOP,
            width: 300,
        },
    },
};


const Pathology = (props) => {
    toast.configure();

    const [requestDate, setRequestDate] = useState(null);
    const [lmpDate, setLmpDate] = useState(null);
    const [edcDate, setEdcDate] = useState(null);

    const [laboratory, setLaboratory] = useState('');
    const [clinicallyDetailsFasting, setClinicallyDetailsFasting] = useState('');
    const [clinicallyDetail, setClinicallyDetails] = useState('');
    const [extraDetail, setExtraDetail] = useState('');
    const [furtherClinicalDetail, setFurtherClinicalDetail] = useState('');
    const [billing, setBilling] = useState('');
    const [render, setRender] = useState('');

    const [submitted, setSubmitted] = useState(false);

    const [allClinicalDetails, setAllClinicalDetails] = useState([]);
    const [allFavTest, setAllFavTest] = useState([]);
    const [allTestName, setAllTestName] = useState([]);
    const [allLabratoryName, setAllLabratoryName] = useState([]);

    const [allPathologyData, setAllPathologyData] = useState([]);


    //use effect all 


    useEffect(() => {
        axios.get(`/clinical-details`).then(res => {
            if (res.data.status === 200) {
                setAllClinicalDetails(res.data.clinical_details);
            }
        })
        axios.get(`/pathalogy-favourite-test`).then(res => {
            if (res.data.status === 200) {
                setAllFavTest(res.data.fav_test);
            }
        })

        axios.get(`/get-patalogy-test-name`).then(res => {
            if (res.data.status === 200) {
                setAllTestName(res.data.all_pathalogy);
            }
        })
        axios.get(`/get-labratory-name`).then(res => {
            if (res.data.status === 200) {
                setAllLabratoryName(res.data.all_labratory);
            }
        })
    }, [])


    useEffect(() => {
        if (props.patient_id) {
            axios.get(`/great-doc-pathology/${props.patient_id}`).then(res => {
                if (res.data.status === 200) {
                    setAllPathologyData(res.data.pathology);
                }
            })
        }

    }, [render])


    const handleBillingChange = (event) => {
        setBilling(event.target.value);
    };
    const handleExtraDetailChange = (event) => {
        setExtraDetail(event.target.value);
    };
    const handleFurtherClinicalDetailChange = (event) => {
        setFurtherClinicalDetail(event.target.value);
    };
    const handleLaboratoryChange = (event) => {
        setLaboratory(event.target.value);
    };
    const handleClinicalDetailsChange = (event) => {
        setClinicallyDetailsFasting(event.target.value);
    };
    const handleClinicalChange = (event) => {
        setClinicallyDetails(event.target.value);
    };


    const submitPathology = (event) => {
        event.preventDefault();
        const pathologyData = {
            request_date: requestDate,
            laboratory_id: laboratory,
            favorite_test_name: personName,
            test_name: testtName,
            clinical_details_fasting: clinicallyDetailsFasting,
            lmp_date: lmpDate,
            edc_date: edcDate,
            pregnant: checked,
            billing: billing,
            clinical_details_id: clinicallyDetail,
            extra_details: extraDetail,
            further_clinical_details: furtherClinicalDetail,
            patient_id: props.patient_id

        }

        if (requestDate === null || lmpDate === null || edcDate === null || laboratory == '' || allTestName == []) {
            toast.error("Please Provide valid input")
        }
        else {
            axios.post(`/save-great-doc-pathology`, pathologyData).then(res => {
                if (res.data.status === 200) {
                    setRender(res.data);
                    toast.success('Pathology Added Successfully');
                    setChecked(false);
                    setPersonName([]);
                    setTesttName([]);
                    setBilling('');
                    setFurtherClinicalDetail('');
                    setExtraDetail('');
                    setClinicallyDetails(' ');
                    setClinicallyDetailsFasting(' ');
                    setLaboratory('');
                    setLmpDate(null);
                    setRequestDate(null);
                    setEdcDate(null);
                }
            });
        }

        var checkboxes = document.getElementsByClassName("jun");
        for (var checkbox of checkboxes) {
            if (checkbox.checked) {
                checkbox.checked = false
            }
        }
    }


    // favorite test
    const [checked, setChecked] = useState(false);

    const [personName, setPersonName] = useState([]);

    const handleChange = (event) => {
        const {
            target: { value },
        } = event;
        setPersonName(
            // On autofill we get a stringified value.
            typeof value === 'string' ? value.split(',') : value,
        );
    };

    const [testtName, setTesttName] = useState([]);

    const handleTest2Change = (event) => {
        const {
            target: { value },
        } = event;
        setTesttName(
            // On autofill we get a stringified value.
            typeof value === 'string' ? value.split(',') : value,
        );
    };


    // clinical details

    const handlePregnantChange = (event) => {
        // setChecked(event.target.checked);
        if (event.target.checked) {
            setChecked(true)
        }
        else {
            setChecked(false)

        }
    };

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
                axios.delete(`/delete-great-doc-pathology/${check_id}`).then(res => {
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

    const componentRef = useRef();
    const handlePrint = useReactToPrint({
        content: () => componentRef.current,
    });
    const EmailToPatient = () => {

        axios.post(`/email-send-great-doc-pathology/${props.patient_id}`).then(res => {
            if (res.data.status === 200) {
                toast.success('yes paisi')
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
                                        Request Date:
                                    </div>
                                </div>
                                <div className="col-7">
                                    <div class="form-group ">
                                        <LocalizationProvider dateAdapter={AdapterDateFns} >
                                            <DatePicker
                                                label="Date"
                                                value={requestDate}
                                                onChange={(newValue) => {
                                                    setRequestDate(newValue);
                                                }}
                                                renderInput={(params) => <TextField {...params} size="small" />}
                                            />
                                        </LocalizationProvider>
                                    </div>
                                </div>
                                <div className='d-flex justify-content-between fw-bold'>
                                    <p className='mt-2'>Laboratory</p>
                                    <select className="form-select form-select-sm"
                                        aria-label=".form-select-sm example"
                                        value={laboratory}
                                        onChange={handleLaboratoryChange}
                                        style={{ width: '58%', height: '38px' }}>
                                        <option selected>Select Labratory</option>
                                        {allLabratoryName.map((item, i) => {
                                            return (
                                                <option key={i} value={item.id}>{item.labratory_name}</option>

                                            );
                                        })}
                                    </select>
                                </div>
                                <div className="form-group fw-bold mt-2">
                                    Favorite tests:
                                    <FormControl sx={{
                                        m: 1, width:
                                            360
                                    }}>
                                        <InputLabel id="demo-multiple-checkbox-label" ></InputLabel>
                                        <Select
                                            labelId="demo-multiple-checkbox-label"
                                            id="demo-multiple-checkbox"
                                            multiple
                                            value={personName}
                                            onChange={handleChange}
                                            input={<OutlinedInput label="Favorite tests" />}
                                            renderValue={(selected) => selected.join(', ')}
                                            MenuProps={MenuProps}
                                            style={{ height: '33px' }}>
                                            {allFavTest.map((name) => (
                                                <MenuItem key={name} value={name.favourite_test_name}>
                                                    <Checkbox checked={personName.indexOf(name.favourite_test_name) > -1} />
                                                    <ListItemText primary={name.favourite_test_name} />
                                                </MenuItem>
                                            ))}
                                        </Select>
                                    </FormControl>
                                </div>
                                <div className="form-group fw-bold" style={{ marginTop: '-20px' }}>
                                    Test Name:
                                    <FormControl sx={{
                                        m: 1, width:
                                            360
                                    }}>
                                        <InputLabel id="demo-multiple-checkbox-label"></InputLabel>
                                        <Select
                                            labelId="demo-multiple-checkbox-label"
                                            id="demo-multiple-checkbox"
                                            multiple
                                            value={testtName}
                                            onChange={handleTest2Change}
                                            input={<OutlinedInput label="Test Name" />}
                                            renderValue={(selected) => selected.join(', ')}
                                            MenuProps={MenuProps}
                                            style={{ height: '33px' }} >
                                            {allTestName.map((name) => (
                                                <MenuItem key={name.test_name} value={name.test_name}>
                                                    <Checkbox checked={testtName.indexOf(name.test_name) > -1} />
                                                    <ListItemText primary={name.test_name} />
                                                </MenuItem>
                                            ))}
                                        </Select>
                                    </FormControl>
                                </div>
                            </div>
                        </div>
                        <div className='left-down bg-body px-3 py-2 rounded shadow-lg bg-white mt-3'>
                            <div>
                                <b>Clinical Details:</b>
                            </div>
                            <div className='mt-2'>
                                <input type="radio" id="Fasting" name="fav_language5" value="Fasting" onChange={handleClinicalDetailsChange} className='ms-2' />
                                <label for="Fasting" className='ms-1'>Fasting</label>

                                <input type="radio" id="Non-Fasting" name="fav_language5" value="Non-Fasting" onChange={handleClinicalDetailsChange} className='ms-4' />
                                <label for="Non-Fasting" className='ms-1'>Non-Fasting</label>

                            </div>
                            <div className='d-flex justify-content-between'>
                                <label className='mt-2 ms-3'>LMP:</label>
                                <div class="form-group w-50">
                                    <LocalizationProvider dateAdapter={AdapterDateFns} >
                                        <DatePicker
                                            label="Date"
                                            value={lmpDate}
                                            onChange={(newValue) => {
                                                setLmpDate(newValue);
                                            }}
                                            renderInput={(params) => <TextField {...params} size="small" />}
                                        />
                                    </LocalizationProvider>
                                </div>
                            </div>
                            <div className='d-flex justify-content-between'>
                                <label className='mt-2 ms-3'>EDC:</label>
                                <div class="form-group w-50">
                                    <LocalizationProvider dateAdapter={AdapterDateFns} >
                                        <DatePicker
                                            label="Date"
                                            value={edcDate}
                                            onChange={(newValue) => {
                                                setEdcDate(newValue);
                                            }}
                                            renderInput={(params) => <TextField {...params} size="small" />}
                                        />
                                    </LocalizationProvider>
                                </div>
                            </div>
                            <div>
                                <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike" onChange={handlePregnantChange} className='ms-2' />
                                <label className='ms-2'>Pregnant</label>
                            </div>
                            <div>
                                <p className='ms-2 mt-2'>Billing:</p>
                                <div className='billing_radio_box ms-2'>
                                    <input type="radio" id="Private" name="fav_language6" value="Private" onChange={handleBillingChange} className='ms-2 mt-2' />
                                    <label for="Private" className='ms-1 mb-2'>Private</label>

                                    <input type="radio" id="Concession" name="fav_language6" value="concession" onChange={handleBillingChange} className='ms-5' />
                                    <label for="concession" className='ms-2'>Concession</label>

                                    <input type="radio" id="Directbill" name="fav_language6" value="directbill" onChange={handleBillingChange} className='ms-5' />
                                    <label for="directbill" className='ms-1'>Direct Bill</label>
                                </div>
                            </div>
                        </div>
                        <div className='left-down bg-body px-3 py-2 rounded shadow mt-3 pb-5'>
                            <div className='d-flex justify-content-between fw-bold'>
                                <p className='mt-2'>Clinical Details</p>
                                <select className="form-select form-select-sm" aria-label=".form-select-sm example" value={clinicallyDetail} onChange={handleClinicalChange} style={{ width: '58%', height: '38px' }}>
                                    <option selected>Select Clinical Details</option>
                                    {allClinicalDetails.map((item, i) => {
                                        return (
                                            <option key={i} value={item.id}>{item.clinical_details_name}</option>

                                        );
                                    })}
                                </select>
                            </div>
                            <div class="form-group fw-bold">
                                <label for="exampleFormControlTextarea1">Extra Detail about change</label>
                                <textarea onChange={handleExtraDetailChange} className="form-control" id="exampleFormControlTextarea1" rows="3" value={extraDetail}></textarea>
                            </div>
                            <div className="form-group fw-bold">
                                <label for="exampleFormControlTextarea1">Further Clinical Detail</label>
                                <textarea onChange={handleFurtherClinicalDetailChange} className="form-control" id="exampleFormControlTextarea1" rows="3" value={furtherClinicalDetail}></textarea>
                            </div>
                            <button className="buttonStyle" onClick={submitPathology}>Add To List</button>
                        </div>
                    </div>
                </div>

                <div className='col-7'>
                    <div class="row shadow-sm p-3 mb-5 bg-body rounded ">
                        <div className=''>
                            <h5>List</h5>
                        </div>
                        <hr></hr>
                        <div class="table-responsive" ref={componentRef}>
                            <table class="table table-bordered ">
                                <thead className='table-head'>
                                    <tr className='fw-bold'>
                                        <th scope="col" className='fw-bold'>#Sl</th>
                                        <th scope="col" className='fw-bold'>Request Date</th>
                                        <th scope="col" className='fw-bold'>Laboratory</th>
                                        <th scope="col" className='fw-bold'>Favorite Test</th>
                                        <th scope="col" className='fw-bold'>Test Name</th>
                                        <th scope="col" className='fw-bold'>Clinical Details Mark</th>
                                        <th scope="col" className='fw-bold'>LMP date</th>
                                        <th scope="col" className='fw-bold'>EDC Date</th>
                                        <th scope="col" className='fw-bold'>Pregnant Action</th>
                                        <th scope="col" className='fw-bold'>Billing</th>
                                        <th scope="col" className='fw-bold'>Clinical Details</th>
                                        <th scope="col" className='fw-bold'>Extra Details</th>
                                        <th scope="col" className='fw-bold'>Further Clinical Details</th>
                                        <th scope="col" className='fw-bold'>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    {allPathologyData.map((item, i) => {
                                        return (
                                            <tr key={i + 1}>
                                                <th scope="row">{i + 1}</th>
                                                <td>{moment(item.request_date).format('LL')}
                                                </td>
                                                <td>{item.labratory_name}</td>
                                                <td>{item.favorite_test_name}</td>
                                                <td>{item.test_name}</td>
                                                <td>{item.clinical_details_fasting}</td>
                                                <td>{moment(item.lmp_date).format('LL')}</td>
                                                <td>{moment(item.edc_date).format('LL')}</td>
                                                <td>{item.billing}</td>
                                                <td>{item.clinical_details_name}</td>
                                                <td>{item.extra_details}</td>
                                                <td>{item.further_clinical_details}</td>
                                                <td>{item.extra_details}</td>
                                                <td> <i className="fa fa-trash" aria-hidden="true" style={{ color: 'red' }} onClick={(e) => { handleDelete(e, item.id) }
                                                }></i></td>
                                            </tr>
                                        )
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
                    <button className="btn me-3 flot-end">Email to laboratory</button>
                    <button className="btn me-3 flot-end" onClick={EmailToPatient}>Email to lab and Patient</button>
                    <button className="btn me-3 flot-end" onClick={handlePrint}>Print</button>
                    <button onClick={props.closeModal} className="btn me-3 flot-end">Cancel</button>
                </div>
            </div>
        </>
    );
};

export default Pathology;