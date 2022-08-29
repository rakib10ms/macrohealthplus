import React, { useState } from 'react';
import './PedriaticExam.css';
import Modal from 'react-modal';
import { Popover } from '@mui/material';
import axios  from 'axios';
import { toast } from 'react-toastify';

function PaediatricPage1(props) {

    const [pregnancyComplications, setPregnancyComplications] = useState(false);
    const [bloodGroup, setBloodGroup] = useState(false);
    const [antidGiven, setAntidGiven] = useState("");
    const [labour, setLabour] = useState(false);
    const [spontaneous, setSpontaneous] = useState(false);
    const [induced, setInduced] = useState(false);
    const [labourComplications, setLabourComplications] = useState(false);
    const [typeBirth, setTypeBirth] = useState("");
    const [estimatedGestation, setEstimatedGestation] = useState(false);
    const [abnormalities, setAbnormalities] = useState(false);
    const [problemsRequiring, setProblemsRequiring] = useState(false);
    const [birthWeight, setBirthWeight] = useState("");
    const [birthLength, setBirthLength] = useState("");
    const [birthHead, setBirthHead] = useState("");
    const [newbornHearing, setNewBornHearing] = useState("");
    const [vitaminKGiven, setVitaminKGiven] = useState("");
    const [vitaminKGiven1, setVitaminKGiven1] = useState("");
    const [vitaminKGiven2, setVitaminKGiven2] = useState("");
    const [hepbImmunisation, setHepbImmunisation] = useState("");
    const [hepbImmunisation2, setHepbImmunisation2] = useState("");
    const [hepBImmunoglobin, setHepBImmunoglobin] = useState("");
    const [hepBImmunoglobin1, setHepBImmunoglobin1] = useState("");
    const [postPartumComplications, setPostPartumComplications] = useState(false);
    const [feedingAtDischarge, setFeedingAtDischarge] = useState("");
    const [difficultiesWithFeeding, setDifficultiesWithFeeding] = useState(false);
    const [dateOfDischarge, setDateOfDischarge] = useState(false);
    const [dischargeWeight, setDischargeWeight] = useState("");
    const [headCirc, setHeadCirc] = useState("");


    const handleSave = (e) => {
        e.preventDefault();
        const page1Data={
            pregnancyComplications:pregnancyComplications,
            bloodGroup:bloodGroup,
            antidGiven:antidGiven,
            labour:labour,
            spontaneous:spontaneous,
            induced:induced,
            labourComplications:labourComplications,
            typeBirth:typeBirth,
            estimatedGestation:estimatedGestation,
            abnormalities:abnormalities,
            problemsRequiring:problemsRequiring,
            birthWeight:birthWeight,
            birthLength:birthLength,
            birthHead:birthHead,
            newbornHearing:newbornHearing,
            vitaminKGiven:vitaminKGiven,
            vitaminKGiven1:vitaminKGiven1,
            vitaminKGiven2:vitaminKGiven2,
            hepbImmunisation:hepbImmunisation,
            hepbImmunisation2:hepbImmunisation2,
            hepBImmunoglobin:hepBImmunoglobin,
            hepBImmunoglobin1:hepBImmunoglobin1,
            postPartumComplications:postPartumComplications,
            feedingAtDischarge:feedingAtDischarge,
            difficultiesWithFeeding:difficultiesWithFeeding,
            dateOfDischarge:dateOfDischarge,
            dischargeWeight:dischargeWeight,
            headCirc:headCirc,
            patient_id:props.propsData.patient_id

        }
        console.log('state check', page1Data);
        var checkboxes = document.querySelectorAll('input[type=checkbox]');
        for (var checkbox of checkboxes)
        {
           if (checkbox.checked) {
                checkbox.checked=false
            }
        }
        axios.post(`/save-paediatric-page1`, page1Data).then(res => {
            if (res.data.status == 200) {
                toast.success("Data inserted sucessfully");
                setPregnancyComplications();
                setAbnormalities();
                setBirthHead();
                setDateOfDischarge();
                setVitaminKGiven();
                setVitaminKGiven1();
                setVitaminKGiven2();
                setSpontaneous();
                setPostPartumComplications();
                setFeedingAtDischarge();
                setDifficultiesWithFeeding();
                setDischargeWeight();
                setHeadCirc();
                setHepbImmunisation();
                setHepbImmunisation2();
                setHepbImmunisation();
                setHepBImmunoglobin1();
                setProblemsRequiring();
                setLabour();
                setInduced();
                setBirthLength();
                setBirthWeight();
                setBloodGroup();
                setEstimatedGestation();
                setNewBornHearing();
                setTypeBirth();
                setAntidGiven();
                setHepBImmunoglobin();
            }


        })
    }

    const [modalPaediatricExaminationIsOpen, setPaediatricExaminationIsOpen] = useState(false);



    function openPaediatricExaminationModal() {
        setPaediatricExaminationIsOpen(true);
    }

    function closePaediatricExaminationModal() {
        setPaediatricExaminationIsOpen(false);
    }


    // anti d given
    const [change1, setChange1] = useState(false);
    const [anchorEl1, setAnchorEl1] = useState(null);
    const open1 = Boolean(anchorEl1);
    const id1 = open1 ? 'simple-popover' : undefined;

    // type of birth
    const [change2, setChange2] = useState(false);
    const [anchorEl2, setAnchorEl2] = useState(null);
    const open2 = Boolean(anchorEl2);
    const id2 = open2 ? 'simple-popover' : undefined;


    // estimated Gestation
    const [change3, setChange3] = useState(false);
    const [anchorEl3, setAnchorEl3] = useState(null);
    const open3 = Boolean(anchorEl3);
    const id3 = open3 ? 'simple-popover' : undefined;


    // birth weight
    const [change4, setChange4] = useState(false);
    const [anchorEl4, setAnchorEl4] = useState(null);
    const open4 = Boolean(anchorEl4);
    const id4 = open4 ? 'simple-popover' : undefined;


    // birth length
    const [change5, setChange5] = useState(false);
    const [anchorEl5,setAnchorEl5] = useState(null);
    const open5 = Boolean(anchorEl5);
    const id5 = open5 ? 'simple-popover' : undefined;


    // birth Head
    const [change6, setChange6] = useState(false);
    const [anchorEl6,setAnchorEl6] = useState(null);
    const open6 = Boolean(anchorEl6);
    const id6 = open6 ? 'simple-popover' : undefined;

    // birth Head
    const [change7, setChange7] = useState(false);
    const [anchorEl7,setAnchorEl7] = useState(null);
    const open7 = Boolean(anchorEl7);
    const id7 = open7 ? 'simple-popover' : undefined;

    // vitamin k given
    const [change8, setChange8] = useState(false);
    const [anchorEl8,setAnchorEl8] = useState(null);
    const open8 = Boolean(anchorEl8);
    const id8 = open8 ? 'simple-popover' : undefined;

    // hep b immunisation
    const [change9, setChange9] = useState(false);
    const [anchorEl9,setAnchorEl9] = useState(null);
    const open9 = Boolean(anchorEl9);
    const id9 = open9 ? 'simple-popover' : undefined;

    // hep b immunoglobin
    const [change10, setChange10] = useState(false);
    const [anchorEl10,setAnchorEl10] = useState(null);
    const open10 = Boolean(anchorEl10);
    const id10 = open10 ? 'simple-popover' : undefined;


    // feeding At Discharge
    const [change11, setChange11] = useState(false);
    const [anchorEl11,setAnchorEl11] = useState(null);
    const open11 = Boolean(anchorEl11);
    const id11 = open11 ? 'simple-popover' : undefined;

    // discharge Weight
    const [change12, setChange12] = useState(false);
    const [anchorEl12,setAnchorEl12] = useState(null);
    const open12 = Boolean(anchorEl12);
    const id12 = open12 ? 'simple-popover' : undefined;

    // head circ
    const [change13, setChange13] = useState(false);
    const [anchorEl13,setAnchorEl13] = useState(null);
    const open13 = Boolean(anchorEl13);
    const id13 = open13 ? 'simple-popover' : undefined;

    return (
        <div className='bg-white p-4 rounded-3'>
            <div>
                <p className='fw-bold'>Maternal information</p>
            </div>
            <div className='row'>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Pregnancy complications</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Pregnancy complications"
                                        name="Pregnancy complications"
                                        onChange={(e) => { setPregnancyComplications(!pregnancyComplications) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>                                 
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Blood group</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Blood group"
                                        name="Blood group"
                                        onChange={(e) => { setBloodGroup(!bloodGroup) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Anti D given</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Anti D given"
                                        name="Anti D given"
                                        onChange={(e) => {  setChange1(!change1); setAntidGiven("")  }}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl1(e.currentTarget)} ></div>
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
                                                <input className="form-check-input" value="yes" type="radio" name="AntidGiven" onChange={(e) => { setAntidGiven(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                    Yes
                                                </label>
                                                <input className="form-check-input" value="no" type="radio" name="AntidGiven" onChange={(e) => { setAntidGiven(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                No
                                                </label>
                                            </div>
                                        </div>
                                    </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                                <p className='ms-2'>{antidGiven}</p>
                            </div>
                    </div>
                </div>
            </div>
            <div className='row' style={{marginTop:'-12px'}}>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Labour</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Labour"
                                        name="Labour"
                                        onChange={(e) => { setLabour(!labour) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Spontaneous</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Spontaneous"
                                        name="Spontaneous"
                                        onChange={(e) => { setSpontaneous(!spontaneous) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Induced</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Induced"
                                        name="Induced"
                                        onChange={(e) => { setInduced(!induced) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className='row'>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Labour complications</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Labour complications"
                                        name="Labour complications"
                                        onChange={(e) => { setLabourComplications(!labourComplications) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Type of birth</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Type of birth"
                                        name="Type of birth"
                                        onChange={(e) => { setChange2(!change2); setTypeBirth("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl2(e.currentTarget)} ></div>
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
                                            <div className="form-check ms-1">
                                                <input className="form-check-input" value="normal" type="radio" name="typeofbirth" onChange={(e) => { setTypeBirth(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                    Normal
                                                </label>
                                                <input className="form-check-input" value="breech" type="radio" name="typeofbirth" onChange={(e) => { setTypeBirth(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                Breech
                                                </label>
                                                <input className="form-check-input" value="forceps" type="radio" name="typeofbirth" onChange={(e) => { setTypeBirth(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                Forceps
                                                </label>
                                                <input className="form-check-input" value="Caesarean" type="radio" name="typeofbirth" onChange={(e) => { setTypeBirth(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                Caesarean
                                                </label>
                                                <input className="form-check-input" value="Vacuumed extraction" type="radio" name="EyesIncludingRedReflex" onChange={(e) => { setTypeBirth(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                Vacuumed extraction
                                                </label>
                                                <input className="form-check-input" value="Other" type="radio" name="typeofbirth" onChange={(e) => { setTypeBirth(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                Other
                                                </label>
                                            </div>
                                        </div>
                                    </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p className='ms-2'>{typeBirth}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div className='mt-3 mb-3'>
                <p className='fw-bold'>Neonatal information</p>
            </div>
            <div className='row'>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Estimated gestation</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Estimated gestation"
                                        name="Estimated gestation"
                                        onChange={(e) => {  setChange3(!change3); setEstimatedGestation("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl3(e.currentTarget)}></div>
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
                                            <div className="form-check ms-1">
                                                <input className="form-check-input" value="Apgar 1 minute" type="radio" name="Estimated Gestation" onChange={(e) => { setEstimatedGestation(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                Apgar 1 minute
                                                </label>
                                                <input className="form-check-input" value="5 minutes" type="radio" name="Estimated Gestation" onChange={(e) => { setEstimatedGestation(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                5 minutes
                                                </label>
                                            </div>
                                        </div>
                                    </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p className='ms-2'>{estimatedGestation}</p>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Abnormalities noted at birth</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Abnormalities noted at birth"
                                        name="Abnormalities noted at birth"
                                        onChange={(e) => { setAbnormalities(!abnormalities) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Problems requiring treatment</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Problems requiring treatment"
                                        name="Problems requiring treatment"
                                        onChange={(e) => { setProblemsRequiring(!problemsRequiring)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div className='row' style={{marginTop:'-12px'}}>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Birth weight</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Birth weight"
                                        name="Birth weight "
                                        onChange={(e) => { setChange4(!change4); setBirthWeight("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl4(e.currentTarget)}></div>
                                    {
                                        change4 &&
                                        <Popover
                                            id={id4}
                                            open={open4}
                                            anchorEl={anchorEl4}
                                            onClose={() => setAnchorEl4(null)}

                                            anchorOrigin={{
                                                vertical: 'bottom',
                                                horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'center',
                                            }}
                                        >

                                            <div className="text-box" style={{ width: "90px", padding: "4px", boxShadow: "none" }}>

                                                <div className="d-flex">
                                                    <input className="form-control" value={birthWeight} type="text" name="birth eright" onChange={(e) => { setBirthWeight(e.target.value) }} id="exampleCheck1" />
                                                    <label className="mx-2 mt-1" for="exampleCheck1" >
                                                        kg
                                                    </label>
                                                </div>
                                            </div>
                                        </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p className='ms-2'>{birthWeight}</p>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Birth length </p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Birth length"
                                        name="Birth length"
                                        onChange={(e) => { setChange5(!change5); setBirthLength("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"  onClick={(e) => setAnchorEl5(e.currentTarget)}></div>
                                    {
                                        change5 &&
                                        <Popover
                                            id={id5}
                                            open={open5}
                                            anchorEl={anchorEl5}
                                            onClose={() => setAnchorEl5(null)}

                                            anchorOrigin={{
                                                vertical: 'bottom',
                                                horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'center',
                                            }}
                                        >

                                            <div className="text-box" style={{ width: "90px", padding: "4px", boxShadow: "none" }}>

                                                <div className="d-flex">
                                                    <input className="form-control" value={birthLength} type="text" name="birth lenth" onChange={(e) => { setBirthLength(e.target.value) }} id="exampleCheck1" />
                                                    <label className="mx-2 mt-1" for="exampleCheck1" >
                                                        cm
                                                    </label>
                                                </div>
                                            </div>
                                        </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p className='ms-2'>{birthLength}</p>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Birth head circ </p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Birth head circ"
                                        name="Birth head circ"
                                        onChange={(e) => { setChange6(!change6); setBirthHead("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"  onClick={(e) => setAnchorEl6(e.currentTarget)}></div>
                                    {
                                        change6 &&
                                        <Popover
                                            id={id6}
                                            open={open6}
                                            anchorEl={anchorEl6}
                                            onClose={() => setAnchorEl6(null)}
                                            anchorOrigin={{
                                                vertical: 'bottom',
                                                horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'center',
                                            }}
                                        >

                                            <div className="text-box" style={{ width: "90px", padding: "4px", boxShadow: "none" }}>

                                                <div className="d-flex">
                                                    <input className="form-control" value={birthHead} type="text" name="birth lenth" onChange={(e) => { setBirthHead(e.target.value) }} id="exampleCheck1" />
                                                    <label className="mx-2 mt-1" for="exampleCheck1" >
                                                        cm
                                                    </label>
                                                </div>
                                            </div>
                                        </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p className='ms-2'>{birthHead}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div className='row' style={{marginTop:'-12px'}}>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Newborn Hearing Screen</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Newborn Hearing Screen"
                                        name="Newborn Hearing Screen"
                                        onChange={(e) => { setChange7(!change7); setNewBornHearing("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl7(e.currentTarget)}></div>
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
                                            <div className="form-check ms-1">
                                                <input className="form-check-input" value="normal" type="radio" name="completed" onChange={(e) => { setNewBornHearing(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                    Completed
                                                </label>
                                                <input className="form-check-input" value="not performed" type="radio" name="notperformed" onChange={(e) => { setNewBornHearing(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                Not performed
                                                </label>           
                                            </div>
                                        </div>
                                    </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p className='ms-2'>{newbornHearing}</p>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Vitamin K given</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Vitamin K given"
                                        name="Vitamin K given"
                                        onChange={(e) => {  setChange8(!change8); setVitaminKGiven("");setVitaminKGiven1("");setVitaminKGiven2('')}}
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
                                                    <div className="form-check ms-1">
                                                        <div className='d-flex justify-content-between gap-2'>

                                                        <span className='hep_immunisation'>
                                                        <input className="form-check-input" value="yes" type="radio" name="vitaminkgiven" onChange={(e) => { setVitaminKGiven(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Yes
                                                        </label>
                                                        <input className="form-check-input" value="no" type="radio" name="vitaminkgiven" onChange={(e) => { setVitaminKGiven(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            No
                                                        </label>
                                                        </span>

                                                       <span className='hep_immunisation'>
                                                       <input className="form-check-input" value="injection" type="radio" name="vitaminkgiven2" onChange={(e) => { setVitaminKGiven1(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Injection
                                                        </label>
                                                        <input className="form-check-input" value="oral" type="radio" name="vitaminkgiven2" onChange={(e) => { setVitaminKGiven1(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Oral
                                                        </label>
                                                       </span>

                                                       <span className='hep_immunisation'>
                                                       <input className="form-check-input" value="1st dose" type="radio" name="vitaminkgiven3" onChange={(e) => { setVitaminKGiven2(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            1st dose
                                                        </label>
                                                        <input className="form-check-input" value="2nd dose" type="radio" name="vitaminkgiven3" onChange={(e) => { setVitaminKGiven2(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            2nd dose
                                                        </label>
                                                        <input className="form-check-input" value="3rd dose" type="radio" name="vitaminkgiven3" onChange={(e) => { setVitaminKGiven2(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            3rd dose
                                                        </label>
                                                       </span>
                                                        
                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <span className='ms-2'>{vitaminKGiven}</span>
                            <span className='ms-2'>{vitaminKGiven1}</span>
                            <span className='ms-2'>{vitaminKGiven2}</span>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Hep B immunisation</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Hep B immunisation"
                                        name="Hep B immunisation"
                                        onChange={(e) => {  setChange9(!change9); setHepbImmunisation("");setHepbImmunisation2("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl9(e.currentTarget)}></div>
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
                                            <div className="form-check ms-1 me-5">
                                               <div className='d-flex justify-content-between gap-2'>
                                               <span className='hep_immunisation'>
                                                    <p style={{borderBottom:'1px solid gray'}}>Given</p>
                                                <input className="form-check-input" value="yes" type="radio" name="HepbImmunisation" onChange={(e) => { setHepbImmunisation(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                    Yes
                                                </label>
                                                <input className="form-check-input" value="no" type="radio" name="HepbImmunisation" onChange={(e) => { setHepbImmunisation(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                    No
                                                </label>
                                                </span>
                                                <span className='hep_immunisation'>
                                                    <p className='' style={{borderBottom:'1px solid gray'}}>Date Given</p>
                                                    <input type="date" id="birthday" name="birthday" onChange={(e) => { setHepbImmunisation2(e.target.value) }}/>
                                                </span>
                                               </div>
                                            </div>
                                        </div>
                                    </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                                <span className='ms-2'>{hepbImmunisation}</span>
                                <span className='ms-2'>{hepbImmunisation2}</span>
                            </div>
                    </div>
                </div>
            </div>
            <div className='row'>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Hep B immunoglobin</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Hep B immunoglobin"
                                        name="Hep B immunoglobin"
                                        onChange={(e) => { setChange10(!change10); setHepBImmunoglobin(" ");setHepBImmunoglobin1('')}}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl10(e.currentTarget)}></div>
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
                                            <div className="form-check ms-1">
                                            <div className='d-flex justify-content-between gap-2'>
                                               <span className='hep_immunisation'>
                                                    <p style={{borderBottom:'1px solid gray'}}>Given</p>
                                                <input className="form-check-input" value="yes" type="radio" name="HepbImmunisation" onChange={(e) => { setHepBImmunoglobin(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                    Yes
                                                </label>
                                                <input className="form-check-input" value="no" type="radio" name="HepbImmunisation" onChange={(e) => { setHepBImmunoglobin(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                    No
                                                </label>
                                                </span>
                                                <span className='hep_immunisation'>
                                                    <p className='' style={{borderBottom:'1px solid gray'}}>Date Given</p>
                                                    <input type="date" id="birthday" name="birthday" onChange={(e) => { setHepBImmunoglobin1(e.target.value) }}/>
                                                </span>
                                               </div>                                   
                                            </div>
                                        </div>
                                    </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                                <span className='ms-2'>{hepBImmunoglobin}</span>
                                <span className='ms-2'>{hepBImmunoglobin1}</span>
                            </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Postpartum complications</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Postpartum complications"
                                        name="Postpartum complications"
                                        onChange={(e) => { setPostPartumComplications(!postPartumComplications) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Feeding at discharge </p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Feeding at discharge "
                                        name="Feeding at discharge "
                                        onChange={(e) => { setChange11(!change11); setFeedingAtDischarge("") }}
                                        id="togBtn"
                                    />
                                      <div className="slider round" onClick={(e) => setAnchorEl11(e.currentTarget)} ></div>
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
                                            horizontal: 'left',
                                        }}
                                    >

                                        <div className="left-popup">
                                            <div className="form-check ms-1">
                                                <input className="form-check-input" value="Breast" type="radio" name="Feeding at discharge" onChange={(e) => { setFeedingAtDischarge(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                    Breast
                                                </label>
                                                <input className="form-check-input" value="Bottle" type="radio" name="Feeding at discharge" onChange={(e) => { setFeedingAtDischarge(e.target.value) }} id="flexRadioDefault1" />
                                                <label className="form-check-label">
                                                Bottle
                                                </label>
                                            </div>
                                        </div>
                                    </Popover>
                                    }                                
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                        <span className='ms-2'>{feedingAtDischarge}</span>
                    </div>
                    </div>
                   </div>
            </div>
            <div className='row'>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Difficulties with feeding</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Difficulties with feeding"
                                        name="Difficulties with feeding"
                                        onChange={(e) => { setDifficultiesWithFeeding(!difficultiesWithFeeding) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Date of discharge </p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Date of discharge"
                                        name="Date of discharge"
                                        onChange={(e) => { setDateOfDischarge(!dateOfDischarge) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Discharge weight</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Discharge weight"
                                        name="Discharge weight"
                                        onChange={(e) => { setChange12(!change12); 
                                        setDischargeWeight("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl12(e.currentTarget)}></div>
                                    {
                                        change12 &&
                                        <Popover
                                            id={id12}
                                            open={open12}
                                            anchorEl={anchorEl12}
                                            onClose={() => setAnchorEl12(null)}

                                            anchorOrigin={{
                                                vertical: 'bottom',
                                                horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'center',
                                            }}
                                        >

                                            <div className="text-box" style={{ width: "90px", padding: "4px", boxShadow: "none" }}>

                                                <div className="d-flex">
                                                    <input className="form-control" value={dischargeWeight} type="text" name="birth weight" onChange={(e) => { setDischargeWeight(e.target.value) }} id="exampleCheck1" />
                                                    <label className="mx-2 mt-1" for="exampleCheck1" >
                                                        kg
                                                    </label>
                                                </div>
                                            </div>
                                        </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <span className='ms-2'>{dischargeWeight}</span>
                        </div>
                    </div>
                </div>
            </div>
            <div className='row' style={{marginTop:'-12px'}}>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Head circ</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Head circ"
                                        name="Head circ"
                                        onChange={(e) => { setChange13(!change13); 
                                            setHeadCirc("") }}
                                            id="togBtn"
                                        />
                                        <div className="slider round" onClick={(e) => setAnchorEl13(e.currentTarget)}></div>
                                        {
                                            change13 &&
                                            <Popover
                                                id={id13}
                                                open={open13}
                                                anchorEl={anchorEl13}
                                                onClose={() => setAnchorEl13(null)}
    
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'center',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'center',
                                                }}
                                            >
    
                                                <div className="text-box" style={{ width: "90px", padding: "4px", boxShadow: "none" }}>
    
                                                    <div className="d-flex">
                                                        <input className="form-control" value={headCirc} type="text" name="birth weight" onChange={(e) => { setHeadCirc(e.target.value) }} id="exampleCheck1" />
                                                        <label className="mx-2 mt-1" for="exampleCheck1" >
                                                            cm
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <span className='ms-2'>{headCirc}</span>
                        </div>
                    </div>
                </div>
            </div>
            <div className='pedriatric_btn'> 
                    <button className='pedriatric_btn_left' onClick={props.closePaediatricExaminationModal} >Cancel</button>
                
                <button className='pedriatric_btn_middle' onClick={handleSave}>Save</button>
                <button className='pedriatric_btn_right' onClick={() => {
                    props.passData(2)
                }}>Next <i class="fa-solid fa-angle-right"></i></button>
            </div>
        </div>
    )
}
export default PaediatricPage1;