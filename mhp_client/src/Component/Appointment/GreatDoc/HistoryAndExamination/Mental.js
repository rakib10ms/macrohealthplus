import React, { useEffect, useState } from 'react';
import clinic4 from "../../../../Images/Mentalicon.png";
import { Popover } from '@mui/material';
import axios from 'axios';
import PHQ from './PHQ';
import { toast } from 'react-toastify';
import GpCog from './GpCog';
import Madrs from './Madrs';
import Hdrs from './Hdrs';

const Mental = (props) => {
    const [historyShowAll, setHistoryShowAll] = useState(true);
    const [historyValue, setHistoryValue] = useState({});

    const [modalIsOpen, setIsOpen] = useState(false);
    const [gpCogIsOpen, setGpCogIsOpen] = useState(false);
    const [madrsIsOpen, setMadrsIsOpen] = useState(false);
    const [hdrsIsOpen,setHdrsIsOpen]=useState(false);

    const [history, setHistory] = useState([]);
    const [appearance, setAppearance] = useState({});
    const [mood, setMood] = useState({});
    const [speech, setSpeech] = useState({});
    const [behaviour, setBehaviour] = useState({});
    const [affect, setAffect] = useState({});
    const [perceptual, setPerceptual] = useState({});
    const [attitude, setAttitude] = useState({});
    const [appropriteness, setAppropriteness] = useState({});

    const [appearanceArray, setAppearanceArray] = useState([]);
    const [moodArray, setModdArray] = useState([]);
    const [speechArray, setSpeechArray] = useState([]);
    const [behaviourArray, setBehaviourArray] = useState([]);
    const [affectArray, setAffectArray] = useState([]);
    const [perceptualArray, setPerceptualArray] = useState([]);
    const [attitudeArray, setAttitudeArray] = useState([]);
    const [appropritenessArray, setAppropritenessArray] = useState([]);

    useEffect(() => {
        axios.get(`/commonHistory-all/Mental`).then(res => {
            console.log("commonHistory-Mental", res.data.commonHistory)
            setHistory(res.data.commonHistory)
        });
        axios.get(`/appearance`).then(res => {
            if (res.data.status === 200) {
                setAppearanceArray(res.data.appearance);
            }

        });
        axios.get(`/mood`).then(res => {
            if (res.data.status === 200) {
                setModdArray(res.data.mood);
            }

        });
        axios.get(`/speech`).then(res => {
            if (res.data.status === 200) {
                setSpeechArray(res.data.speech);
            }

        });
        axios.get(`/behaviour`).then(res => {
            if (res.data.status === 200) {
                setBehaviourArray(res.data.behaviour);
            }

        });
        axios.get(`/affect`).then(res => {
            if (res.data.status === 200) {
                setAffectArray(res.data.affect);
            }

        });
        axios.get(`/perceptual`).then(res => {
            if (res.data.status === 200) {
                setPerceptualArray(res.data.perceptual);
            }

        });
        axios.get(`/attitute`).then(res => {
            if (res.data.status === 200) {
                setAttitudeArray(res.data.attitute);
            }

        });
        axios.get(`/appropriteness`).then(res => {
            if (res.data.status === 200) {
                setAppropritenessArray(res.data.appropriteness);
            }

        });

    }, []);
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
    const [change5, setChange5] = useState(false);
    const [anchorEl5, setAnchorEl5] = useState(null);
    const open5 = Boolean(anchorEl5);
    const id5 = open5 ? 'simple-popover' : undefined;
    //
    const [change6, setChange6] = useState(false);
    const [anchorEl6, setAnchorEl6] = useState(null);
    const open6 = Boolean(anchorEl6);
    const id6 = open6 ? 'simple-popover' : undefined;
    //
    const [change7, setChange7] = useState(false);
    const [anchorEl7, setAnchorEl7] = useState(null);
    const open7 = Boolean(anchorEl7);
    const id7 = open7 ? 'simple-popover' : undefined;

    function openModal() {
        setIsOpen(true);
    }
    function closeModal() {
        setIsOpen(false);
    }

    // GPCog Modal
    function openGpCogModal() {
        setGpCogIsOpen(true);
    }
    function closeGpCogModal() {
        setGpCogIsOpen(false);
    }


    // Madrs Modal
    function openMadrsModal() {
        setMadrsIsOpen(true);
    }
    function closeMadrsModal() {
        setMadrsIsOpen(false);
    }

    // hdrs modal
    function openHdrsModal(){
        setHdrsIsOpen(true);
    }
    function closeHdrsModal(){
        setHdrsIsOpen(false);
    }

    const [saveLoding, setsaveLoding] = useState(false)

    const [psq9ques1st, setpsq9ques1st] = useState()
    const [psq9ques2nd, setpsq9ques2nd] = useState()
    const [questotal1st, setquestotal1st] = useState()
    const [questotal2d, setquestotal2d] = useState()



    const Psq9TableObjvalue1st = (val) => {
        console.log("Psq9TableObjvalue1st", val)
        setpsq9ques1st(val)
    }
    const Psq9TableObjvalue2nd = (val) => {
        setpsq9ques2nd(val)
    }
    const total1st = (val) => {
        setquestotal1st(val)
    }

    const total2nd = (val) => {
        setquestotal2d(val)
    }

    const saveMentalData = () => {
        setsaveLoding(true)
        const formData = new FormData();
        formData.append('patient_id', props.patient_id);
        axios.post('/save-mental-health', formData).then(res => {
            console.log("Mental", res.data)
            for (const [key, value] of Object.entries(historyValue)) {
                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('history_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-mental-history', formData).then(res => {
                    console.log("Mental History", res.data)
                })
            }

            for (const [key, value] of Object.entries(appearance)) {
                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('appearance_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-mental-appearance', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }

            for (const [key, value] of Object.entries(behaviour)) {

                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('appearance_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-mental-appearance', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }

            for (const [key, value] of Object.entries(attitude)) {

                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('attitudetowardsexamination_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-mental-attitudetoward', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }


            for (const [key, value] of Object.entries(mood)) {

                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('mood_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-mental-moods', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }

            for (const [key, value] of Object.entries(affect)) {

                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('affect_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-mental-affect', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }

            for (const [key, value] of Object.entries(speech)) {

                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('speeche_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-mental-speeche', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }


            for (const [key, value] of Object.entries(perceptual)) {

                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('perceptual_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-mental-perceptual', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }


            for (const [key, value] of Object.entries(psq9ques1st)) {

                const formData = new FormData();

                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('psq9question_id', `${key}`);
                formData.append('question_value_id', `${value}`);
                formData.append('total_score', questotal1st);

                axios.post('save-mental-psq9-1st', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }

            for (const [key, value] of Object.entries(psq9ques2nd)) {

                const formData = new FormData();

                formData.append('patient_id', props.patient_id);
                formData.append('mental_health_id', res.data.mental.id);
                formData.append('psq9question_id', `${key}`);
                formData.append('question_value_id', `${value}`);
                formData.append('total_score', questotal2d);

                axios.post('save-mental-psq9-1st', formData).then(res => {
                    console.log("Mental appearance", res.data)
                })
            }


            toast.success(res.data.message)

        })

    }


    return (
        <div className='row'>
            <div className="history-main-header d-flex justify-content-between mb-2">
                <div>
                    <h6>Mental Health</h6>
                </div>
                <div>
                    <img src={clinic4} alt="" className="img-fluid" />
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
                                                    onChange={(e) => setHistoryValue(historyValue[e.target.name] ? { ...historyValue, [e.target.name]: false } : { ...historyValue, [e.target.name]: true })}
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
                <div className='history-main-header mb-2'>
                    <div className="d-flex">
                        <input type="text" placeholder='Examination Search' className="form-control form-control-sm w-75" />
                        <div className="w-25">
                            <button onClick={() => setsaveLoding(false)} className="vaital-setup-btn-cancel float-end">Reset</button>
                            {
                                saveLoding ?
                                    <button className="vaital-setup-btn float-end me-2"><i class="fas fa-check-circle"></i></button>
                                    :
                                    <button onClick={saveMentalData} className="vaital-setup-btn float-end me-2">Save</button>
                            }
                        </div>
                    </div>
                </div>
                <div className="row">
                    <div className="col-4">
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Appearance</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange(!change); setAppearance({}) }}
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
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}

                                                className="mt-2"
                                            >
                                                <div className="left-popup">
                                                    {
                                                        appearanceArray.length > 0 &&
                                                        appearanceArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.appearance_name} type="checkbox" name={item.id} onChange={(e) => { setAppearance(appearance[e.target.name] ? { ...appearance, [e.target.name]: "" } : { ...appearance, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.appearance_name}
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
                                <div className="">
                                    {
                                        Object.keys(appearance).map((item, i) =>
                                            <p key={i}>{appearance[item]}</p>
                                        )
                                    }
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Mood</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange1(!change1); setMood({}) }}
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
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}

                                                className="mt-2"
                                            >
                                                <div className="left-popup">
                                                    {
                                                        moodArray.length > 0 &&
                                                        moodArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.mood_name} type="checkbox" name={item.id} onChange={(e) => { setMood(mood[e.target.name] ? { ...mood, [e.target.name]: "" } : { ...mood, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.mood_name}
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
                                <div className="">
                                    {
                                        Object.keys(mood).map((item, i) =>
                                            <p key={i}>{mood[item]}</p>
                                        )
                                    }
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Speech</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange2(!change2); setSpeech({}) }}
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
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}

                                                className="mt-2"
                                            >
                                                <div className="left-popup">
                                                    {
                                                        speechArray.length > 0 &&
                                                        speechArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.speech_name} type="checkbox" name={item.id} onChange={(e) => { setSpeech(speech[e.target.name] ? { ...speech, [e.target.name]: "" } : { ...speech, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.speech_name}
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
                                <div className="">
                                    {
                                        Object.keys(speech).map((item, i) =>
                                            <p key={i}>{speech[item]}</p>
                                        )
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Behaviour</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange3(!change3); setBehaviour({}) }}
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
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}

                                                className="mt-2"
                                            >
                                                <div className="left-popup">
                                                    {
                                                        behaviourArray.length > 0 &&
                                                        behaviourArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.behaviour_name} type="checkbox" name={item.id} onChange={(e) => { setBehaviour(behaviour[e.target.name] ? { ...behaviour, [e.target.name]: "" } : { ...behaviour, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.behaviour_name}
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
                                <div className="">
                                    {
                                        Object.keys(behaviour).map((item, i) =>
                                            <p key={i}>{behaviour[item]}</p>
                                        )
                                    }
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Affect</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange4(!change4); setAffect({}) }}
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
                                                    horizontal: 'left',
                                                }}

                                                className="mt-2"
                                            >
                                                <div className="left-popup">
                                                    {
                                                        affectArray.length > 0 &&
                                                        affectArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.affect_name} type="checkbox" name={item.id} onChange={(e) => { setAffect(affect[e.target.name] ? { ...affect, [e.target.name]: "" } : { ...affect, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.affect_name}
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
                                <div className="">
                                    {
                                        Object.keys(affect).map((item, i) =>
                                            <p key={i}>{affect[item]}</p>
                                        )
                                    }
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Perceptual Disturbances</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange5(!change5); setPerceptual({}) }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl5(e.currentTarget)} className="slider round"></div>
                                        {
                                            change5 &&
                                            <Popover
                                                id={id5}
                                                open={open5}
                                                anchorEl={anchorEl5}
                                                onClose={() => setAnchorEl5(null)}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}

                                                className="mt-2"
                                            >
                                                <div className="left-popup">
                                                    {
                                                        perceptualArray.length > 0 &&
                                                        perceptualArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.perceptual_name} type="checkbox" name={item.id} onChange={(e) => { setPerceptual(perceptual[e.target.name] ? { ...perceptual, [e.target.name]: "" } : { ...perceptual, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.perceptual_name}
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
                                <div className="">
                                    {
                                        Object.keys(perceptual).map((item, i) =>
                                            <p key={i}>{perceptual[item]}</p>
                                        )
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Attitude towards examination</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange6(!change6); setAttitude({}) }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl6(e.currentTarget)} className="slider round"></div>
                                        {
                                            change6 &&
                                            <Popover
                                                id={id6}
                                                open={open6}
                                                anchorEl={anchorEl6}
                                                onClose={() => setAnchorEl6(null)}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}

                                                className="mt-2"
                                            >
                                                <div className="left-popup">
                                                    {
                                                        appropritenessArray.length > 0 &&
                                                        appropritenessArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.appropriteness_name} type="checkbox" name={item.id} onChange={(e) => { setAttitude(attitude[e.target.name] ? { ...attitude, [e.target.name]: "" } : { ...attitude, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.appropriteness_name}
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
                                <div className="">
                                    {
                                        Object.keys(attitude).map((item, i) =>
                                            <p key={i}>{attitude[item]}</p>
                                        )
                                    }
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Appropriteness</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange7(!change7); setAppropriteness({}) }}
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
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}

                                                className="mt-2"
                                            >
                                                <div className="left-popup">
                                                    {
                                                        attitudeArray.length > 0 &&
                                                        attitudeArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                            <input className="form-check-input" value={item.attitute_name} type="checkbox" name={item.id} onChange={(e) => { setAppropriteness(appropriteness[e.target.name] ? { ...appropriteness, [e.target.name]: "" } : { ...appropriteness, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                {item.attitute_name}
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
                                <div className="">
                                    {
                                        Object.keys(appropriteness).map((item, i) =>
                                            <p key={i}>{appropriteness[item]}</p>
                                        )
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="row">
                        <h6 className="my-2">Others</h6>
                        <div className="col-4">
                            <div className="mental-others mt-2 row">
                                <div className="col-6 suicide-pop-button">
                                    <button className="btn w-100"> KIO</button>
                                </div>
                                <div className="col-6 suicide-pop-button">
                                    <button onClick={openModal} className="btn w-100"> PHQ-9</button>
                                    <PHQ total={{ total1st, total2nd }} Psq9={{ Psq9TableObjvalue1st, Psq9TableObjvalue2nd }} closeModal={closeModal} modalIsOpen={modalIsOpen} />
                                </div>
                            </div>
                        </div>
                        <div className="col-4">
                            <div className="mental-others mt-2 row">
                                <div className="col-6 suicide-pop-button">
                                    <button className="btn w-100"> PNDS</button>
                                </div>
                                <div className="col-6 suicide-pop-button">
                                    <button className="btn w-100" onClick={openHdrsModal}> HDRS</button>
                                    <Hdrs closeGpCogModal={closeHdrsModal} hdrsIsOpen={hdrsIsOpen} />
                                </div>
                            </div>
                            
                        </div>

                        <div className="col-4">
                            <div className="mental-others mt-2 row">
                                <div className="col-6 suicide-pop-button">
                                    <button onClick={openGpCogModal} className="btn w-100"> GPCOG</button>
                                    <GpCog closeGpCogModal={closeGpCogModal} gpCogIsOpen={gpCogIsOpen} />
                                </div>
                                <div className="col-6 suicide-pop-button">
                                    <button onClick={openMadrsModal} className="btn w-100"> MADRS</button>
                                    <Madrs closeMadrsModal={closeMadrsModal} madrsIsOpen={madrsIsOpen} />
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Mental;