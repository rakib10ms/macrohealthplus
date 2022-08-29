
import React, { useEffect, useState } from "react";
import Box from '@mui/material/Box';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import '../DoctorsChamber/DoctorChamber.css';
import Modal from 'react-modal';
import axios from "axios";
import TextField from '@mui/material/TextField';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DatePicker from '@mui/lab/DatePicker';
import TimePicker from '@mui/lab/TimePicker';
import moment from 'moment';
import { toast } from 'react-toastify';


import DateTimePicker from '@mui/lab/DateTimePicker';

function AddDoctorsChamber() {

    const customStyles = {
        content: {
            top: '30%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "47%",
            height: "460px",
            background: "#ffffff",
        },
        overlay: { zIndex: 1000 }

    };

    useEffect(() => {
        Modal.setAppElement('body');
    }, []);

    const [modalIsOpen, setIsOpen] = React.useState(false);
    function Btn(e) {
        e.preventDefault();
        setIsOpen(true);
        setShowTable(true);
    }


    function closeModal() {
        setIsOpen(false);

    }

    const [chamberId, setChamberId] = React.useState('');
    const [month, setMonth] = React.useState('');
    const [day, setDay] = React.useState('');
    const [slotFrom, setSlotFrom] = React.useState(null);
    const [slotTo, setSlotTo] = React.useState(null);
    const [year, setYears] = React.useState(new Date());
    const [addToListStatus, setAddToListStatus] = useState(false);

    const handleChange = (event) => {
        setChamberId(event.target.value);

    };

    const handleMonthChange = (event) => {
        setMonth(event.target.value);
    };
    const handleDayChange = (event) => {
        setDay(event.target.value);
    };
    const [doctorId, setDoctorId] = React.useState('');
    const handleDoctorChange = (event) => {
        setDoctorId(event.target.value);

    }



    //all usual provider chamber
    const [allChamber, setAllChamber] = useState([]);
    const [allDoctors, setAllDoctors] = useState([]);

    const [showTable, setShowTable] = useState(false);



    useEffect(() => {
        axios.get(`/usual-provider`).then(res => {
            if (res.data.status == 200) {
                setAllChamber(res.data.usual_provider);
            }
        })
        axios.get(`/doctors`).then(res => {
            console.log(res.data);
            if (res.data.status == 200) {
                setAllDoctors(res.data.doctors);
                setDoctorName(res.data.doctors.dr_given_name);
            }
        })

    }, [])

    const [checkBoxValue, setCheckBoxValue] = useState('');
    const handleCheckBox = (e) => {
        if (e.target.checked) {
            setCheckBoxValue(1);
        }
        else {
            setCheckBoxValue(0);

        }
    }

    const [storeDocTimeList, setStoreDocTimeList] = useState([]);

    console.log('storeDocTimeList check', storeDocTimeList)

    const [doctorName, setDoctorName] = useState(''); //doctor name for one state
    const [docName, setDocName] = useState('');


    const [chamberName, setChamberName] = useState('');
    console.log('chamberName', chamberName);

    useEffect(() => {
        const chamberIdCheck = chamberId;
        console.log('chmaberIdCheck', chamberIdCheck);
        axios.get(`/get-chamber-name/${chamberIdCheck}`).then(res => {
            if (res.data.status == 200) {
                setChamberName(res.data.chamber_name);
            }
        });
        axios.get(`/get-doctor-name/${doctorId}`).then(res => {
            if (res.data.status == 200) {
                setDocName(res.data.doctor_name);
            }
        });

    }, [chamberName, chamberId, doctorId])




    const [scheduleType, setScheduleType] = useState('');
    const handleOptionChange = (e) => {
        setScheduleType(e.target.value);

    }
    const doctorTime = {
        doctor_id: doctorId,
        chamber_id: chamberId,
        month: month,
        all_month: checkBoxValue,
        day: day,
        year: year,
        slot_from: slotFrom,
        slot_to: slotTo,
        type: scheduleType,
        chamber_name: chamberName,
        doctor_name: docName,

    }
    const addToList = (e) => {
        e.preventDefault();
        setAddToListStatus(!addToListStatus);
        setStoreDocTimeList([...storeDocTimeList, doctorTime]);
        setDoctorId('');
        setChamberId('');
        setMonth('');
        setCheckBoxValue('');
        setSlotFrom('');
        setSlotTo('');
        setDay('');
        closeModal();
        document.getElementById("checkNull").checked = false;
    }

    const deleteList = (e, key) => {
        const filtered = storeDocTimeList.filter((item, index) => {
            return index !== key;
        })
        setStoreDocTimeList(filtered);
    }

    //submit doctor times

    const submitDoctorTimes = (e) => {
        e.preventDefault();
        if (storeDocTimeList.length == 0) {
            toast.error("No data given");
        }
        else {
            storeDocTimeList.map((item) => {
                const alldDocTimesData = {};
                alldDocTimesData.doctor_id = item.doctor_id;
                alldDocTimesData.chamber_id = item.chamber_id;
                alldDocTimesData.month = item.month;
                alldDocTimesData.day = item.day;
                alldDocTimesData.year = item.year;
                alldDocTimesData.all_month = item.all_month;
                alldDocTimesData.slot_from = item.slot_from;
                alldDocTimesData.slot_to = item.slot_to;
                alldDocTimesData.type = item.type;

                axios.post(`/save-doctor-chamber-times`, alldDocTimesData).then(res => {
                    if (res.data.status === 200) {
                        setStoreDocTimeList([]);
                    }
                    // else if (res.data.status == 400) {
                    //     // setdiagnosisError(res.data.errors);
                    //     toast.error("Please input all valid field ");

                    // }

                })


            });
        }
        toast.success("Doctor times added sucessfully");

    }

    const closeCancelBtn = () => {
        setStoreDocTimeList([]);
    }


    const [value, setValue] = React.useState(
        new Date('2014-08-18T21:11:54'),
    );

    const handleChange1 = (newValue) => {
        setValue(newValue);
    };


    return (
        <div className="ms-2">
            <div className="row">
                <div className="col-12">
                    <div className="custom-card mt-2 mb-2 p-2">
                        <h5 className="card-title">Add Doctor's Chamber</h5>
                    </div>
                    <div className="custom-card clearfix p-1">
                        <div className="top-header my-4 w-100">
                            <div className="item d-flex ">
                                <h6 className="mt-2 mx-3">Doctor</h6>
                                <Box >
                                    <FormControl size="small" style={{ minWidth: 190 }}>
                                        <InputLabel id="demo-simple-select-label">Dr Name</InputLabel>
                                        <Select
                                            labelId="demo-simple-select-label"
                                            id="demo-simple-select"
                                            value={doctorId}
                                            label="Dr Name"
                                            onChange={handleDoctorChange}
                                        >
                                            {allDoctors.map((item, i) => {
                                                return (<MenuItem value={item.id} key={i}>{item.dr_given_name}</MenuItem>
                                                )

                                            })}

                                        </Select>
                                    </FormControl>
                                </Box>
                            </div>

                            <div className="item d-flex ">
                                <h6 className="mt-2 mx-3">Chamber </h6>
                                <Box >
                                    <FormControl fullWidth size="small" style={{ minWidth: 190 }}>
                                        <InputLabel id="demo-simple-select-label">Chamber Name</InputLabel>
                                        <Select
                                            labelId="demo-simple-select-label"
                                            id="demo-simple-select"
                                            value={chamberId}
                                            label="Chamber Name"
                                            onChange={handleChange}
                                        >
                                            {allChamber.map((item, i) => {
                                                return (<MenuItem value={item.id} key={i}>{item.usual_provider_name}</MenuItem>
                                                )

                                            })}

                                        </Select>
                                    </FormControl>
                                </Box>
                            </div>
                            <div className="item d-flex ">
                                <h6 className="mt-2  mx-3">Year</h6>

                                <LocalizationProvider dateAdapter={AdapterDateFns} >

                                    <DatePicker
                                        views={['year']}
                                        label="Year only"
                                        value={year}
                                        onChange={(newValue) => {
                                            setYears(newValue);
                                        }}
                                        renderInput={(params) => <TextField {...params} helperText={null} size="small" />}
                                    />

                                </LocalizationProvider>
                            </div>
                            <div className="item d-flex ">
                                <h6 className="mt-2  mx-3">Month</h6>
                                <Box sx={{ minWidth: 120 }}>
                                    <FormControl fullWidth size="small">
                                        <InputLabel id="demo-simple-select-label">Month</InputLabel>
                                        <Select
                                            labelId="demo-simple-select-label"
                                            id="demo-simple-select"
                                            value={month}
                                            label="Age"
                                            onChange={handleMonthChange}
                                        >
                                            <MenuItem value="january">January</MenuItem>
                                            <MenuItem value="february">February</MenuItem>
                                            <MenuItem value="march">March</MenuItem>
                                            <MenuItem value="april">April</MenuItem>
                                            <MenuItem value="may">May</MenuItem>
                                            <MenuItem value="june">June</MenuItem>
                                            <MenuItem value="july">July</MenuItem>
                                            <MenuItem value="august">August</MenuItem>
                                            <MenuItem value="september">September</MenuItem>
                                            <MenuItem value="october">October</MenuItem>
                                            <MenuItem value="november">November</MenuItem>
                                            <MenuItem value="december">December </MenuItem>

                                        </Select>
                                    </FormControl>
                                </Box>
                            </div>

                            <div className="item d-flex  ">
                                <div class="form-check">
                                    <input class="form-check-input check mx-2 " type="checkbox" id="checkNull" value={checkBoxValue} onChange={handleCheckBox} />
                                    <label class="form-check-label " for="flexCheckChecked">
                                        <h6>All Month </h6>
                                    </label>
                                </div>
                            </div>


                        </div>

                        <div className="">
                            <button className="buttonStyle" onClick={Btn}>
                                <b>ADD</b>
                            </button>
                        </div>

                        <Modal
                            isOpen={modalIsOpen}
                            onRequestClose={closeModal}
                            style={customStyles}
                            contentLabel="Example Modal"
                        >

                            <div className='card-body'>
                                <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeModal}><i class="fal fa-times"></i></span>

                                <h5 className=""> <b>Add Slots</b></h5>

                                {/* <div className="line "></div> */}

                                <div className="row">

                                    <div className="col-12 d-flex">
                                        <div className="col-5 mt-4">
                                            <h6 className="mt-4">Day</h6>
                                            <h6 className="mt-5">Select Schedule</h6>
                                            <h6 className="mt-5">Slot(From)</h6>
                                            <h6 className="mt-5">Slot(To)</h6>
                                        </div>
                                        <div className="col-7 mt-4">
                                            <Box sx={{ minWidth: 120 }}>
                                                <FormControl fullWidth size="small" className="mt-4">
                                                    <InputLabel id="demo-simple-select-label">Day</InputLabel>
                                                    <Select
                                                        labelId="demo-simple-select-label"
                                                        id="demo-simple-select"
                                                        value={day}
                                                        label="Age"
                                                        onChange={handleDayChange}
                                                    >
                                                        <MenuItem value="saturday">Saturday</MenuItem>
                                                        <MenuItem value="sunday">Sunday</MenuItem>
                                                        <MenuItem value="monday">Monday</MenuItem>
                                                        <MenuItem value="tuesday">TuesDay</MenuItem>
                                                        <MenuItem value="wednesday">WednesDay</MenuItem>
                                                        <MenuItem value="thrusday">Thruday</MenuItem>
                                                        <MenuItem value="friday">Friday</MenuItem>

                                                    </Select>
                                                </FormControl>
                                            </Box>

                                            <select class="form-select mt-4" aria-label="Default select example" name="type" onChange={handleOptionChange}>
                                                <option selected>Select schedule</option>
                                                <option value="morning">Morning</option>
                                                <option value="day">Day</option>
                                                <option value="evening">Evening</option>
                                                <option value="night">Night</option>
                                            </select>




                                            <FormControl fullWidth size="small" className="mt-4">

                                                <LocalizationProvider dateAdapter={AdapterDateFns}>

                                                    <TimePicker
                                                        label="Slot(From))"
                                                        value={slotFrom}
                                                        onChange={(newValue) => {
                                                            setSlotFrom(newValue);
                                                        }}
                                                        renderInput={(params) => <TextField {...params} fullWidth size="small" />}
                                                    />

                                                </LocalizationProvider>
                                            </FormControl>



                                            <FormControl fullWidth size="small" className="mt-4">

                                                <LocalizationProvider dateAdapter={AdapterDateFns}>

                                                    <TimePicker
                                                        label="Slot(To)"
                                                        value={slotTo}
                                                        onChange={(newValue) => {
                                                            setSlotTo(newValue);
                                                        }}
                                                        renderInput={(params) => <TextField {...params} fullWidth size="small" />}
                                                    />

                                                </LocalizationProvider>
                                            </FormControl>



                                            <div className="float-right">
                                                <button className="buttonStyleCancel mt-5 " onClick={closeModal}>
                                                    <b>Cancel</b>
                                                </button>
                                                <button className="buttonStyle mt-5 mx-2" onClick={addToList}>
                                                    <b>Save</b>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                            </div>
                        </Modal>


                        <div className="main-body mt-1">

                            {showTable && <>
                                <table class="table table-bordered mt-1">
                                    <thead>
                                        <tr>
                                            <th scope="col"><b>#SL</b></th>
                                            <th scope="col"><b>Dr Name</b></th>
                                            <th scope="col"><b>Chamber Name</b></th>
                                            <th scope="col"><b>Day</b></th>
                                            <th scope="col"><b>Time Schedule</b></th>
                                            <th scope="col"><b>Date</b></th>
                                            <th scope="col"><b>Action</b></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {storeDocTimeList.map((item, i) => {
                                            return (
                                                <tr key={i}>
                                                    <th scope="row">{i + 1}</th>
                                                    <td>{item.doctor_name[0].dr_given_name}</td>
                                                    <td>{item.chamber_name[0].usual_provider_name} </td>
                                                    <td>{item.day}</td>

                                                    <td>{moment(item.slot_from).format('LT')} - {moment(item.slot_to).format('LT')
                                                    }
                                                        <span class="badge badge-success mx-1"> {item.type}</span>
                                                    </td>

                                                    <td>{moment(item.year).format('LL')}

                                                    </td>

                                                    <td>
                                                        <button className='btn btn-sm btn-danger mx-1' onClick={(e) => deleteList(e, i)}> <i className="fa fa-trash" aria-hidden="true"></i>
                                                        </button></td>
                                                </tr>
                                            )
                                        })}


                                    </tbody>
                                </table>



                                <div className="float-right">
                                    <button className="buttonStyleCancel" onClick={closeCancelBtn}>
                                        <b>Cancel</b>
                                    </button>
                                    <button className="buttonStyle mx-3" onClick={submitDoctorTimes}>
                                        <b>Save</b>
                                    </button>
                                </div>
                            </>
                            }


                        </div>
                    </div>

                </div>
            </div>
        </div>
    )
}
export default AddDoctorsChamber;




