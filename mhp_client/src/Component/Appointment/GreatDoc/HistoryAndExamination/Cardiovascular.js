import { Popover } from '@mui/material';
import axios from 'axios';
import React, { useEffect, useState } from 'react';

import { toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import Swal from 'sweetalert2';
import clinic3 from "../../../../Images/clinical2.png";

toast.configure();

const Cardiovascular = (props) => {
    const [historyShowAll, setHistoryShowAll] = useState(true);
    const [carotid, setCarotid] = useState("");
    const [beat, setBeat] = useState("");
    const [interCostal, setInterCostal] = useState("");
    const [heartSound, setHeartSound] = useState("");
    const [murmur, setMurmur] = useState("");
    const [volum, setVolum] = useState("");
    const [radiation, setRadiation] = useState("");

    const [inputField, setinputField] = useState({

        brachial_Right: '',
        brachial_left: '',

        radial_Right: '',
        radial_left: '',

        posterior_tibialis_Right: '',
        posterior_tibialis_left: '',

        dorsalis_pedis_Right: '',
        dorsalis_pedis_left: '',

        femoral_Right: '',
        femoral_left: '',

        popliteal_Right: '',
        popliteal_left: '',

        jvp: '',

        notes: '',

        is_ajr: false,
        is_radio_factory_delay: false,
        is_pacemaker_box: false,
        is_calf_tenderness: false,
        is_trendelenburg_test: false,
        is_varicose_veins: false,

    })


    const [historyList, sethistoryList] = useState([])
    //const [historyListCheckBox, sethistoryListCheckBox] = useState({})
    const [historyListCheckBox, sethistoryListCheckBox] = useState([])

    const [othersCheckBoxdefultValue, setothersCheckBoxdefultValue] = useState({})

    const [riskFactor, setRiskFactor] = useState([]);
    const [dyspnea, setDyspnea] = useState([]);
    //Popover
    //
    const [change, setChange] = useState(false);
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
    const [change1, setChange1] = useState(false);
    const [anchorEl1, setAnchorEl1] = useState(null);

    const handleClick1 = (event) => {
        setAnchorEl1(event.currentTarget);

    };
    const handleClose1 = () => {
        setAnchorEl1(null);
    };
    const open1 = Boolean(anchorEl1);
    const id1 = open1 ? 'simple-popover' : undefined;
    //
    const [change2, setChange2] = useState(false);
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
    const [change3, setChange3] = useState(false);
    const [anchorEl3, setAnchorEl3] = useState(null);

    const handleClick3 = (event) => {
        setAnchorEl3(event.currentTarget);

    };
    const handleClose3 = () => {
        setAnchorEl3(null);
    };
    const open3 = Boolean(anchorEl3);
    const id3 = open3 ? 'simple-popover' : undefined;
    //
    const [change4, setChange4] = useState(false);
    const [anchorEl4, setAnchorEl4] = useState(null);

    const handleClick4 = (event) => {
        setAnchorEl4(event.currentTarget);

    };
    const handleClose4 = () => {
        setAnchorEl4(null);
    };
    const open4 = Boolean(anchorEl4);
    const id4 = open4 ? 'simple-popover' : undefined;
    //
    const [change5, setChange5] = useState(false);
    const [anchorEl5, setAnchorEl5] = useState(null);

    const handleClick5 = (event) => {
        setAnchorEl5(event.currentTarget);

    };
    const handleClose5 = () => {
        setAnchorEl5(null);
    };
    const open5 = Boolean(anchorEl5);
    const id5 = open5 ? 'simple-popover' : undefined;
    //
    const [change6, setChange6] = useState(false);
    const [anchorEl6, setAnchorEl6] = useState(null);

    const handleClick6 = (event) => {
        setAnchorEl6(event.currentTarget);
    };
    const handleClose6 = () => {
        setAnchorEl6(null);
    };
    const open6 = Boolean(anchorEl6);
    const id6 = open6 ? 'simple-popover' : undefined;
    //
    const [change7, setChange7] = useState(false);
    const [anchorEl7, setAnchorEl7] = useState(null);
    const open7 = Boolean(anchorEl7);
    const id7 = open7 ? 'simple-popover' : undefined;
    //
    const [change8, setChange8] = useState(false);
    const [anchorEl8, setAnchorEl8] = useState(null);
    const open8 = Boolean(anchorEl8);
    const id8 = open8 ? 'simple-popover' : undefined;
    //
    const [change9, setChange9] = useState(false);
    const [anchorEl9, setAnchorEl9] = useState(null);
    const open9 = Boolean(anchorEl9);
    const id9 = open9 ? 'simple-popover' : undefined;
    //
    const [change10, setChange10] = useState(false);
    const [anchorEl10, setAnchorEl10] = useState(null);
    const open10 = Boolean(anchorEl10);
    const id10 = open10 ? 'simple-popover' : undefined;
    //
    const [change11, setChange11] = useState(false);
    const [anchorEl11, setAnchorEl11] = useState(null);
    const open11 = Boolean(anchorEl11);
    const id11 = open11 ? 'simple-popover' : undefined;
    //
    const [change12, setChange12] = useState(false);
    const [anchorEl12, setAnchorEl12] = useState(null);
    const open12 = Boolean(anchorEl12);
    const id12 = open12 ? 'simple-popover' : undefined;
    //
    const [change13, setChange13] = useState(false);
    const [anchorEl13, setAnchorEl13] = useState(null);
    const open13 = Boolean(anchorEl13);
    const id13 = open13 ? 'simple-popover' : undefined;
    //
    const [change14, setChange14] = useState(false);
    const [anchorEl14, setAnchorEl14] = useState(null);
    const open14 = Boolean(anchorEl14);
    const id14 = open14 ? 'simple-popover' : undefined;

    const [carotidArray, setcarotidArray] = useState([])
    const [apexBeatArray, setapexBeatArray] = useState([])
    const [intercostalArray, setintercostalArray] = useState()
    useEffect(() => {

        axios.get(`/commonHistory-all/Cardivascular`).then(res => {
            sethistoryList(res.data.commonHistory)
        });

        axios.get(`/carotid`).then(res => {
            setcarotidArray(res.data.carotid)
        });

        axios.get('/apex-beat').then(res => {
            setapexBeatArray(res.data.apex_beat)
        })

        axios.get('/intercostal-space').then(res => {
            setintercostalArray(res.data.intercostal_space)
        })


        axios.get(`/heartSound`).then(res => {
            if (res.data.status === 200) {
                setheartSoundArray(res.data.heartSound)
            }
        });
        axios.get(`/murmur`).then(res => {
            if (res.data.status === 200) {
                setmurmurArray(res.data.murmur)
            }

        });

        axios.get(`/volume`).then(res => {
            if (res.data.status === 200) {
                setvolumeArray(res.data.volume)
            }

        });

        axios.get(`/rediation`).then(res => {
            if (res.data.status === 200) {
                setradiationArray(res.data.rediation)
            }

        });

        axios.get(`/others`).then(res => {
            if (res.data.status === 200) {
                setothersArray(res.data.others)
            }
            axios.get(`/ischaemic-risk-factor`).then(res => {
                if (res.status === 200) {
                    setRiskFactorArray(res.data.riskFactor);
                }

            });

        });
    }, [])

    const [heartSoundArray, setheartSoundArray] = useState([])
    const [murmurArray, setmurmurArray] = useState([])
    const [volumeArray, setvolumeArray] = useState([])

    const [radiationArray, setradiationArray] = useState([])
    const [othersArray, setothersArray] = useState([])
    const [riskFactorArray, setRiskFactorArray] = useState([])

    console.log("historyListCheckBox", historyListCheckBox)
    console.log("dyspnea", dyspnea)
    console.log("Riskfector", riskFactor)

    const [saveLoading, setsaveLoading] = useState(false)
    const saveCardivascular = () => {

        setsaveLoading(true)

        const formData = new FormData();

        formData.append('patient_id', props.patient_id);

        formData.append('cardiovascular_history', historyListCheckBox);
        formData.append('dyspnea', dyspnea);
        formData.append('riskfector', riskFactor);

        formData.append('brachial_Right', inputField.brachial_Right);
        formData.append('brachial_left', inputField.brachial_left);
        formData.append('radial_Right', inputField.radial_Right);
        formData.append('radial_left', inputField.radial_left);
        formData.append('posterior_tibialis_Right', inputField.posterior_tibialis_Right);
        formData.append('posterior_tibialis_left', inputField.posterior_tibialis_left);
        formData.append('dorsalis_pedis_Right', inputField.dorsalis_pedis_Right);
        formData.append('dorsalis_pedis_left', inputField.dorsalis_pedis_left);
        formData.append('femoral_Right', inputField.femoral_Right);
        formData.append('femoral_left', inputField.femoral_left);
        formData.append('popliteal_Right', inputField.popliteal_Right);
        formData.append('popliteal_left', inputField.popliteal_left);
        formData.append('jvp', inputField.jvp);
        formData.append('notes', inputField.notes);
        formData.append('is_ajr', inputField.is_ajr === true ? 1 : 0);
        formData.append('is_radio_factory_delay', inputField.is_radio_factory_delay === true ? 1 : 0);
        formData.append('is_pacemaker_box', inputField.is_pacemaker_box === true ? 1 : 0);
        formData.append('is_calf_tenderness', inputField.is_calf_tenderness === true ? 1 : 0);
        formData.append('is_trendelenburg_test', inputField.is_trendelenburg_test === true ? 1 : 0);
        formData.append('is_varicose_veins', inputField.is_varicose_veins === true ? 1 : 0);
        formData.append('carotid_bruit', carotid);
        formData.append('apex_beat', beat);
        formData.append('intercostal_space', interCostal);
        formData.append('heart_sound', heartSound);
        formData.append('murmur', murmur);
        formData.append('volume', volum);
        formData.append('radiations', radiation);

        axios.post('/save-cardivascular', formData).then(res => {
            console.log("res", res)
            props.setcardivascularPropsValue(res.data.cardiovascular)
            for (const [key, value] of Object.entries(historyListCheckBox)) {
                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('cardiovascular_id', res.data.cardiovascular.id);
                formData.append('history_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-cardivascular-history', formData).then(res => {

                })
            }

            for (const [key, value] of Object.entries(othersCheckBoxdefultValue)) {
                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('cardiovascular_id', res.data.cardiovascular.id);
                formData.append('other_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-cardivascular-other', formData).then(res => {

                })
            }


            toast.success(res.data.message)

        })
    }

    return (
        <div className='row'>
            <div className='history-main-header d-flex justify-content-between mb-2'>
                <div>
                    <h6>Cardiovascular</h6>
                </div>
                <div>
                    <img src={clinic3} alt="" className="img-fluid" />
                </div>
            </div>
            <div className="col-2">
                <div className='he-history p-1'>
                    <input type="text" placeholder="History" className="form-control form-control-sm mt-1 mb-2" />

                    <ul className={`g-doc-scroll ${historyShowAll ? "full-height" : "half-height"}`}>
                        <li >
                            <div className="mt-2">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">Dyspnea</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange14(!change14); setDyspnea([]) }}
                                                id="togBtn"
                                            />
                                            <div onClick={(e) => setAnchorEl14(e.currentTarget)} className="slider round"></div>
                                            {
                                                change14 &&
                                                <Popover
                                                    id={id14}
                                                    open={open14}
                                                    anchorEl={anchorEl14}
                                                    onClose={() => setAnchorEl14(null)}
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
                                                        {
                                                            othersArray.length > 0 &&
                                                            othersArray.map((item, i) => {
                                                                return (
                                                                    <div key={i} className="form-check ms-1">
                                                                        <input className="form-check-input" value={item.others_name} type="checkbox" name={item.id} onChange={e => {
                                                                            const { checked, value } = e.target;
                                                                            if (checked) {
                                                                                setDyspnea([...dyspnea, value])
                                                                            } else {
                                                                                const dataNe = dyspnea.filter(item => item !== value)
                                                                                setDyspnea(dataNe)
                                                                            }
                                                                        }} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {item.others_name}
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
                                        dyspnea &&
                                        Object.keys(dyspnea).map((item, i) => <p key={i}>{dyspnea[item]}</p>)
                                    }
                                </div>
                            </div>
                        </li>
                        <li >
                            <div className="mt-2">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75 text-left">Ischaemic heart disease risk factor</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange13(!change13); setRiskFactor([]) }}
                                                id="togBtn"
                                            />
                                            <div onClick={(e) => setAnchorEl13(e.currentTarget)} className="slider round"></div>
                                            {
                                                change13 &&
                                                <Popover
                                                    id={id13}
                                                    open={open13}
                                                    anchorEl={anchorEl13}
                                                    onClose={() => setAnchorEl13(null)}
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
                                                        {
                                                            riskFactorArray.length > 0 &&
                                                            riskFactorArray.map((item, i) => {
                                                                return (
                                                                    <div key={i} className="form-check ms-1">
                                                                        <input className="form-check-input" value={item.name} type="checkbox" name={item.id} onChange={e => {
                                                                            const { checked, value } = e.target;
                                                                            if (checked) {
                                                                                setRiskFactor([...riskFactor, value])
                                                                            } else {
                                                                                const dataNe = riskFactor.filter(item => item !== value)
                                                                                setRiskFactor(dataNe)
                                                                            }
                                                                        }} id="flexRadioDefault1" />
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
                                        riskFactor &&
                                        Object.keys(riskFactor).map((item, i) => <p key={i}>{riskFactor[item]}</p>)
                                    }
                                </div>
                            </div>
                        </li>

                        {
                            historyList.length > 0 ?
                                historyList.map((item, i) => <li>
                                    <div key={i} className='d-flex justify-content-between'>
                                        <p className='w-75'>{item.history_name}</p>
                                        <div className='ms-1'>
                                            <label className="switch me-1">
                                                <input type="checkbox" name={item.id} value={item.history_name} onChange={e => {
                                                    const { checked, value } = e.target;
                                                    if (checked) {
                                                        sethistoryListCheckBox([...historyListCheckBox, value])
                                                    } else {
                                                        const dataNe = historyListCheckBox.filter(item => item !== value)
                                                        sethistoryListCheckBox(dataNe)
                                                    }
                                                }} id="togBtn" />
                                                <div className="slider round"></div>
                                            </label>
                                        </div>
                                    </div>
                                </li>)
                                :
                                <i style={{ fontSize: "26px", marginLeft: "40%" }} class="fas fa-spinner fa-spin"></i>
                        }
                    </ul>
                    {
                        !historyShowAll ?
                            <span onClick={() => setHistoryShowAll(!historyShowAll)} className="history-see-all">Show All <i className="ms-1 far fa-angle-down"></i></span>
                            :
                            <span onClick={() => setHistoryShowAll(!historyShowAll)} className="history-see-all">Show Less <i className="ms-1 far fa-angle-up"></i></span>
                    }
                </div>
            </div>
            <div className="col-10">
                <div className='history-main-header mb-2'>
                    <div className="d-flex">
                        <input type="text" placeholder='Examination Search' className="form-control form-control-sm w-75" />
                        <div className="w-25">
                            <button onClick={() => setsaveLoading(false)} className="vaital-setup-btn-cancel float-end">Reset</button>
                            {
                                saveLoading ?
                                    <button className="vaital-setup-btn float-end me-2"><i className="fas fa-check-circle"></i></button>
                                    :
                                    <button onClick={saveCardivascular} className="vaital-setup-btn float-end me-2">Save</button>
                            }
                        </div>
                    </div>
                </div>
                <div className="row">
                    <div className="col-3 cardio-exam-container">
                        <div className="exam-bg-white mt-1 p-1">
                            <div className='d-flex justify-content-between'>
                                <p>Carotid bruit</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input onChange={() => {
                                            setChange(!change);
                                            setCarotid("")
                                        }
                                        } type="checkbox" id="togBtn" />
                                        <div onClick={handleClick} className="slider round"></div>
                                        {
                                            change &&
                                            <Popover
                                                id={id}
                                                open={open}
                                                anchorEl={anchorEl}
                                                onClose={handleClose}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="history-select-popup">
                                                    {
                                                        carotidArray.length > 0 &&
                                                        carotidArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check">
                                                                    <input className="form-check-input" value={item.carotid_name} type="radio" name="Carotid" onChange={(e) => setCarotid(e.target.value)} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.carotid_name}
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
                            <div className='history-popup-value'>
                                <span className=' mx-auto'>{carotid}</span>
                            </div>
                        </div>
                        <div className="exam-bg-white mt-1 p-1">
                            <div className='d-flex justify-content-between'>
                                <p>Apex beat</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input onChange={() => setChange1(!change1)} type="checkbox" id="togBtn" />
                                        <div onClick={handleClick1} className="slider round"></div>
                                        {
                                            change1 &&

                                            <Popover
                                                id={id1}
                                                open={open1}
                                                anchorEl={anchorEl1}
                                                onClose={handleClose1}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="history-select-popup">
                                                    {
                                                        apexBeatArray.length > 0 &&
                                                        apexBeatArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check">
                                                                    <input className="form-check-input" value="3rd" type="radio" name="Carotid" onChange={(e) => setBeat(e.target.value)} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.apex_beat_name}
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
                            <div className='history-popup-value'>
                                <span className=' mx-auto'>{beat}</span>
                            </div>
                        </div>
                        <div className="exam-bg-white mt-1 p-1">
                            <div className='d-flex justify-content-between'>
                                <p>Apex beat quality</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input onChange={() => { setChange2(!change2); setInterCostal("") }} type="checkbox" id="togBtn" />
                                        <div onClick={handleClick2} className="slider round"></div>
                                        {
                                            change2 &&

                                            <Popover
                                                id={id2}
                                                open={open2}
                                                anchorEl={anchorEl2}
                                                onClose={handleClose2}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="history-select-popup">

                                                    {
                                                        intercostalArray.length > 0 &&
                                                        intercostalArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check">
                                                                    <input className="form-check-input" value="Displaced" type="radio" name="Carotid" onChange={(e) => setInterCostal(e.target.value)} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.intercostal_space_name}
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
                            <div className='history-popup-value'>
                                <span className=' mx-auto'>{interCostal}</span>
                            </div>
                        </div>
                        <div className="exam-bg-white mt-1 p-1">
                            <div className='d-flex justify-content-between'>
                                <p>Heart sound</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input onChange={() => { setChange3(!change3); setHeartSound("") }} type="checkbox" id="togBtn" />
                                        <div onClick={handleClick3} className="slider round"></div>
                                        {
                                            change3 &&

                                            <Popover
                                                id={id3}
                                                open={open3}
                                                anchorEl={anchorEl3}
                                                onClose={handleClose3}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="history-select-popup">
                                                    {
                                                        heartSoundArray.length > 0 &&
                                                        heartSoundArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check">
                                                                    <input className="form-check-input" value={item.heartSound_name} type="radio" name="Carotid" onChange={(e) => setHeartSound(e.target.value)} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.heartSound_name}
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
                            <div className='history-popup-value'>
                                <span className=' mx-auto'>{heartSound}</span>
                            </div>
                        </div>
                        <div className="exam-bg-white mt-1 p-1">
                            <div className='d-flex justify-content-between'>
                                <p>Murmur</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input onChange={() => { setChange4(!change4); setMurmur("") }} type="checkbox" id="togBtn" />
                                        <div onClick={handleClick4} className="slider round"></div>
                                        {
                                            change4 &&

                                            <Popover
                                                id={id4}
                                                open={open4}
                                                anchorEl={anchorEl4}
                                                onClose={handleClose4}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="history-select-popup">

                                                    {
                                                        murmurArray.length > 0 &&
                                                        murmurArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check">
                                                                    <input className="form-check-input" value={item.murmur_name} type="radio" name="Carotid" onChange={(e) => setMurmur(e.target.value)} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.murmur_name}
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
                            <div className='history-popup-value'>
                                <span className=' mx-auto'>{murmur}</span>
                            </div>
                        </div>
                        <div className="exam-bg-white mt-1 p-1">
                            <div className='d-flex justify-content-between'>
                                <p>Volume</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input onChange={() => { setChange5(!change5); setVolum("") }} type="checkbox" id="togBtn" />
                                        <div onClick={handleClick5} className="slider round"></div>
                                        {
                                            change5 &&

                                            <Popover
                                                id={id5}
                                                open={open5}
                                                anchorEl={anchorEl5}
                                                onClose={handleClose5}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="history-select-popup">
                                                    {
                                                        volumeArray.length > 0 &&
                                                        volumeArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check">
                                                                    <input className="form-check-input" value={item.volume_name} type="radio" name="Carotid" onChange={(e) => setVolum(e.target.value)} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.volume_name}
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
                            <div className='history-popup-value'>
                                <span className=' mx-auto'>{volum}</span>
                            </div>
                        </div>
                        <div className="exam-bg-white mt-1 p-1">
                            <div className='d-flex justify-content-between'>
                                <p>Radiations</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input onChange={() => { setChange6(!change6); setRadiation(); }} type="checkbox" id="togBtn" />
                                        <div onClick={handleClick6} className="slider round"></div>
                                        {
                                            change6 &&

                                            <Popover
                                                id={id6}
                                                open={open6}
                                                anchorEl={anchorEl6}
                                                onClose={handleClose6}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="history-select-popup">

                                                    {
                                                        radiationArray.length > 0 &&
                                                        radiationArray.map((item, i) => {
                                                            return (
                                                                <div key={i} className="form-check" >
                                                                    <input className="form-check-input" value={item.rediation_name} type="radio" name="Carotid" onChange={(e) => setRadiation(e.target.value)} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {item.rediation_name}
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
                            <div className='history-popup-value'>
                                <span className=' mx-auto'>{radiation}</span>
                            </div>
                        </div>
                    </div>
                    <div className="col-9">
                        <div className="row cardio-peripherial p-1 exam-bg-white">
                            <h6>Peripherial Pulses</h6>
                            <div className="col-4">
                                <div className="exam-bg-white p-1 mt-2">
                                    <div className="d-flex justify-content-between">
                                        <p className="w-75">Brachial</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input
                                                    name="Jaundiced"
                                                    value="Jaundiced"
                                                    type="checkbox"
                                                    onChange={(e) => { setChange7(!change7); setinputField({ ...inputField, brachial_Right: '', brachial_left: '' }); }}
                                                    id="togBtn"
                                                />
                                                <div onClick={(e) => setAnchorEl7(e.currentTarget)} className="slider round"></div>
                                                {
                                                    change7 &&
                                                    <Popover
                                                        id={id7}
                                                        open={open7}
                                                        anchorEl={anchorEl7}
                                                        onClose={() => setAnchorEl7(null)}
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
                                                            <div className="row">
                                                                <div className="col-6">
                                                                    <h6>Left</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right" onChange={e => setinputField({ ...inputField, brachial_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right" onChange={e => setinputField({ ...inputField, brachial_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right" onChange={e => setinputField({ ...inputField, brachial_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right" onChange={e => setinputField({ ...inputField, brachial_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <h6>Right</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right1" onChange={e => setinputField({ ...inputField, brachial_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right1" onChange={e => setinputField({ ...inputField, brachial_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, brachial_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, brachial_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>
                                    </div>
                                    <div className="history-popup-value">
                                        {
                                            inputField.brachial_left &&
                                            <p className='me-1'> {inputField.brachial_left && <span>Left : </span>} {inputField.brachial_left}</p>
                                        }
                                        {
                                            inputField.brachial_Right &&
                                            <p className='me-1'> {inputField.brachial_Right && <span>Right : </span>} {inputField.brachial_Right}</p>
                                        }
                                    </div>
                                </div>
                                <div className="exam-bg-white p-1 mt-2">
                                    <div className="d-flex justify-content-between">
                                        <p className="w-75">Radial</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input
                                                    name="Jaundiced"
                                                    value="Jaundiced"
                                                    type="checkbox"
                                                    onChange={(e) => { setChange10(!change10); setinputField({ ...inputField, radial_Right: '', radial_left: '' }); }}
                                                    id="togBtn"
                                                />
                                                <div onClick={(e) => setAnchorEl10(e.currentTarget)} className="slider round"></div>
                                                {
                                                    change10 &&
                                                    <Popover
                                                        id={id10}
                                                        open={open10}
                                                        anchorEl={anchorEl10}
                                                        onClose={() => setAnchorEl10(null)}
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
                                                            <div className="row">
                                                                <div className="col-6">
                                                                    <h6>Left</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right" onChange={e => setinputField({ ...inputField, radial_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right" onChange={e => setinputField({ ...inputField, radial_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right" onChange={e => setinputField({ ...inputField, radial_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right" onChange={e => setinputField({ ...inputField, radial_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <h6>Right</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right1" onChange={e => setinputField({ ...inputField, radial_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right1" onChange={e => setinputField({ ...inputField, radial_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, radial_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, radial_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>
                                    </div>
                                    <div className="history-popup-value">
                                        {
                                            inputField.radial_left &&
                                            <p className='me-1'>  <span>Left : </span> {inputField.radial_left}</p>
                                        }
                                        {
                                            inputField.radial_Right &&
                                            <p className='me-1'><span>Right : </span> {inputField.radial_Right}</p>
                                        }
                                    </div>
                                </div>

                            </div>
                            <div className="col-4">
                                <div className="exam-bg-white p-1 mt-2">
                                    <div className="d-flex justify-content-between">
                                        <p className="w-75">Posterior Tibialis</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input
                                                    name="Jaundiced"
                                                    value="Jaundiced"
                                                    type="checkbox"
                                                    onChange={(e) => { setChange8(!change8); setinputField({ ...inputField, posterior_tibialis_Right: '', posterior_tibialis_left: '' }); }}
                                                    id="togBtn"
                                                />
                                                <div onClick={(e) => setAnchorEl8(e.currentTarget)} className="slider round"></div>
                                                {
                                                    change8 &&
                                                    <Popover
                                                        id={id8}
                                                        open={open8}
                                                        anchorEl={anchorEl8}
                                                        onClose={() => setAnchorEl8(null)}
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
                                                            <div className="row">
                                                                <div className="col-6">
                                                                    <h6>Left</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right" onChange={e => setinputField({ ...inputField, posterior_tibialis_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right" onChange={e => setinputField({ ...inputField, posterior_tibialis_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right" onChange={e => setinputField({ ...inputField, posterior_tibialis_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right" onChange={e => setinputField({ ...inputField, posterior_tibialis_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <h6>Right</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right1" onChange={e => setinputField({ ...inputField, posterior_tibialis_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right1" onChange={e => setinputField({ ...inputField, posterior_tibialis_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, posterior_tibialis_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, posterior_tibialis_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>
                                    </div>
                                    <div className="history-popup-value">
                                        {
                                            inputField.posterior_tibialis_left &&
                                            <p className='me-1'>  <span>Left : </span> {inputField.posterior_tibialis_left}</p>
                                        }
                                        {
                                            inputField.posterior_tibialis_Right &&
                                            <p className='me-1'>  <span>Right : </span> {inputField.posterior_tibialis_Right}</p>
                                        }
                                    </div>
                                </div>
                                <div className="exam-bg-white p-1 mt-2">
                                    <div className="d-flex justify-content-between">
                                        <p className="w-75">Popliteal pulse</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input
                                                    name="Jaundiced"
                                                    value="Jaundiced"
                                                    type="checkbox"
                                                    onChange={(e) => { setChange9(!change9); setinputField({ ...inputField, dorsalis_pedis_Right: '', dorsalis_pedis_left: '' }); }}
                                                    id="togBtn"
                                                />
                                                <div onClick={(e) => setAnchorEl9(e.currentTarget)} className="slider round"></div>
                                                {
                                                    change9 &&
                                                    <Popover
                                                        id={id9}
                                                        open={open9}
                                                        anchorEl={anchorEl9}
                                                        onClose={() => setAnchorEl9(null)}
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
                                                            <div className="row">
                                                                <div className="col-6">
                                                                    <h6>Left</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right" onChange={e => setinputField({ ...inputField, dorsalis_pedis_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right" onChange={e => setinputField({ ...inputField, dorsalis_pedis_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right" onChange={e => setinputField({ ...inputField, dorsalis_pedis_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right" onChange={e => setinputField({ ...inputField, dorsalis_pedis_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <h6>Right</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right1" onChange={e => setinputField({ ...inputField, dorsalis_pedis_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right1" onChange={e => setinputField({ ...inputField, dorsalis_pedis_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, dorsalis_pedis_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, dorsalis_pedis_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>
                                    </div>
                                    <div className="history-popup-value">
                                        {
                                            inputField.dorsalis_pedis_left &&
                                            <p className='me-1'> <span>Left : </span> {inputField.dorsalis_pedis_left}</p>
                                        }
                                        {
                                            inputField.dorsalis_pedis_Right &&
                                            <p className='me-1'> <span>Right : </span> {inputField.dorsalis_pedis_Right}</p>
                                        }

                                    </div>
                                </div>
                            </div>
                            <div className="col-4">
                                <div className="exam-bg-white p-1 mt-2">
                                    <div className="d-flex justify-content-between">
                                        <p className="w-75">Femoral</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input
                                                    name="Jaundiced"
                                                    value="Jaundiced"
                                                    type="checkbox"
                                                    onChange={(e) => { setChange11(!change11); setinputField({ ...inputField, femoral_Right: '', femoral_left: '' }); }}
                                                    id="togBtn"
                                                />
                                                <div onClick={(e) => setAnchorEl11(e.currentTarget)} className="slider round"></div>
                                                {
                                                    change11 &&
                                                    <Popover
                                                        id={id11}
                                                        open={open11}
                                                        anchorEl={anchorEl11}
                                                        onClose={() => setAnchorEl11(null)}
                                                        anchorOrigin={{
                                                            vertical: 'center',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="left-popup">
                                                            <div className="row">
                                                                <div className="col-6">
                                                                    <h6>Left</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right" onChange={e => setinputField({ ...inputField, femoral_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right" onChange={e => setinputField({ ...inputField, femoral_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right" onChange={e => setinputField({ ...inputField, femoral_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right" onChange={e => setinputField({ ...inputField, femoral_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <h6>Right</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right1" onChange={e => setinputField({ ...inputField, femoral_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right1" onChange={e => setinputField({ ...inputField, femoral_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, femoral_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, femoral_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>
                                    </div>
                                    <div className="history-popup-value">
                                        {
                                            inputField.femoral_left &&
                                            <p className='me-1'> <span>Left : </span> {inputField.femoral_left}</p>
                                        }
                                        {
                                            inputField.femoral_Right &&
                                            <p className='me-1'> <span>Right : </span> {inputField.femoral_Right}</p>
                                        }
                                    </div>

                                </div>
                                <div className="exam-bg-white p-1 mt-2">
                                    <div className="d-flex justify-content-between">
                                        <p className="w-75">Dorsalis pedis</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input
                                                    name="Jaundiced"
                                                    value="Jaundiced"
                                                    type="checkbox"
                                                    onChange={(e) => { setChange12(!change12); setinputField({ ...inputField, popliteal_Right: '', popliteal_left: '' }); }}
                                                    id="togBtn"
                                                />
                                                <div onClick={(e) => setAnchorEl12(e.currentTarget)} className="slider round"></div>
                                                {
                                                    change12 &&
                                                    <Popover
                                                        id={id12}
                                                        open={open12}
                                                        anchorEl={anchorEl12}
                                                        onClose={() => setAnchorEl12(null)}
                                                        anchorOrigin={{
                                                            vertical: 'center',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="left-popup">
                                                            <div className="row">
                                                                <div className="col-6">
                                                                    <h6>Left</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right1" onChange={e => setinputField({ ...inputField, popliteal_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right1" onChange={e => setinputField({ ...inputField, popliteal_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, popliteal_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right1" onChange={e => setinputField({ ...inputField, popliteal_left: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <h6>Right</h6>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="-" type="radio" name="right" onChange={e => setinputField({ ...inputField, popliteal_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            -
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+" type="radio" name="right" onChange={e => setinputField({ ...inputField, popliteal_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="++" type="radio" name="right" onChange={e => setinputField({ ...inputField, popliteal_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            ++
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check ms-1">
                                                                        <input className="form-check-input" value="+++" type="radio" name="right" onChange={e => setinputField({ ...inputField, popliteal_Right: e.target.value })} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            +++
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>
                                    </div>
                                    <div className="history-popup-value">
                                        {
                                            inputField.popliteal_left &&
                                            <p className='me-1'> <span>Left : </span>{inputField.popliteal_left}</p>
                                        }
                                        {
                                            inputField.popliteal_Right &&
                                            <p className='me-1'> <span>Right : </span>{inputField.popliteal_Right}</p>
                                        }
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div className="row mt-2">
                            <div className="col-4">
                                <div className="exam-bg-white p-1">
                                    <div className="row">
                                        <div className="col-9 row">
                                            <div className="col-3">
                                                <label >JVP</label>
                                            </div>
                                            <div className="col-9">
                                                <input
                                                    onChange={e => setinputField({ ...inputField, jvp: e.target.value })}
                                                    type="text" className="form-control form-control-sm" aria-label="Right" />
                                            </div>
                                        </div>
                                        <div className="col-3">
                                            <span>cm</span>
                                        </div>
                                    </div>
                                </div>
                                <div className="exam-bg-white p-1 mt-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Accelerated Junctional Rhythm</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={(e) => setinputField({ ...inputField, is_ajr: !inputField.is_ajr })} type="checkbox" id="togBtn" />
                                                <div className="slider round"></div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="col-4">
                                <div className="exam-bg-white p-1 mt-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Radio factory delay</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={(e) => setinputField({ ...inputField, is_radio_factory_delay: !inputField.is_radio_factory_delay })} type="checkbox" id="togBtn" />
                                                <div className="slider round"></div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div className="exam-bg-white p-1 mt-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Pacemaker box</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={(e) => setinputField({ ...inputField, is_pacemaker_box: !inputField.is_pacemaker_box })} type="checkbox" id="togBtn" />
                                                <div className="slider round"></div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="col-4">
                                <div className="exam-bg-white p-1 mt-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Calf tenderness</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={(e) => setinputField({ ...inputField, is_calf_tenderness: !inputField.is_calf_tenderness })} type="checkbox" id="togBtn" />
                                                <div className="slider round"></div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div className="exam-bg-white p-1 mt-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Trendelenburg test</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={(e) => setinputField({ ...inputField, is_trendelenburg_test: !inputField.is_trendelenburg_test })} type="checkbox" id="togBtn" />
                                                <div className="slider round"></div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div className="exam-bg-white p-1 mt-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Varicose veins</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={(e) => setinputField({ ...inputField, is_varicose_veins: !inputField.is_varicose_veins })} type="checkbox" id="togBtn" />
                                                <div className="slider round"></div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className='mt-1'>
                                <div className="form-floating">
                                    <textarea
                                        onChange={e => setinputField({ ...inputField, notes: e.target.value })}
                                        className="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style={{ height: "100px" }}></textarea>
                                    <label for="floatingTextarea2">Write Notes</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div >
    );
};

export default Cardiovascular;