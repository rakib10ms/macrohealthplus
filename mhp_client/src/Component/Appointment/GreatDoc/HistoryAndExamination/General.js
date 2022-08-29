import { Popover } from '@mui/material';
import axios from 'axios';
import React, { useEffect } from 'react';
import { useState } from 'react'
import { toast } from 'react-toastify';
import clinic8 from "../../../../Images/clinical1.png";

toast.configure();

const General = (props) => {
    const [historyShowAll, setHistoryShowAll] = useState(false);
    const [historyValue, setHistoryValue] = useState({});
    const [singleValue, setSingleValue] = useState({
        Anaemic: false,
        Jaundiced: false,
        Cyanosis: false,
        Skin: false
    });
    const [capillary, setCapillary] = useState("");
    const [dehydration, setDehydration] = useState("");
    const [radioFD, setRadio] = useState("");
    const [nailSign, setNailSign] = useState("");
    const [bloodSugerType, setBloodSugerType] = useState("");
    const [bloodSuger, setBloodSuger] = useState("");

    const [newHistoryValue, setnewHistoryValue] = useState([])

    const [history, setHistory] = useState([]);
    const addHistoryValue = (e) => {
        const { name, checked, value } = e.target;

        if (checked) {
            setnewHistoryValue([...newHistoryValue, value])
        } else {
            const dataNe = newHistoryValue.filter(item => item !== value)
            setnewHistoryValue(dataNe)
        }

        if (historyValue[name] === true) {
            setHistoryValue({ ...historyValue, [name]: false })
        } else {
            setHistoryValue({ ...historyValue, [name]: true })
        }
    }

    console.log("History value",newHistoryValue)
    
    const addSigleValue = (e) => {
        const name = e.target.name;
        if (singleValue[name] === true) {
            setSingleValue({ ...singleValue, [name]: false })
        } else {
            setSingleValue({ ...singleValue, [name]: true })
        }
    }

    //
    const [change, setChange] = useState(false);
    const [anchorEl, setAnchorEl] = useState(null);
    const open = Boolean(anchorEl);
    const id = open ? 'simple-popover' : undefined;
    //
    const [change1, setChange1] = useState(false);
    const [anchorEl1, setAnchorEl1] = useState(null);
    const open1 = Boolean(anchorEl1);
    const id1 = open1 ? 'simple-popover' : undefined;
    //
    const [change2, setChange2] = useState(false);
    const [anchorEl2, setAnchorEl2] = useState(null);
    const open2 = Boolean(anchorEl2);
    const id2 = open2 ? 'simple-popover' : undefined;
    //
    const [change3, setChange3] = useState(false);
    const [anchorEl3, setAnchorEl3] = useState(null);
    const open3 = Boolean(anchorEl3);
    const id3 = open3 ? 'simple-popover' : undefined;
    //
    const [change4, setChange4] = useState(false);
    const [anchorEl4, setAnchorEl4] = useState(null);
    const open4 = Boolean(anchorEl4);
    const id4 = open4 ? 'simple-popover' : undefined;
    //

    const [imputGeneral, setimputGeneral] = useState({
        pulse: "",
        respiratoryRate: "",
        o2saturation: "",
        sitting_left: "",
        sitting_right: "",
        standing_left: "",
        standing_right: "",
        lying_left: "",
        lying_right: "",
        weight: "",
        height: "",
        BMI: "",
        waist_measurement: "",
        hip_measurement: "",
        WHR: "",
        temp: "",
    })

    const [nailSignArray, setNailSignArray] = useState([]);
    useEffect(() => {
        axios.get(`/commonHistory-all/general`).then(res => {
            setHistory(res.data.commonHistory)
        });

        axios.get('http://34.87.35.161:5000/drugalert', {
            headers: {
                'Content-Type': 'application/json',
                "Access-Control-Allow-Origin": "*"
            }
        }).then(res => {
            console.log("Res Mims APi", res.data)
        });

        axios.get(`/nail-sign`).then(res => {
            if (res.data.status === 200) {
              
                setNailSignArray(res.data.nailSign);
            }

        });

    }, [])

    const [saveLoading, setsaveLoading] = useState(false)

    const saveGenral = () => {
        setsaveLoading(true)
        const formData = new FormData();
        formData.append('patient_id', props.patient_id);
        formData.append('history', newHistoryValue);
        formData.append('pulse', imputGeneral.pulse);
        formData.append('respiratoryRate', imputGeneral.respiratoryRate);
        formData.append('o2saturation', imputGeneral.o2saturation);
        formData.append('sitting_left', imputGeneral.sitting_left);
        formData.append('sitting_right', imputGeneral.sitting_right);
        formData.append('standing_left', imputGeneral.standing_left);
        formData.append('standing_right', imputGeneral.standing_right);
        formData.append('lying_left', imputGeneral.lying_left);
        formData.append('lying_right', imputGeneral.lying_right);
        formData.append('weight', imputGeneral.weight);
        formData.append('height', imputGeneral.height);
        formData.append('BMI', imputGeneral.BMI);
        formData.append('waist_measurement', imputGeneral.waist_measurement);
        formData.append('hip_measurement', imputGeneral.hip_measurement);
        formData.append('WHR', imputGeneral.WHR);
        formData.append('temp', imputGeneral.temp);

        formData.append('Anaemic', singleValue.Anaemic === false ? 0 : 1);
        formData.append('Jaundiced', singleValue.Jaundiced === false ? 0 : 1);
        formData.append('Cyanosis', singleValue.Cyanosis === false ? 0 : 1);
        formData.append('Skin', singleValue.Skin === false ? 0 : 1);

        formData.append('capillary', capillary);
        formData.append('dehydration', dehydration);
        formData.append('radioFD', radioFD);
        formData.append('nailSign', nailSign);


        axios.post('/save-general', formData).then((res) => {
            console.log("Gereral Res", res.data.general)

            props.setgeneralPropsValue(res.data.general)
            // for (const [key, value] of Object.entries(historyValue)) {
            //     console.log("key", `${key}`);
            //     console.log("value", `${value}`);
            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('general_id', res.data.general.id);
            //     formData.append('history_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-general-history', formData).then(res => {
            //         console.log("Res History", res.data)
            //     })
            // }

            toast.success(res.data.message)
        })



    }
    const whrGenerate = () => {
        let hip = imputGeneral.hip_measurement;
        let waist = imputGeneral.waist_measurement;
        let result = waist / hip;
        {
            imputGeneral.hip_measurement !== '' && imputGeneral.waist_measurement !== '' &&
                setimputGeneral({ ...imputGeneral, WHR: result })
        }

    }

    return (
        <div className='row'>
            <div className="history-main-header d-flex justify-content-between mb-2">
                <div>
                    <h6>General</h6>
                </div>
                <div>
                    <img src={clinic8} alt="" className="img-fluid" />
                </div>
            </div>
            <div className="col-2">
                <div className="he-history p-1">
                    <input
                        type="text"
                        placeholder="History"
                        className="form-control form-control-sm mt-1 mb-2"
                    />
                    <ul
                        className={`g-doc-scroll ${historyShowAll ? "full-height" : "half-height"
                            }`}
                    >
                        {
                            history.length > 0 ?
                                history.map((item, i) => <li key={i}>
                                    <div className="d-flex justify-content-between">
                                        <p className="w-75">{item.history_name}</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input
                                                    name={item.id}
                                                    value={item.history_name}
                                                    type="checkbox"
                                                    onChange={(e) => addHistoryValue(e)}
                                                    id="togBtn"
                                                />
                                                <div className="slider round"></div>

                                            </label>
                                        </div>
                                    </div>
                                </li>)
                                :
                                <i style={{ fontSize: "26px", marginLeft: "40%" }} class="fas fa-spinner fa-spin"></i>
                        }
                    </ul>
                    {!historyShowAll ? (
                        <span
                            onClick={() => setHistoryShowAll(!historyShowAll)}
                            className="history-see-all"
                        >
                            Show All <i className="ms-1 far fa-angle-down"></i>
                        </span>
                    ) : (
                        <span
                            onClick={() => setHistoryShowAll(!historyShowAll)}
                            className="history-see-all"
                        >
                            Show Less <i className="ms-1 far fa-angle-up"></i>
                        </span>
                    )}
                </div>
            </div>
            <div className="col-10">
                <div className="history-main-header mb-2">
                    <div className="d-flex">
                        <input
                            type="text"
                            placeholder="Examination Search"
                            className="form-control form-control-sm w-75"

                        />
                        <div className="w-25">
                            <button onClick={() => setsaveLoading(false)} className="vaital-setup-btn-cancel float-end">
                                Reset
                            </button>
                            {
                                saveLoading ?
                                    <button className="vaital-setup-btn float-end me-2"><i className="fas fa-check-circle"></i></button>
                                    :
                                    <button onClick={saveGenral} className="vaital-setup-btn float-end me-2">Save</button>
                            }
                        </div>
                    </div>
                </div>
                <div className="row">
                    <div className="col-3">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Anaemic</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Anaemic"
                                            value="Anaemic"
                                            type="checkbox"
                                            onChange={(e) => addSigleValue(e)}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Jaundiced</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => addSigleValue(e)}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Cyanosis</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Cyanosis"
                                            value="Cyanosis"
                                            type="checkbox"
                                            onChange={(e) => addSigleValue(e)}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Skin Turgor</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Skin"
                                            value="Skin Turgor"
                                            type="checkbox"
                                            onChange={(e) => addSigleValue(e)}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Capillary Refill</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Skin"
                                            value="Capillary Refill"
                                            type="checkbox"
                                            onChange={(e) => { setChange3(!change3); setCapillary(""); }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl3(e.currentTarget)} className="slider round"></div>
                                        {change3 && (
                                            <Popover
                                                id={id3}
                                                open={open3}
                                                anchorEl={anchorEl3}
                                                onClose={() => setAnchorEl3(null)}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Less than 3"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setCapillary(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Less than 3</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Greater than 3"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setCapillary(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            More than 3
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{capillary}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Nail Sign</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange2(!change2); setNailSign("") }}
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
                                                        nailSignArray.length > 0 &&
                                                        nailSignArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.nailSign_name} type="radio" name="cough1" onChange={(e) => { setNailSign(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.nailSign_name}
                                                            </label>
                                                        </div>)
                                                    }
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{nailSign}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className='d-flex justify-content-between'>
                                <p>Dehydration</p>
                                <label className="switch me-1">
                                    <input onChange={() => { setChange(!change); setDehydration("") }} type="checkbox" id="togBtn" />
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
                                                <div className="form-check ms-1">
                                                    <input className="form-check-input" value="Mild" type="radio" name="cough1" onChange={(e) => { setDehydration(e.target.value) }} id="flexRadioDefault1" />
                                                    <label className="form-check-label" >
                                                        Mild
                                                    </label>
                                                </div>
                                                <div className="form-check ms-1">
                                                    <input className="form-check-input" value="Moderate" type="radio" name="cough1" onChange={(e) => setDehydration(e.target.value)} id="flexRadioDefault1" />
                                                    <label className="form-check-label" >
                                                        Moderate
                                                    </label>
                                                </div>
                                                <div className="form-check ms-1">
                                                    <input className="form-check-input" value="Severe" type="radio" name="cough1" onChange={(e) => setDehydration(e.target.value)} id="flexRadioDefault1" />
                                                    <label className="form-check-label" >
                                                        Severe
                                                    </label>
                                                </div>
                                            </div>
                                        </Popover>
                                    }

                                </label>
                            </div>
                            <div className="history-popup-value">
                                <p>{dehydration}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className='d-flex justify-content-between'>
                                <p>Radio Femoral Delay</p>
                                <label className="switch me-1">
                                    <input onChange={() => { setChange1(!change1); setRadio("") }} type="checkbox" id="togBtn" />
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
                                                <div className="form-check ms-1">
                                                    <input className="form-check-input" value="Left" type="radio" name="cough1" onChange={(e) => { setRadio(e.target.value) }} id="flexRadioDefault1" />
                                                    <label className="form-check-label" >
                                                        Left
                                                    </label>
                                                </div>
                                                <div className="form-check ms-1">
                                                    <input className="form-check-input" value="Right" type="radio" name="cough1" onChange={(e) => setRadio(e.target.value)} id="flexRadioDefault1" />
                                                    <label className="form-check-label" >
                                                        Right
                                                    </label>
                                                </div>
                                            </div>
                                        </Popover>
                                    }

                                </label>
                            </div>
                            <div className="history-popup-value">
                                <p>{radioFD}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-9">
                        <div className="row exam-bg-white p-1">
                            <div className="row">
                                <div className="col-4 p-1">
                                    <div className="row">
                                        <div className="col-2">
                                            <span>Temp:</span>
                                        </div>
                                        <div className="col-8">
                                            <input onChange={e => setimputGeneral({ ...imputGeneral, temp: e.target.value })} type="text" className="form-control form-control-sm" />
                                        </div>
                                        <div className="col-2">
                                            <sup>o</sup> C
                                        </div>
                                    </div>
                                </div>
                                <div className="col-8 row">
                                    <div className="col-8">
                                        <div className="m-1 row">
                                            <div className="col-5">
                                                <label> O<sub>2 </sub> Saturation</label>
                                            </div>
                                            <div className="col-7">
                                                <input onChange={e => setimputGeneral({ ...imputGeneral, o2saturation: e.target.value })} className='form-control form-control-sm' type="text" placeholder='/c' />
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-4">
                                        <p className="pt-2">
                                            % on room air
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div className="col-4">
                                <div className="row">
                                    <div className="col-2">
                                        <label> Pulse</label>
                                    </div>
                                    <div className="col-8">
                                        <input onChange={e => setimputGeneral({ ...imputGeneral, pulse: e.target.value })} className='form-control form-control-sm' type="text" placeholder='/min' />
                                    </div>
                                </div>
                            </div>
                            <div className="col-4">
                                <div className="row">
                                    <div className="col-5">
                                        <label> Respiratory Rate</label>
                                    </div>
                                    <div className="col-7">
                                        <input onChange={e => setimputGeneral({ ...imputGeneral, respiratoryRate: e.target.value })} className='form-control form-control-sm ms-1' type="text" placeholder='/min' />
                                    </div>
                                </div>
                            </div>
                            <div className="col-4">
                                <div className="exam-bg-white p-1">
                                    <div className="d-flex justify-content-between">
                                        <p className="w-75">Blood Suger</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input
                                                    name="Jaundiced"
                                                    value="Jaundiced"
                                                    type="checkbox"
                                                    onChange={(e) => { setChange4(!change4); setBloodSugerType(""); setBloodSuger("") }}
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
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div style={{ width: "180px" }} className="left-popup">
                                                            <div className="row">
                                                                <div className="col-6">
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="Fasting : " type="radio" name="right" onChange={(e) => { setBloodSugerType(e.target.value) }} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            Fasting
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="Non Fasting :" type="radio" name="right" onChange={(e) => { setBloodSugerType(e.target.value) }} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            Non Fasting
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <input onChange={(e) => setBloodSuger(e.target.value)} type="text" className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>
                                    </div>
                                    <div className="history-popup-value">
                                        <p>{bloodSugerType}  {bloodSuger}</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div className="row exam-bg-white p-1 mt-2">
                            <h6>Blood Pressure</h6>
                            <div className="col-4">
                                <label > Sitting</label>
                                <div className="row">
                                    <div className="col-4">
                                        <input onChange={e => setimputGeneral({ ...imputGeneral, sitting_left: e.target.value })} style={{ width: "84%" }} type="text" className="form-control form-control-sm d-inline" /> <span>/</span>
                                    </div>
                                    <div className="col-4">
                                        <input onChange={e => setimputGeneral({ ...imputGeneral, sitting_right: e.target.value })} type="text" className="form-control form-control-sm" />
                                    </div>
                                    <div className="col-4">
                                        <p className="mt-1">mm of Hg</p>
                                    </div>
                                </div>
                            </div>
                            <div className="col-4">
                                <label > Standing</label>
                                <div className="row">
                                    <div className="col-4">
                                        <input onChange={e => setimputGeneral({ ...imputGeneral, standing_left: e.target.value })} style={{ width: "84%" }} type="text" className="form-control form-control-sm d-inline" /> <span>/</span>
                                    </div>
                                    <div className="col-4">
                                        <input onChange={e => setimputGeneral({ ...imputGeneral, standing_right: e.target.value })} type="text" className="form-control form-control-sm" />
                                    </div>
                                    <div className="col-4">
                                        <p className="mt-1">mm of Hg</p>
                                    </div>
                                </div>
                            </div>
                            <div className="col-4">
                                <label > Lying</label>
                                <div className="row">
                                    <div className="col-4">
                                        <input onChange={e => setimputGeneral({ ...imputGeneral, lying_left: e.target.value })} style={{ width: "84%" }} type="text" className="form-control form-control-sm d-inline" /> <span>/</span>
                                    </div>
                                    <div className="col-4">
                                        <input onChange={e => setimputGeneral({ ...imputGeneral, lying_right: e.target.value })} type="text" className="form-control form-control-sm" />
                                    </div>
                                    <div className="col-4">
                                        <p className="mt-1">mm of Hg</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="row exam-bg-white p-1 mt-2">
                            <div className="col-4">
                                <label >Weight (kg)</label>
                                <input onChange={e => setimputGeneral({ ...imputGeneral, weight: e.target.value })} type="number" className="form-control form-control-sm" />
                            </div>
                            <div className="col-4">
                                <label >Height (cm)</label>
                                <input onChange={e => setimputGeneral({ ...imputGeneral, height: e.target.value })} type="number" className="form-control form-control-sm" />
                            </div>
                            <div className="col-4">
                                <label >BMI</label>
                                <div className="row">
                                    <div className="col-9">
                                        <input value={imputGeneral.height && imputGeneral.weight && ((imputGeneral.weight/imputGeneral.height/imputGeneral.height)*10000).toFixed(2)} onChange={e => setimputGeneral({ ...imputGeneral, BMI: e.target.value })} type="text" readOnly className="form-control form-control-sm" />
                                    </div>
                                    <div className="col-3">
                                        <p className="mt-1">Kg/m <sup>2</sup></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="row exam-bg-white p-1 mt-2">
                            <div className="col-4">
                                <label >Waist Measurement</label>
                                <input onChange={e => { setimputGeneral({ ...imputGeneral, waist_measurement: e.target.value }); }} type="number" className="form-control form-control-sm" />
                            </div>
                            <div className="col-4">
                                <label >Hip Measurement</label>
                                <input onChange={e => { setimputGeneral({ ...imputGeneral, hip_measurement: e.target.value }); }} type="number" className="form-control form-control-sm" />
                            </div>
                            <div className="col-4">
                                <label >WHR</label>
                                <input onChange={e => setimputGeneral({ ...imputGeneral, WHR: e.target.value })} type="text" className="form-control form-control-sm" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default General;