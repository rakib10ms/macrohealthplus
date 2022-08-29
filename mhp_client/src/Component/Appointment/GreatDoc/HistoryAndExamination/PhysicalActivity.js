import React, { useEffect, useState } from 'react';
import { Popover } from '@mui/material';
import './PhysicalActivity.css';
import axios from 'axios';
import { toast } from 'react-toastify';

const PhysicalActivity = (props) => {

    const [change, setChange] = useState(false);
    const [anchorEl, setAnchorEl] = useState(null);
    const open = Boolean(anchorEl);
    const id = open ? 'simple-popover' : undefined;

    const [change1, setChange1] = useState(false);
    const [anchorEl1, setAnchorEl1] = useState(null);
    const open1 = Boolean(anchorEl1);
    const id1 = open1 ? 'simple-popover' : undefined;


    const [change2, setChange2] = useState(false);
    const [anchorEl2, setAnchorEl2] = useState(null);
    const open2 = Boolean(anchorEl2);
    const id2 = open2 ? 'simple-popover' : undefined;

    const [change3, setChange3] = useState(false);
    const [anchorEl3, setAnchorEl3] = useState(null);
    const open3 = Boolean(anchorEl3);
    const id3 = open3 ? 'simple-popover' : undefined;

    const [change4, setChange4] = useState(false);
    const [anchorEl4, setAnchorEl4] = useState(null);
    const open4 = Boolean(anchorEl4);
    const id4 = open4 ? 'simple-popover' : undefined;


    const [balanceTraining, setBalanceTraining] = useState(false);
    const [flexibilityExercise, setFlexibilityExercise] = useState(false);
    const [moderateIntensityExercise, setModerateIntensityExercise] = useState(false);
    const [vigorousExercise, setVigorousExercise] = useState(false);

    const [currentExcerciseLevel, setCurrentExcerciseLevel] = useState("");
    const [aerobicExercise, setAerobicExercise] = useState({});
    const [strengthBuilding, setStrengthBuilding] = useState({});
    const [endurance, setEndurance] = useState({});
    const [frequency, setFrequency] = useState("");


    const [date, setEnterdDate] = useState("");
    const dateInput= (e) => {
        console.log("date", e.target.value);
        setEnterdDate(e.target.value);
    }
   


    const [saveLoading, setSaveLoading] = useState(false);

    const savePhysicalActivityAdviceData = () => {
        // alert("savePhysicalActivityAdvice Data")
     
        setSaveLoading(true);

        const formData = {
            patient_id: props.patient_id,
            current__excercise__level__value: currentExcerciseLevel,
            balance__training__ternary: balanceTraining,
            flexibility__exercise__ternary: flexibilityExercise,
            moderate__intensity__exercise__ternary: moderateIntensityExercise,
            vigorous__xercise__ternary: vigorousExercise,
            frequency__value: frequency,
            previews__date: date,
        }
        axios.post('/save-physical-activity-advice', formData).then((res) => {
            console.log("physical activity advice", res.data);

            console.log("aerobicExercise",aerobicExercise)
            for (const [key, value] of Object.entries(aerobicExercise)) {
                console.log("key aerobicExercise", `${key}`);
                console.log("value aerobicExercise", `${value}`);
                
                const Data = new FormData();
                Data.append('patient_id', props.patient_id);
                Data.append('physical_activity_advice_id', res.data.physicalActivityAdvice.id);
                Data.append('aerobicExercise_id', `${key}`);
                Data.append('value', `${value}`);
                axios.post('save-physical-activity-aerobic-exercise', Data).then(res => {
                    console.log("Res Aerobic Exercise", res.data)
                })
            }

            console.log("strengthBuilding",strengthBuilding)
            for (const [key, value] of Object.entries(strengthBuilding)) {
                console.log("key strengthBuilding", `${key}`);
                console.log("value strengthBuilding", `${value}`);
                
                const Data = new FormData();
                Data.append('patient_id', props.patient_id);
                Data.append('physical_activity_advice_id', res.data.physicalActivityAdvice.id);
                Data.append('strengthBuilding_id', `${key}`);
                Data.append('value', `${value}`);
                axios.post('save-physical-activity-strength-building', Data).then(res => {
                    console.log("Res Strength Building", res.data)
                })
            }

            console.log("endurance",endurance)
            for (const [key, value] of Object.entries(endurance)) {
                console.log("key endurance", `${key}`);
                console.log("value endurance", `${value}`);
                
                const Data = new FormData();
                Data.append('patient_id', props.patient_id);
                Data.append('physical_activity_advice_id', res.data.physicalActivityAdvice.id);
                Data.append('endurance_id', `${key}`);
                Data.append('value', `${value}`);
                axios.post('save-physical-activity-endurance', Data).then(res => {
                    console.log("Res Endurance", res.data)
                })
            }



            toast.success(res.data.message);
        })
        // console.log("Physical Activity Advice Object Data", formData);
    };



    const [currentExcerciseLevelArray, setCurrentExcerciseLevelArray] = useState([]);
    const [aerobicExerciseArray, setAerobicExerciseArray] = useState([]);
    const [strengthBuildingArray, setStrengthBuildingArray] = useState([]);
    const [enduranceArray, setEnduranceArray] = useState([]);
    const [frequencyPhysicalArray, setFrequencyPhysicalArray] = useState([]);

    useEffect(() => {
        axios.get(`/current-excercise-level`).then(res => {
            if (res.data.status === 200) {
                console.log("Current Excercise Level Array", res.data.currentExcerciseLevel);
                setCurrentExcerciseLevelArray(res.data.currentExcerciseLevel);
            }
        });
        axios.get(`/aerobic-exercise`).then(res => {
            if (res.data.status === 200) {
                console.log("Aerobic Exercise Array", res.data.aerobicExercise);
                setAerobicExerciseArray(res.data.aerobicExercise);
            }
        });
        axios.get(`/strength-building`).then(res => {
            if (res.data.status === 200) {
                console.log("StrengthBuilding Array", res.data.strengthBuilding);
                setStrengthBuildingArray(res.data.strengthBuilding);
            }
        });
        axios.get(`/endurance`).then(res => {
            if (res.data.status === 200) {
                console.log("enduranceArray", res.data.endurance);
                setEnduranceArray(res.data.endurance);
            }
        });
        axios.get(`/frequency-physical`).then(res => {
            if (res.data.status === 200) {
                console.log("Frequency Physical Array", res.data.frequencyPhysical);
                setFrequencyPhysicalArray(res.data.frequencyPhysical);
            }
        });

    }, []);
    
    return (
        <div>
            <div className="row mb-3">
                <div className="col-4">
                    <div className="current__excercise__level p-1">
                        <div className="d-flex justify-content-between">
                            <p className="w-75">Current Excercise Level</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        name="Jaundiced"
                                        value="Jaundiced"
                                        type="checkbox"
                                        onChange={(e) => { setChange(!change); setCurrentExcerciseLevel("") }}
                                        id="togBtn"
                                    />
                                    <div onClick={(e) => setAnchorEl(e.currentTarget)} className="slider round"></div>
                                    {
                                        change &&
                                        <Popover
                                            id={id}
                                            open={open}
                                            anchorEl={anchorEl}
                                            onClose={() => setAnchorEl(null)}
                                            anchorOrigin={{
                                                vertical: 'center',
                                                horizontal: 'right',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'left',
                                            }}
                                        >

                                            <div className="left-popup">
                                                {
                                                    currentExcerciseLevelArray.length > 0 && currentExcerciseLevelArray.map((item, i) => {
                                                        return (
                                                            <div key={i} className="form-check ms-1">
                                                                <input className="form-check-input"
                                                                    value={item.name}
                                                                    type="radio"
                                                                    name="left"
                                                                    onChange={(e) => { setCurrentExcerciseLevel(e.target.value) }} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    {item.name}
                                                                </label>
                                                            </div>
                                                        )
                                                    })
                                                }
                                                
                                            </div>
                                        </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p>{currentExcerciseLevel}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div className="physical__current__bg">
                <div className="row ">
                    <div className="col-12">
                        <p className="p-1 current__text">Current Excercise Level <hr className="current__hr" /></p>
                    </div>
                </div>
                <div className="row mx-3 gy-3 mb-3">

                    <div className="col-4">
                        <div className="current__bg__white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Aerobic Exercise</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange1(!change1); setAerobicExercise({}) }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl1(e.currentTarget)} className="slider round"></div>
                                        {
                                            change1 &&
                                            <Popover
                                                id={id1}
                                                open={open1}
                                                anchorEl={anchorEl1}
                                                onClose={() => setAnchorEl1(null)}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup">
                                                    {
                                                        aerobicExerciseArray.length > 0 && aerobicExerciseArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check ms-1">
                                                                    <input className="form-check-input"
                                                                        value={item.name}
                                                                        type="checkbox"
                                                                        name={item.id}
                                                                        onChange={(e) => { setAerobicExercise(aerobicExercise[e.target.name] ? { ...aerobicExercise, [e.target.name]: "" } : { ...aerobicExercise, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.name}
                                                                    </label>
                                                                </div>
                                                            )
                                                        })
                                                    }
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                {
                                    Object.keys(aerobicExercise).map(key =>
                                        <p >{aerobicExercise[key]}</p>
                                    )
                                }
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="current__bg__white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Strength Building</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange2(!change2); setStrengthBuilding({}) }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl2(e.currentTarget)} className="slider round"></div>
                                        {
                                            change2 &&
                                            <Popover
                                                id={id2}
                                                open={open2}
                                                anchorEl={anchorEl2}
                                                onClose={() => setAnchorEl2(null)}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup">
                                                {
                                                        strengthBuildingArray.length > 0 && strengthBuildingArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check ms-1">
                                                                    <input className="form-check-input"
                                                                        value={item.name}
                                                                        type="checkbox"
                                                                        name={item.id}
                                                                        onChange={(e) => { setStrengthBuilding(strengthBuilding[e.target.name] ? { ...strengthBuilding, [e.target.name]: "" } : { ...strengthBuilding, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.name}
                                                                    </label>
                                                                </div>
                                                            )
                                                        })
                                                    }
                                                    {/* <div className="form-check ms-1">
                                                        <input className="form-check-input"
                                                            value="d"
                                                            type="checkbox"
                                                            name="Strength Building"
                                                            onChange={(e) => { setStrengthBuilding(strengthBuilding[e.target.name] ? { ...strengthBuilding, [e.target.name]: "" } : { ...strengthBuilding, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label" >
                                                            d
                                                        </label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input"
                                                            value="df"
                                                            type="checkbox"
                                                            name="zcsc"
                                                            onChange={(e) => { setStrengthBuilding(strengthBuilding[e.target.name] ? { ...strengthBuilding, [e.target.name]: "" } : { ...strengthBuilding, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label" >
                                                            df
                                                        </label>
                                                    </div> */}
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                {
                                    Object.keys(strengthBuilding).map(key =>
                                        <p >{strengthBuilding[key]}</p>
                                    )
                                }
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="current__bg__white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Balance Training</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="BalanceTraining"
                                            name="BalanceTraining"
                                            onChange={(e) => { setBalanceTraining(!balanceTraining) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="current__bg__white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Endurance </p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange3(!change3); setEndurance({}) }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl3(e.currentTarget)} className="slider round"></div>
                                        {
                                            change3 &&
                                            <Popover
                                                id={id3}
                                                open={open3}
                                                anchorEl={anchorEl3}
                                                onClose={() => setAnchorEl3(null)}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup">
                                                    {
                                                        enduranceArray.length > 0 && enduranceArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check ms-1">
                                                                    <input className="form-check-input"
                                                                        value={item.name}
                                                                        type="checkbox"
                                                                        name={item.id}
                                                                        onChange={(e) => { setEndurance(endurance[e.target.name] ? { ...endurance, [e.target.name]: "" } : { ...endurance, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.name}
                                                                    </label>
                                                                </div>
                                                            )
                                                        })
                                                    }
                                                    {/* <div className="form-check ms-1">
                                                        <input className="form-check-input"
                                                            value="endura"
                                                            type="checkbox"
                                                            name="Endurance"
                                                            onChange={(e) => { setEndurance(endurance[e.target.name] ? { ...endurance, [e.target.name]: "" } : { ...endurance, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label" >
                                                            endura
                                                        </label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input"
                                                            value="afdfgfhhg"
                                                            type="checkbox"
                                                            name="Endurance cvccv"
                                                            onChange={(e) => { setEndurance(endurance[e.target.name] ? { ...endurance, [e.target.name]: "" } : { ...endurance, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label" >
                                                            afdfgfhhg
                                                        </label>
                                                    </div> */}
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                {
                                    Object.keys(endurance).map(key =>
                                        <p >{endurance[key]}</p>
                                    )
                                }
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="current__bg__white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Flexibility Exercise</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Flexibility Exercise"
                                            name="Flexibility Exercise"
                                            onChange={(e) => { setFlexibilityExercise(!flexibilityExercise) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="current__bg__white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Moderate Intensity Exercise</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Moderate Intensity Exercise"
                                            name="Moderate Intensity Exercise"
                                            onChange={(e) => { setModerateIntensityExercise(!moderateIntensityExercise) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="current__bg__white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Vigorous Exercise</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="vigorous Exercise"
                                            name="vigorous Exercise"
                                            onChange={(e) => { setVigorousExercise(!vigorousExercise) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div className="row mb-3 pt-3">
                <div className="col-4">
                    <div className="current__excercise__level p-1">
                        <div className="d-flex justify-content-between">
                            <p className="w-75">Frequency</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        name="Jaundiced"
                                        value="Jaundiced"
                                        type="checkbox"
                                        onChange={(e) => { setChange4(!change4); setFrequency("") }}
                                        id="togBtn"
                                    />
                                    <div onClick={(e) => setAnchorEl4(e.currentTarget)} className="slider round"></div>
                                    {
                                        change4 &&
                                        <Popover
                                            id={id4}
                                            open={open4}
                                            anchorEl={anchorEl4}
                                            onClose={() => setAnchorEl4(null)}
                                            anchorOrigin={{
                                                vertical: 'center',
                                                horizontal: 'right',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'left',
                                            }}
                                        >
                                            <div className="left-popup">
                                                {
                                                    frequencyPhysicalArray.length > 0 && frequencyPhysicalArray.map((item, i) => {
                                                        return (
                                                            <div key={i} className="form-check ms-1">
                                                                <input className="form-check-input"
                                                                    value={item.name}
                                                                    type="radio"
                                                                    name="left"
                                                                    onChange={(e) => { setFrequency(e.target.value) }} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    {item.name}
                                                                </label>
                                                            </div>
                                                        )
                                                    })
                                                }
                                            </div>
                                        </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p>{frequency}</p>
                        </div>
                    </div>
                </div>
                <div className="col-4">
                    <div className="current__bg__white p-1">
                        <div className="d-flex justify-content-between">
                            <p className="w-75">Previews</p>
                            <div className="ms-1">
                                <label className="me-1">
                                    <input
                                        type="date"
                                        name="Previews"
                                        className="date__input"
                                        // onChange={(e) =>  setDate(e.target.value) }
                                        onChange={dateInput }
                                        id="togBtn"
                                    />
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className="float-right pt-4">
                <button className="btn__save mx-5" onClick={savePhysicalActivityAdviceData}>
                    <b>Save</b>
                </button>
                <button onClick={()=>props.setModalPhysicalActivityIsOpen(false)} className="btn__cancel" >
                    <b>Cancel</b>
                </button>
            </div>
        </div>
    );
};

export default PhysicalActivity;

