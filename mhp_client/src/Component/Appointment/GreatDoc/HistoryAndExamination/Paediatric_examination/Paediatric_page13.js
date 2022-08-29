import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { toast } from 'react-toastify';
import { Popover } from '@mui/material';

toast.configure();

function PaediatricPage13(props) {
    const [weight, setWeight] = useState("");
    const [eyeMovement, setEyeMovement] = useState("");

    const [whiteSpot, setwhiteSpot] = useState("");

    const [length, setLength] = useState("");
    const [circumference, setCircumference] = useState("");
    const [cornealLight, setCornelLight] = useState("");
    const [fixation, setFixation] = useState("");
    const [oneEye, setOneEye] = useState("");
    const [visiblePlaque, setVisiblePlaque] = useState("");


    const [clinicalObservation, setclinicalObservation] = useState("");

    const [fullyDescended, setfullyDescended] = useState("");
    const [fullyDescendedValue, setfullyDescendedValue] = useState("");
    
    const [familyHealthHistory, setfamilyHealthHistory] = useState("");
    const [parentQtn, setParentQtn] = useState("");
    const [ageAppropriate, setAgeAppropriate] = useState("");
    const [hearing, setHearing] = useState("");
    const [vision, setVision] = useState("");
    const [outcome, setOutcome] = useState("");
    const [oralhealth, setOralhealth] = useState("");
    const [hips, sethips] = useState("");

 
    const [comment, setComment] = useState("");



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
    //
    const [change15, setChange15] = useState(false);
    const [anchorEl15, setAnchorEl15] = useState(null);
    const open15 = Boolean(anchorEl15);
    const id15 = open15 ? 'simple-popover' : undefined;
    //
    const [change16, setChange16] = useState(false);
    const [anchorEl16, setAnchorEl16] = useState(null);
    const open16 = Boolean(anchorEl16);
    const id16 = open16 ? 'simple-popover' : undefined;
    //

    const [change17, setChange17] = useState(false);
    const [anchorEl17, setAnchorEl17] = useState(null);
    const open17 = Boolean(anchorEl17);
    const id17 = open17 ? 'simple-popover' : undefined;
    //
    const [change18, setChange18] = useState(false);
    const [anchorEl18, setAnchorEl18] = useState(null);
    const open18 = Boolean(anchorEl18);
    const id18 = open18 ? 'simple-popover' : undefined;
    //

    const [change19, setChange19] = useState(false);
    const [anchorEl19, setAnchorEl19] = useState(null);
    const open19 = Boolean(anchorEl19);
    const id19 = open19 ? 'simple-popover' : undefined;
    //


 const childHealthCheck={
    weight:weight,
    length:length,
    head_circumference:circumference,
    corneal_light:cornealLight,
    fixation:fixation,
    one_eye_respone:oneEye,
    eye_movement:eyeMovement,
    visible_plaque:visiblePlaque,
    white_spot:whiteSpot,
    clinical_ovserbation:clinicalObservation,
    testes_descended_side:fullyDescended,
    testes_descended_value:fullyDescendedValue,
    family_health_history:familyHealthHistory,
    parent_qtn:parentQtn,
    age_appropriate:ageAppropriate,
    hearing:hearing,
    vision:vision,
    hips:hips,
    oral_health:oralhealth,
    outcome:outcome,
    comments:comment
    
 }

 const handleSave=(e)=>{
    e.preventDefault(); 
    console.log('state check',childHealthCheck)
    axios.post(`/save-paediatric-child-health-six`, childHealthCheck).then(res => {
        if (res.data.status == 200) {
            toast.success("Data inserted sucessfully");
            setWeight();
            setLength();
            setCircumference();
            setAgeAppropriate();
            setOralhealth();
            setHearing();
            setVisiblePlaque();
            setVision();
            setComment();
            setFixation();
            setOneEye();
            setCornelLight();
            setEyeMovement();
            setclinicalObservation();
            setfullyDescended();
            setfullyDescendedValue();
            setwhiteSpot();
            setfamilyHealthHistory();
            setParentQtn();
            setOutcome();
        }
      
    
    })  
 }


    return (
        <div className='bg-white p-4 rounded-3' style={{ overflowX: 'none' }}>
            <div className=''>
                <h5 className='pb-1'><b>Child health check 6 months  </b> </h5>
            </div>
            <h6>Assessment by child and family health nurse, GP or paediatrician.</h6>
            <div className="row mt-3">

                <div className="col-4">
                    <div className="paediatric_last_twelve pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Weight</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        name="Jaundiced"
                                        value="Jaundiced"
                                        type="checkbox"
                                        onChange={(e) => { setChange1(!change1); setWeight("") }}
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
                                                horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'center',
                                            }}
                                        >

                                            <div className="text-box" style={{ width: "90px", padding: "4px", boxShadow: "none" }}>

                                                <div className="d-flex">
                                                    <input className="form-control" value={weight} type="text" name="age" onChange={(e) => { setWeight(e.target.value) }} id="exampleCheck1" />
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
                            <p>{weight}</p>
                        </div>
                    </div>

                </div>
                <div className="col-4">
                    <div className="paediatric_last_twelve pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Length</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        name="Jaundiced"
                                        value="Jaundiced"
                                        type="checkbox"
                                        onChange={(e) => { setChange2(!change2); setLength("") }}
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
                                                horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'center',
                                            }}
                                        >

                                            <div className="text-box" style={{ width: "90px", padding: "4px" }}>

                                                <div className="d-flex">
                                                    <input className="form-control" value={length} type="text" name="cough1" onChange={(e) => { setLength(e.target.value) }} id="exampleCheck1" />
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
                            <p>{length}</p>
                        </div>
                    </div>

                </div>
                <div className="col-4">
                    <div className="paediatric_last_twelve pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Head circumference</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        name="Jaundiced"
                                        value="Jaundiced"
                                        type="checkbox"
                                        onChange={(e) => { setChange3(!change3); setCircumference("") }}
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
                                                horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'center',
                                            }}
                                        >

                                            <div className="text-box" style={{ width: "90px", padding: "4px" }}>

                                                <div className="d-flex">
                                                    <input className="form-control" value={circumference} type="text" name="circumference" onChange={(e) => { setCircumference(e.target.value) }} id="exampleCheck1" />
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
                            <p>{circumference}</p>
                        </div>
                    </div>

                </div>
            </div>
            <div className='shadow-lg py-2 px-2 mt-2 bg-body rounded '>
                <div className="row ">
                    <h5 className='py-1'>Eyes Observation</h5>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Corneal light reflection</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange4(!change4); setCornelLight("") }}
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
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="normal" type="radio" name="cornel_light" onChange={(e) => { setCornelLight(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Normal
                                                        </label>
                                                        <input className="form-check-input" value="review" type="radio" name="cornel_light" onChange={(e) => { setCornelLight(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Review
                                                        </label>
                                                        <input className="form-check-input" value="after" type="radio" name="cornel_light" onChange={(e) => { setCornelLight(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            After
                                                        </label>
                                                    </div>

                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p className=''>{cornealLight}</p>
                            </div>
                        </div>

                    </div>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Fixation</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange5(!change5); setFixation("") }}
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
                                                    horizontal: 'left',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="normal" type="radio" name="cornel_light" onChange={(e) => { setFixation(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Normal
                                                        </label>
                                                        <input className="form-check-input" value="review" type="radio" name="cornel_light" onChange={(e) => { setFixation(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Review
                                                        </label>
                                                        <input className="form-check-input" value="after" type="radio" name="cornel_light" onChange={(e) => { setFixation(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            After
                                                        </label>
                                                    </div>

                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{fixation}</p>
                            </div>
                        </div>

                    </div>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Response to looking with one eye</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange6(!change6); setOneEye("") }}
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
                                                    horizontal: 'left',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="normal" type="radio" name="one_eye" onChange={(e) => { setOneEye(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Normal
                                                        </label>
                                                        <input className="form-check-input" value="review" type="radio" name="one_eye" onChange={(e) => { setOneEye(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Review
                                                        </label>
                                                        <input className="form-check-input" value="after" type="radio" name="one_eye" onChange={(e) => { setOneEye(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            After
                                                        </label>
                                                    </div>

                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{oneEye}</p>
                            </div>
                        </div>

                    </div>
                </div>
                <div className="row mt-2">

                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Eye movements</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange7(!change7); setEyeMovement("") }}
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
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="normal" type="radio" name="eye_movement" onChange={(e) => { setEyeMovement(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Normal
                                                        </label>
                                                        <input className="form-check-input" value="review" type="radio" name="eye_movement" onChange={(e) => { setEyeMovement(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Review
                                                        </label>
                                                        <input className="form-check-input" value="after" type="radio" name="eye_movement" onChange={(e) => { setEyeMovement(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            After
                                                        </label>
                                                    </div>

                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{eyeMovement}</p>
                            </div>
                        </div>

                    </div>


                </div>

                <div className='py-2 mt-2 bg-body rounded '>
                    <h5 className='mt-2'>Oral health ( Lift the lip and  check)</h5>
                    <div className="row mt-2">

                        <div className="col-4">
                            <div className="paediatric_last_twelve pt-2">
                                <div className="d-flex justify-content-around">
                                    <p className="w-75">Visible plaque</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange8(!change8); setVisiblePlaque("") }}
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
                                                            <input className="form-check-input" value="normal" type="radio" name="visible_plaque" onChange={(e) => { setVisiblePlaque(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                Normal
                                                            </label>
                                                            <input className="form-check-input" value="review" type="radio" name="visible_plaque" onChange={(e) => { setVisiblePlaque(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                Review
                                                            </label>
                                                            <input className="form-check-input" value="after" type="radio" name="visible_plaque" onChange={(e) => { setVisiblePlaque(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                After
                                                            </label>
                                                        </div>

                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value">
                                    <p>{visiblePlaque}</p>
                                </div>
                            </div>

                        </div>
                        <div className="col-4">
                            <div className="paediatric_last_twelve pt-2">
                                <div className="d-flex justify-content-around">
                                    <p className="w-75">White spot or carious lesions </p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange9(!change9); setwhiteSpot("") }}
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
                                                        vertical: 'bottom',
                                                        horizontal: 'left',
                                                    }}
                                                    transformOrigin={{
                                                        vertical: 'top',
                                                        horizontal: 'left',
                                                    }}
                                                >


                                                    <div className="left-popup">
                                                        <div className="form-check ms-1">
                                                            <input className="form-check-input" value="normal" type="radio" name="white_spot" onChange={(e) => { setwhiteSpot(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                Normal
                                                            </label>
                                                            <input className="form-check-input" value="review" type="radio" name="white_spot" onChange={(e) => { setwhiteSpot(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                Review
                                                            </label>
                                                            <input className="form-check-input" value="after" type="radio" name="white_spot" onChange={(e) => { setwhiteSpot(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                After
                                                            </label>
                                                        </div>

                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value">
                                    <p>{whiteSpot}</p>
                                </div>
                            </div>

                        </div>
                        <div className="col-4">
                            <div className="paediatric_last_twelve pt-2">
                                <div className="d-flex justify-content-around">
                                    <p className="w-75">Hips: Clinical observation of physical signs  </p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange10(!change10); setclinicalObservation("") }}
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
                                                        vertical: 'bottom',
                                                        horizontal: 'left',
                                                    }}
                                                    transformOrigin={{
                                                        vertical: 'top',
                                                        horizontal: 'left',
                                                    }}
                                                >

                                                    <div className="left-popup">
                                                        <div className="form-check ms-1">
                                                            <input className="form-check-input" value="normal" type="radio" name="clinical_observation" onChange={(e) => { setclinicalObservation(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                Normal
                                                            </label>
                                                            <input className="form-check-input" value="review" type="radio" name="clinical_observation" onChange={(e) => { setclinicalObservation(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                Review
                                                            </label>
                                                            <input className="form-check-input" value="after" type="radio" name="clinical_observation" onChange={(e) => { setclinicalObservation(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                After
                                                            </label>
                                                        </div>

                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value">
                                    <p>{clinicalObservation}</p>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <div className="row ">

                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2" style={{marginTop:'-25px'}}>
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Testes fully descended </p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange11(!change11); setfullyDescended(""); setfullyDescendedValue('') }}
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
                                                    vertical: 'bottom',
                                                    horizontal: 'left',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup d-flex">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="right" type="radio" name="fully_descended_option1" onChange={(e) => { setfullyDescended(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Right
                                                        </label>
                                                        <input className="form-check-input" value="left" type="radio" name="fully_descended_option1" onChange={(e) => { setfullyDescended(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Left
                                                        </label>

                                                    </div>


                                                    <div className='lol align-self-center mx-3'>
                                                        <div className="form-check ms-1">
                                                            <input className="form-check-input" value="normal" type="radio" name="fully_descended_option2" onChange={(e) => { setfullyDescendedValue(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                Normal
                                                            </label>
                                                            <input className="form-check-input" value="review" type="radio" name="fully_descended_option2" onChange={(e) => { setfullyDescendedValue(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                Review
                                                            </label>
                                                            <input className="form-check-input" value="after" type="radio" name="fully_descended_option2" onChange={(e) => { setfullyDescendedValue(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="form-check-label">
                                                                After
                                                            </label>
                                                        </div>
                                                    </div>

                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value d-flex">
                                <p>{fullyDescended}</p>
                                <p className='mx-2'>{fullyDescendedValue}</p>
                            </div>
                        </div>

                    </div>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2" style={{marginTop:'-25px'}}>
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Have the family health   history and risk factors   been completed ? </p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange12(!change12); setfamilyHealthHistory("") }}
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
                                                    vertical: 'bottom',
                                                    horizontal: 'left',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup ">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="yes" type="radio" name="family_health_history" onChange={(e) => { setfamilyHealthHistory(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Yes
                                                        </label>
                                                        <input className="form-check-input" value="no" type="radio" name="family_health_history" onChange={(e) => { setfamilyHealthHistory(e.target.value) }} id="flexRadioDefault1" />
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
                                <p>{familyHealthHistory}</p>
                            </div>
                        </div>

                    </div>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2" style={{marginTop:'-8px'}}>
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Parent questions completed ?  </p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange13(!change13); setParentQtn("") }}
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
                                                    horizontal: 'left',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup ">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="yes" type="radio" name="parent_qtn" onChange={(e) => { setParentQtn(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Yes
                                                        </label>
                                                        <input className="form-check-input" value="no" type="radio" name="parent_qtn" onChange={(e) => { setParentQtn(e.target.value) }} id="flexRadioDefault1" />
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
                                <p>{parentQtn}</p>
                            </div>
                        </div>

                    </div>
                </div>

                <div className="row mt-2">

                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2" style={{marginTop:'-20px'}}>
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Age appropriate immunisation completed as per schedule? </p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange14(!change14); setAgeAppropriate("") }}
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
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup ">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="yes" type="radio" name="age_appropriate" onChange={(e) => { setAgeAppropriate(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Yes
                                                        </label>
                                                        <input className="form-check-input" value="no" type="radio" name="age_appropriate" onChange={(e) => { setAgeAppropriate(e.target.value) }} id="flexRadioDefault1" />
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
                                <p>{ageAppropriate}</p>
                            </div>
                        </div>

                    </div>


                </div>
            </div>


            <div className='shadow-lg py-2 px-2 mt-2 bg-body rounded '>
                <div className="row ">
                    <h5 className='py-1'>Are there any risk factors ?</h5>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Hearing</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange15(!change15); setHearing("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl15(e.currentTarget)} className="slider round"></div>
                                        {
                                            change15 &&
                                            <Popover
                                                id={id15}
                                                open={open15}
                                                anchorEl={anchorEl15}
                                                onClose={() => setAnchorEl15(null)}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup ">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="yes" type="radio" name="hearing" onChange={(e) => { setHearing(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Yes
                                                        </label>
                                                        <input className="form-check-input" value="no" type="radio" name="hearing" onChange={(e) => { setHearing(e.target.value) }} id="flexRadioDefault1" />
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
                                <p>{hearing}</p>
                            </div>
                        </div>

                    </div>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Vision </p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange16(!change16); setVision("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl16(e.currentTarget)} className="slider round"></div>
                                        {
                                            change16 &&
                                            <Popover
                                                id={id16}
                                                open={open16}
                                                anchorEl={anchorEl16}
                                                onClose={() => setAnchorEl16(null)}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'left',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup ">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="yes" type="radio" name="vision" onChange={(e) => { setVision(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Yes
                                                        </label>
                                                        <input className="form-check-input" value="no" type="radio" name="vision" onChange={(e) => { setVision(e.target.value) }} id="flexRadioDefault1" />
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
                                <p>{vision}</p>
                            </div>
                        </div>

                    </div>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Hips</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange17(!change17); sethips("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl17(e.currentTarget)} className="slider round"></div>
                                        {
                                            change17 &&
                                            <Popover
                                                id={id17}
                                                open={open17}
                                                anchorEl={anchorEl17}
                                                onClose={() => setAnchorEl17(null)}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'left',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup ">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="yes" type="radio" name="hips" onChange={(e) => { sethips(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Yes
                                                        </label>
                                                        <input className="form-check-input" value="no" type="radio" name="hips" onChange={(e) => { sethips(e.target.value) }} id="flexRadioDefault1" />
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
                                <p>{hips}</p>
                            </div>
                        </div>

                    </div>

                </div>
                <div className="row mt-2">
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Oral Health</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange18(!change18); setOralhealth("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl18(e.currentTarget)} className="slider round"></div>
                                        {
                                            change18 &&
                                            <Popover
                                                id={id18}
                                                open={open18}
                                                anchorEl={anchorEl18}
                                                onClose={() => setAnchorEl18(null)}
                                                anchorOrigin={{
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup ">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="yes" type="radio" name="oral_health" onChange={(e) => { setOralhealth(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Yes
                                                        </label>
                                                        <input className="form-check-input" value="no" type="radio" name="oral_health" onChange={(e) => { setOralhealth(e.target.value) }} id="flexRadioDefault1" />
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
                                <p>{oralhealth}</p>
                            </div>
                        </div>

                    </div>
                    <div className="col-4">
                        <div className="paediatric_last_twelve pt-2">
                            <div className="d-flex justify-content-around">
                                <p className="w-75">Outcome  </p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange19(!change19); setOutcome("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl19(e.currentTarget)} className="slider round"></div>
                                        {
                                            change19 &&
                                            <Popover
                                                id={id19}
                                                open={open19}
                                                anchorEl={anchorEl19}
                                                onClose={() => setAnchorEl19(null)}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'left',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input className="form-check-input" value="normal" type="radio" name="outcome" onChange={(e) => { setOutcome(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Normal
                                                        </label>
                                                        <input className="form-check-input" value="review" type="radio" name="outcome" onChange={(e) => { setOutcome(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            Review
                                                        </label>
                                                        <input className="form-check-input" value="after" type="radio" name="outcome" onChange={(e) => { setOutcome(e.target.value) }} id="flexRadioDefault1" />
                                                        <label className="form-check-label">
                                                            After
                                                        </label>
                                                    </div>

                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{outcome}</p>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <h5 className='py-1'>Comments</h5>

            <div className='shadow-lg py-2 mt-2 bg-body rounded '>
                <div className="form-floating p-2">
                    <textarea className="form-control" value={comment} onChange={(e)=>setComment(e.target.value)} name="comment"placeholder="Leave a comment here" id="floatingTextarea2" style={{ height: "100px" }}></textarea>

                </div>
            </div>



            <div className='pedriatric_btn'>
                <button className='pedriatric_btn_left' onClick={props.closePaediatricExaminationModal}>Cancel</button>
                <button className='pedriatric_btn_middle' onClick={handleSave}>Save</button>
                <button className='pedriatric_btn_right' onClick={() => {
                    props.passData(14)
                }}>Next <i class="fa-solid fa-angle-right"></i></button>
                <button className='pedriatric_page4_btn_previous'  onClick={() => {
                    props.passData(12)
                }}><i class="fa-solid fa-angle-left" ></i> Previous Page</button>
            </div>
        </div>
    )
}

export default PaediatricPage13;
