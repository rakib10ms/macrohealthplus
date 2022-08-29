import { Popover } from "@mui/material";
import axios from "axios";
import React, { useEffect, useState } from "react";
import { toast } from "react-toastify";
import clinic3 from "../../../../Images/clinical7.png";

const Ent = (props) => {
    const [historyShowAll, setHistoryShowAll] = useState(true);
    const [ear, setEar] = useState("");
    const [lymph, setLymph] = useState("")
    const [earValue, setEarValue] = useState({});
    const [earDischarge, setEarDischarge] = useState("");
    const [deafness, setDeafness] = useState("");
    const [tinnitus, setTinnitus] = useState("");
    const [face, setFace] = useState("");
    const [earLesion, setEarLesion] = useState("");
    const [earLesionPart, setEarLesionPart] = useState("");
    const [earLesionValue, setEarLesionValue] = useState([]);
    const [glueEar, setGlueEar] = useState("");
    const [glueEarValue, setGlueEarValue] = useState("");
    const [tympanic, setTympanic] = useState("");
    const [tympanicValue, setTympanicValue] = useState("");
    const [mastoid, setMastoid] = useState("");
    const [earCanal, setEarCanal] = useState("");
    const [earCanalValue, setEarCanalValue] = useState("");
    const [wax, setWax] = useState("");
    const [discharge, setDischarge] = useState("");
    const [body, setBody] = useState("");
    const [renne, setRenne] = useState("");
    const [louder, setLouder] = useState("");
    const [weber, setWeber] = useState("");
    const [conduct, setConduct] = useState("");
    const [louderDeafer, setLouderDeafer] = useState("");
    const [sensorinural, setSensorinural] = useState("");
    const [inflamed, setInflamed] = useState(false);
    const [uvula, setUvula] = useState(false);
    const [tonsil, setTonsil] = useState("");
    const [tonsilValue, setTonsilValue] = useState({});
    const [ulser, setUlser] = useState("");
    const [tongue, setTongue] = useState("");
    const [tongueLesion, setTongueLesion] = useState("");
    const [nose, setNose] = useState("");
    const [nasalSeptal, setNasalSeptal] = useState(false);
    const [turbinates, setTurbinates] = useState(false);
    const [polip, setPolip] = useState(false);
    const [polipAnterior, setPolipAnterior] = useState(false);
    const [clearDischarge, setClearDischarge] = useState(false);
    const [bleedingAnterior, setBleedingAnterior] = useState(false);
    const [bleedingPosterior, setBleedingPosterior] = useState(false);
    const [foreign, setForeign] = useState(false);
    const [mucosa, setMucosa] = useState(false);
    const [change, setChange] = useState(false);
    const [anchorEl, setAnchorEl] = useState(null);

    const handleClick = (event) => {
        setAnchorEl(event.currentTarget);
    };
    const handleClose = () => {
        setAnchorEl(null);
    };
    const open = Boolean(anchorEl);
    const id = open ? "simple-popover" : undefined;
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
    const id1 = open1 ? "simple-popover" : undefined;
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
    const id2 = open2 ? "simple-popover" : undefined;
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
    const id3 = open3 ? "simple-popover" : undefined;
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
    const id4 = open4 ? "simple-popover" : undefined;
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
    const id5 = open5 ? "simple-popover" : undefined;
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
    const id6 = open6 ? "simple-popover" : undefined;
    //
    const [change7, setChange7] = useState(false);
    const [anchorEl7, setAnchorEl7] = useState(null);

    const handleClick7 = (event) => {
        setAnchorEl7(event.currentTarget);
    };
    const handleClose7 = () => {
        setAnchorEl7(null);
    };
    const open7 = Boolean(anchorEl7);
    const id7 = open7 ? "simple-popover" : undefined;
    //
    const [change8, setChange8] = useState(false);
    const [anchorEl8, setAnchorEl8] = useState(null);

    const handleClick8 = (event) => {
        setAnchorEl8(event.currentTarget);
    };
    const handleClose8 = () => {
        setAnchorEl8(null);
    };
    const open8 = Boolean(anchorEl8);
    const id8 = open8 ? "simple-popover" : undefined;
    // 
    const [change9, setChange9] = useState(false)
    const [anchorEl9, setAnchorEl9] = useState(null);

    const handleClick9 = (event) => {
        setAnchorEl9(event.currentTarget);
    };
    const handleClose9 = () => {
        setAnchorEl9(null);
    };
    const open9 = Boolean(anchorEl9);
    const id9 = open9 ? 'simple-popover' : undefined;
    //
    const [change10, setChange10] = useState(false);
    const [anchorEl10, setAnchorEl10] = useState(null);
    const handleClick10 = (event) => {
        setAnchorEl10(event.currentTarget);
    };
    const handleClose10 = () => {
        setAnchorEl10(null);
    };
    const open10 = Boolean(anchorEl10);
    const id10 = open10 ? 'simple-popover' : undefined;
    //
    const [change11, setChange11] = useState(false)
    const [anchorEl11, setAnchorEl11] = useState(null);
    const handleClick11 = (event) => {
        setAnchorEl11(event.currentTarget);
    };
    const handleClose11 = () => {
        setAnchorEl11(null);
    };
    const open11 = Boolean(anchorEl11);
    const id11 = open11 ? 'simple-popover' : undefined;
    //
    const [change12, setChange12] = useState(false);
    const [anchorEl12, setAnchorEl12] = useState(null);
    const handleClick12 = (event) => {
        setAnchorEl12(event.currentTarget);
    };
    const handleClose12 = () => {
        setAnchorEl12(null);
    };
    const open12 = Boolean(anchorEl12);
    const id12 = open12 ? 'simple-popover' : undefined;
    //
    const [change13, setChange13] = useState(false);
    const [anchorEl13, setAnchorEl13] = useState(null);
    const handleClick13 = (event) => {
        setAnchorEl13(event.currentTarget);
    };
    const handleClose13 = () => {
        setAnchorEl13(null);
    };
    const open13 = Boolean(anchorEl13);
    const id13 = open13 ? 'simple-popover' : undefined;
    //
    const [change14, setChange14] = useState(false);
    const [anchorEl14, setAnchorEl14] = useState(null);
    const handleClick14 = (event) => {
        setAnchorEl14(event.currentTarget);
    };
    const handleClose14 = () => {
        setAnchorEl14(null);
    };
    const open14 = Boolean(anchorEl14);
    const id14 = open14 ? 'simple-popover' : undefined;
    //
    const [change15, setChange15] = useState(false);
    const [anchorEl15, setAnchorEl15] = useState(null);
    const handleClick15 = (event) => {
        setAnchorEl15(event.currentTarget);
    };
    const handleClose15 = () => {
        setAnchorEl15(null);
    };
    const open15 = Boolean(anchorEl15);
    const id15 = open15 ? 'simple-popover' : undefined;
    //
    const [change16, setChange16] = useState(false);
    const [anchorEl16, setAnchorEl16] = useState(null);
    const handleClick16 = (event) => {
        setAnchorEl16(event.currentTarget);
    };
    const handleClose16 = () => {
        setAnchorEl16(null);
    };
    const open16 = Boolean(anchorEl16);
    const id16 = open16 ? 'simple-popover' : undefined;
    //
    const [change17, setChange17] = useState(false);
    const [anchorEl17, setAnchorEl17] = useState(null);
    const handleClick17 = (event) => {
        setAnchorEl17(event.currentTarget);
    };
    const handleClose17 = () => {
        setAnchorEl17(null);
    };
    const open17 = Boolean(anchorEl17);
    const id17 = open17 ? 'simple-popover' : undefined;
    //
    const [change18, setChange18] = useState(false);
    const [anchorEl18, setAnchorEl18] = useState(null);
    const handleClick18 = (event) => {
        setAnchorEl18(event.currentTarget);
    };
    const handleClose18 = () => {
        setAnchorEl18(null);
    };
    const open18 = Boolean(anchorEl18);
    const id18 = open18 ? 'simple-popover' : undefined;
    //
    const [change19, setChange19] = useState(false);
    const [anchorEl19, setAnchorEl19] = useState(null);
    const handleClick19 = (event) => {
        setAnchorEl19(event.currentTarget);
    };
    const handleClose19 = () => {
        setAnchorEl19(null);
    };
    const open19 = Boolean(anchorEl19);
    const id19 = open19 ? 'simple-popover' : undefined;
    //
    const [change20, setChange20] = useState(false);
    const [anchorEl20, setAnchorEl20] = useState(null);
    const handleClick20 = (event) => {
        setAnchorEl20(event.currentTarget);
    };
    const handleClose20 = () => {
        setAnchorEl20(null);
    };
    const open20 = Boolean(anchorEl20);
    const id20 = open20 ? 'simple-popover' : undefined;
    //
    const [change21, setChange21] = useState(false);
    const [anchorEl21, setAnchorEl21] = useState(null);
    const handleClick21 = (event) => {
        setAnchorEl21(event.currentTarget);
    };
    const handleClose21 = () => {
        setAnchorEl21(null);
    };
    const open21 = Boolean(anchorEl21);
    const id21 = open21 ? 'simple-popover' : undefined;
    //
    const [change22, setChange22] = useState(false);
    const [anchorEl22, setAnchorEl22] = useState(null);
    const handleClick22 = (event) => {
        setAnchorEl22(event.currentTarget);
    };
    const handleClose22 = () => {
        setAnchorEl22(null);
    };
    const open22 = Boolean(anchorEl22);
    const id22 = open22 ? 'simple-popover' : undefined;
    //
    const [change23, setChange23] = useState(false);
    const [anchorEl23, setAnchorEl23] = useState(null);
    const handleClick23 = (event) => {
        setAnchorEl23(event.currentTarget);
    };
    const handleClose23 = () => {
        setAnchorEl23(null);
    };
    const open23 = Boolean(anchorEl23);
    const id23 = open23 ? 'simple-popover' : undefined;
    //
    //
    const [change24, setChange24] = useState(false);
    const [anchorEl24, setAnchorEl24] = useState(null);
    const handleClick24 = (event) => {
        setAnchorEl24(event.currentTarget);
    };
    const handleClose24 = () => {
        setAnchorEl24(null);
    };
    const open24 = Boolean(anchorEl24);
    const id24 = open24 ? 'simple-popover' : undefined;
    //

    const [earDischargeArr, setEarDischargeArr] = useState([]);
    const [deafnessArr, setDeafnessArr] = useState([]);
    const [waxArr, setWaxArr] = useState([]);
    const [MastoidArr, setMastoidArr] = useState([]);
    const [posteriorArr, setPosteriorArr] = useState([]);
    const [glueEarArr, setGlueEarArr] = useState([]);
    const [tympanicMembraneArr, setTympanicMembraneArr] = useState([]);
    const [renneTestArr, setRenneTestArr] = useState([]);
    const [weberTestArr, setWeberTestArr] = useState([]);
    const [TongueArr, setTongueArr] = useState([]);
    const [tongueLesionArr, setTongueLesionArr] = useState([]);
    const [ulserArr, setUlserArr] = useState([]);
    const [entOthersArr, setEntOthersArr] = useState([]);
    const [entOthersValue, setEntOthersValue] = useState([]);

    const [earlessionMultivalueArray1, setearlessionMultivalueArray1] = useState([])
    const [earlessionMultivalueArray2, setearlessionMultivalueArray2] = useState([])

    useEffect(() => {

        axios.get(`/ear-lesion`).then(res => {
            if (res.data.status === 200) {
                setearlessionMultivalueArray1(res.data.ear_lesion.slice(0, res.data.ear_lesion.length / 2))
                setearlessionMultivalueArray2(res.data.ear_lesion.slice(res.data.ear_lesion.length / 2, res.data.ear_lesion.length))
            }
        });
        axios.get(`/ear-discharge`).then(res => {
            if (res.data.status === 200) {

                setEarDischargeArr(res.data.EarDischarge);
            }
        });

        axios.get(`/deafness`).then(res => {
            if (res.data.status === 200) {
                setDeafnessArr(res.data.Deafness);
            }
        });
        axios.get(`/ear-canal`).then(res => {
            if (res.data.status === 200) {
                setWaxArr(res.data.ear_canal);
            }
        });

        axios.get(`/mastoid`).then(res => {
            if (res.data.status === 200) {
                setMastoidArr(res.data.mastoid);
            }
        });

        axios.get(`/posterior`).then(res => {
            if (res.data.status === 200) {

                setPosteriorArr(res.data.posterior);
            }
        });

        axios.get(`/tympanic`).then(res => {
            if (res.data.status === 200) {
                setTympanicMembraneArr(res.data.tympanic);
                setGlueEarArr(res.data.tympanic);
            }
        });

        axios.get(`/renne-test`).then(res => {
            if (res.data.status === 200) {
                setRenneTestArr(res.data.RenneTest);
            }
        });

        axios.get(`/weber-test`).then(res => {
            if (res.data.status === 200) {

                setWeberTestArr(res.data.weberTest);
            }
        });

        axios.get(`/tongue`).then(res => {
            if (res.data.status === 200) {

                setTongueArr(res.data.tongue);
            }
        });

        axios.get(`/tongueLesion`).then(res => {

            if (res.data.status === 200) {

                setTongueLesionArr(res.data.tongueLesion);
            }
        });

        axios.get(`/ulser`).then(res => {
            if (res.data.status === 200) {

                setUlserArr(res.data.Ulser);
            }
        });

        axios.get(`/ent-others`).then(res => {
            if (res.data.status === 200) {

                setEntOthersArr(res.data.EntOthers);
            }
        });

    }, [])

    const [earlessionleftMMX, setearlessionleftMMX] = useState()
    const [earlessionRightMMX, setearlessionRightMMX] = useState()
    const [saveLoading, setsaveLoading] = useState(false)

    const saveEntData = () => {
        setsaveLoading(true)
        const data = {
            patient_id: props.patient_id,
            Ear_Lesion : earLesionValue,
            Ent_Others : entOthersValue,
            ear_his_side: ear,
            earDischarge_his_value: earDischarge,
            deafness_his_value: deafness,
            tinnitus_his_side: tinnitus,
            face_his_side: face,

            earLesion: earLesion,
            earLesionPart: earLesionPart,
            earlessionleftMMX: earlessionleftMMX,
            earlessionRightMMX: earlessionRightMMX,

            earCanal_value: earCanal,
            earCanal_side: earCanalValue,
            discharge_side: discharge,
            body_side: body,
            lymph_value: lymph,
            wax_side: wax,
            glueEar_side: glueEar,
            glueEar_value: glueEarValue,
            mastoid_value: mastoid,
            tympanic_side: tympanic,
            tympanic_value: tympanicValue,
            renne_value: renne,
            weber_value: weber,
            louderDeafer_side: louderDeafer,
            sensorinural_side: sensorinural,
            conduct_side: conduct,
            louder_side: louder,
            inflamed_ternary: inflamed,
            uvula_ternary: uvula,
            tonsil_side: tonsil,
            ulser_value: ulser,
            tongue_value: tongue,
            tongueLesion_value: tongueLesion,
            nose_side: nose,
            // nose_value: noseValue,
            nasalSeptal_ternary: nasalSeptal,
            mucosa_ternary: mucosa,
            turbinates_ternary: turbinates,
            polip_ternary: polip,
            polipAnterior_ternary: polipAnterior,
            clearDischarge_ternary: clearDischarge,
            bleedingAnterior_ternary: bleedingAnterior,
            bleedingPosterior_ternary: bleedingPosterior,
            foreign_ternary: foreign,
        }

        axios.post('save-ent-examin', data).then(res => {

            for (const [key, value] of Object.entries(earLesionValue)) {
                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mhp_ent_examin_id', res.data.ent.id);
                formData.append('ear_lesions_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-ent-examin-ear-lesson', formData).then(res => {
                    console.log("Res", res.data)
                })
            }

            for (const [key, value] of Object.entries(entOthersValue)) {
                const formData = new FormData();
                formData.append('patient_id', props.patient_id);
                formData.append('mhp_ent_examin_id', res.data.ent.id);
                formData.append('ent_others_id', `${key}`);
                formData.append('value', `${value}`);
                axios.post('save-ent-examin-ent-other', formData).then(res => {
                    console.log("Res Others", res.data)
                })
            }


            toast.success(res.data.message)
        })
    }
    return (
        <div className="row ">
            <div className="history-main-header d-flex justify-content-between mb-2">
                <div>
                    <h6>ENT</h6>
                </div>
                <div>
                    <img src={clinic3} alt="" className="img-fluid" />
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
                        <li>
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Ear Eich</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            onChange={(e) => {
                                                setChange(!change);
                                                setEar("");
                                                setEarValue({});
                                            }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick} className="slider round"></div>
                                        {change && (
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
                                                    <div className="row">
                                                        <div className="col-4">
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Left"
                                                                    type="radio"
                                                                    name="movement1"
                                                                    onChange={(e) => setEar(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">Left</label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Right"
                                                                    type="radio"
                                                                    name="movement1"
                                                                    onChange={(e) => setEar(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Right
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div className="col-8">
                                                            {/* {
                                                                earValueArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={item.name}
                                                                        type="checkbox"
                                                                        name={item.id}
                                                                        onChange={(e) => setEarValue(earValue[e.target.name] ? { ...earValue, [e.target.name]: "" } : { ...earValue, [e.target.name]: e.target.value })}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">
                                                                        {item.name}
                                                                    </label>
                                                                </div>)
                                                            } */}

                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{ear}</p>
                                {
                                    earValue &&
                                    Object.keys(earValue).map((item, i) => <p key={i} className="me-1">{earValue[item]}</p>)
                                }
                            </div>
                        </li>
                        <li>
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Ear discharge</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            onChange={(e) => {
                                                setChange1(!change1);
                                                setEarDischarge("");
                                            }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick1} className="slider round"></div>
                                        {change1 && (
                                            <Popover
                                                id={id1}
                                                open={open1}
                                                anchorEl={anchorEl1}
                                                onClose={handleClose1}
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
                                                        earDischargeArr.length > 0 && earDischargeArr.map((descharge, id) => {
                                                            return (
                                                                <div key={id} className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={descharge.EarDischarge_name}
                                                                        type="radio"
                                                                        name="movement1"
                                                                        onChange={(e) => setEarDischarge(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{descharge.EarDischarge_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }

                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{earDischarge}</p>
                            </div>
                        </li>
                        <li>
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Deafness</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            onChange={(e) => {
                                                setChange2(!change2);
                                                setDeafness("");
                                            }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick2} className="slider round"></div>
                                        {change2 && (
                                            <Popover
                                                id={id2}
                                                open={open2}
                                                anchorEl={anchorEl2}
                                                onClose={handleClose2}
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
                                                        deafnessArr.length > 0 && deafnessArr.map((descharge, id) => {
                                                            return (
                                                                <div key={id} className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={descharge.Deafness_name}
                                                                        type="radio"
                                                                        name="movement1"
                                                                        onChange={(e) => setEarDischarge(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{descharge.Deafness_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }

                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{deafness}</p>
                            </div>
                        </li>
                        <li>
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Tinnitus</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            onChange={(e) => {
                                                setChange3(!change3);
                                                setTinnitus("");
                                            }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick3} className="slider round"></div>
                                        {change3 && (
                                            <Popover
                                                id={id3}
                                                open={open3}
                                                anchorEl={anchorEl3}
                                                onClose={handleClose3}
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
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement1"
                                                            onChange={(e) => setTinnitus(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Left</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Right"
                                                            type="radio"
                                                            name="movement1"
                                                            onChange={(e) => setTinnitus(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{tinnitus}</p>
                            </div>
                        </li>
                        <li>
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Face Lesion</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            onChange={(e) => {
                                                setChange4(!change4);
                                                setFace("");
                                            }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick4} className="slider round"></div>
                                        {change4 && (
                                            <Popover
                                                id={id4}
                                                open={open4}
                                                anchorEl={anchorEl4}
                                                onClose={handleClose4}
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
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement1"
                                                            onChange={(e) => setFace(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Left</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Right"
                                                            type="radio"
                                                            name="movement1"
                                                            onChange={(e) => setFace(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{face}</p>
                            </div>
                        </li>
                        {
                            entOthersArr.length > 0 && entOthersArr.map((item, i) => {
                                return (
                                    <li key={i}>
                                        <div className="d-flex justify-content-between">
                                            <p className="w-75">{item.EntOthers_name}</p>
                                            <div className="ms-1">
                                                <label className="switch me-1">
                                                    <input
                                                        type="checkbox"
                                                        value={item.EntOthers_name}
                                                        name={item.EntOthers_name}
                                                        onChange={(e) => {
                                                            const { value, checked } = e.target;

                                                            if (checked) {
                                                                setEntOthersValue([...entOthersValue, value])
                                                            } else {
                                                                const newCn = entOthersValue.filter((item) => item !== value)
                                                                setEntOthersValue(newCn)
                                                            }
                                                        }
                                                        }
                                                        id="togBtn"
                                                    />
                                                    <div className="slider round"></div>
                                                </label>
                                            </div>
                                        </div>
                                    </li>
                                )
                            })
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
                            <button onClick={() => setsaveLoading(false)} className="vaital-setup-btn-cancel float-end">Reset</button>
                            {
                                saveLoading ?
                                    <button className="vaital-setup-btn float-end me-2"><i className="fas fa-check-circle"></i></button>
                                    :
                                    <button onClick={saveEntData} className="vaital-setup-btn float-end me-2">Save</button>
                            }

                        </div>
                    </div>
                </div>
                <div className="row">
                    <h6>Ear</h6>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Ear Leison</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange5(!change5); setEarLesionValue([]); setEarLesionPart(""); setEarLesion("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick5} className="slider round"></div>
                                        {change5 && (
                                            <Popover
                                                id={id5}
                                                open={open5}
                                                anchorEl={anchorEl5}
                                                onClose={handleClose5}
                                                anchorOrigin={{
                                                    vertical: "center",
                                                    horizontal: "right",
                                                }}
                                                transformOrigin={{
                                                    vertical: "top",
                                                    horizontal: "left",
                                                }}
                                            >
                                                <div className="ear-popup">
                                                    <div className="row p-1">
                                                        <div className="col-2">
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Left"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setEarLesion(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">Left</label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Right"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setEarLesion(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Right
                                                                </label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Both"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setEarLesion(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Both
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div className="col-4">
                                                            <div className="border">
                                                                <div className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value="Pinna outer rim"
                                                                        type="radio"
                                                                        name="movement1"
                                                                        onChange={(e) =>
                                                                            setEarLesionPart(e.target.value)
                                                                        }
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">
                                                                        Pinna uter rim
                                                                    </label>
                                                                </div>
                                                                <div className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value="Pinna outer rim"
                                                                        type="radio"
                                                                        name="movement1"
                                                                        onChange={(e) =>
                                                                            setEarLesionPart(e.target.value)
                                                                        }
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">
                                                                        Posterior pinna
                                                                    </label>
                                                                </div>
                                                                <div className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value="Pinna outer rim"
                                                                        type="radio"
                                                                        name="movement1"
                                                                        onChange={(e) =>
                                                                            setEarLesionPart(e.target.value)
                                                                        }
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">
                                                                        Anteriorly pinna
                                                                    </label>
                                                                </div>
                                                                <div className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value="Pinna outer rim"
                                                                        type="radio"
                                                                        name="movement1"
                                                                        onChange={(e) =>
                                                                            setEarLesionPart(e.target.value)
                                                                        }
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">
                                                                        Ear lobe
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div className="col-6">
                                                            <div className="row">
                                                                <div className="row">
                                                                    <div className="col-5">
                                                                        <input onChange={(e) => setearlessionleftMMX(e.target.value)} type="text" className="form-control" />
                                                                    </div>
                                                                    <div className="col-2">mmX </div>
                                                                    <div className="col-5">
                                                                        <input onChange={(e) => setearlessionRightMMX(e.target.value)} type="text" className="form-control" />
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <div className="border mt-3">
                                                                        {
                                                                            earlessionMultivalueArray1.length > 0 &&
                                                                            earlessionMultivalueArray1.map((item, i) => {
                                                                                return (
                                                                                    <div key={i} className="form-check ms-1">
                                                                                        <input
                                                                                            className="form-check-input"
                                                                                            value={item.earLesion_name}
                                                                                            type="checkbox"
                                                                                            name={item.id} onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setEarLesionValue([...earLesionValue, value])
                                                                                                } else {
                                                                                                    const newCn = earLesionValue.filter((item) => item !== value)
                                                                                                    setEarLesionValue(newCn)
                                                                                                }
                                                                                            }
                                                                                            }
                                                                                            
                                                                                            id="flexRadioDefault1"
                                                                                        />
                                                                                        <label className="form-check-label">
                                                                                            {item.earLesion_name}
                                                                                        </label>
                                                                                    </div>
                                                                                )
                                                                            })
                                                                        }

                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <div className="border mt-3">
                                                                        {
                                                                            earlessionMultivalueArray2.length > 0 &&
                                                                            earlessionMultivalueArray2.map((item, i) => {
                                                                                return (
                                                                                    <div key={i} className="form-check ms-1">
                                                                                        <input
                                                                                            className="form-check-input"
                                                                                            value={item.earLesion_name}
                                                                                            type="checkbox"
                                                                                            name={item.id}
                                                                                            onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setEarLesionValue([...earLesionValue, value])
                                                                                                } else {
                                                                                                    const newCn = earLesionValue.filter((item) => item !== value)
                                                                                                    setEarLesionValue(newCn)
                                                                                                }
                                                                                            }
                                                                                            }
                                                                                            id="flexRadioDefault1"
                                                                                        />
                                                                                        <label className="form-check-label">
                                                                                            {item.earLesion_name}
                                                                                        </label>
                                                                                    </div>
                                                                                )
                                                                            })
                                                                        }
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value d-flex">
                                <p className="me-1">{earLesion}</p>
                                <p className="me-1">{earLesionPart} </p>
                                {
                                    earLesionValue.map((item, i) => <p key={i} className="me-1">{item}</p>)
                                }
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Glue Ear</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange6(!change6); setGlueEar(""); setGlueEarValue("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick6} className="slider round"></div>
                                        {change6 && (
                                            <Popover
                                                id={id6}
                                                open={open6}
                                                anchorEl={anchorEl6}
                                                onClose={handleClose6}
                                                anchorOrigin={{
                                                    vertical: "center",
                                                    horizontal: "right",
                                                }}
                                                transformOrigin={{
                                                    vertical: "top",
                                                    horizontal: "left",
                                                }}
                                            >
                                                <div className="left-popup">
                                                    <div className="row">
                                                        <div className="col-6">
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Left"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setGlueEar(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">Left</label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Right"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setGlueEar(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Right
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div className="col-6">
                                                            <div className="border-start">
                                                                {
                                                                    glueEarArr.length > 0 && glueEarArr.map((tympanic, id) => {
                                                                        return (
                                                                            <div key={id} className="form-check ms-1">
                                                                                <input
                                                                                    className="form-check-input"
                                                                                    value={tympanic.tympanic_name}
                                                                                    type="radio"
                                                                                    name="movement1"
                                                                                    onChange={(e) => setGlueEarValue(e.target.value)}
                                                                                    id="flexRadioDefault1"
                                                                                />
                                                                                <label className="form-check-label">{tympanic.tympanic_name}</label>
                                                                            </div>
                                                                        )
                                                                    })
                                                                }


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p><p>{glueEar}</p></p>
                                <p><p>{glueEarValue}</p></p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Tympanic Membrane</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange24(!change24); setTympanic(""); setTympanicValue("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick24} className="slider round"></div>
                                        {change24 && (
                                            <Popover
                                                id={id24}
                                                open={open24}
                                                anchorEl={anchorEl24}
                                                onClose={handleClose24}
                                                anchorOrigin={{
                                                    vertical: "center",
                                                    horizontal: "right",
                                                }}
                                                transformOrigin={{
                                                    vertical: "top",
                                                    horizontal: "left",
                                                }}
                                            >
                                                <div style={{ width: "200px" }} className="left-popup">
                                                    <div className="row">
                                                        <div className="col-6">
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Left"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setTympanic(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">Left</label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Right"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setTympanic(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Right
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div className="col-6">
                                                            <div className="border-start">
                                                                {
                                                                    tympanicMembraneArr.length > 0 && tympanicMembraneArr.map((tympanic, id) => {
                                                                        return (
                                                                            <div key={id} className="form-check ms-1">
                                                                                <input
                                                                                    className="form-check-input"
                                                                                    value={tympanic.tympanic_name}
                                                                                    type="radio"
                                                                                    name="movement1"
                                                                                    onChange={(e) => setTympanicValue(e.target.value)}
                                                                                    id="flexRadioDefault1"
                                                                                />
                                                                                <label className="form-check-label">{tympanic.tympanic_name}</label>
                                                                            </div>
                                                                        )
                                                                    })
                                                                }

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{tympanic}</p>
                                <p>{tympanicValue}</p>
                            </div>
                        </div>

                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Ear Canal</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange8(!change8); setEarCanal(""); setEarCanalValue("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick8} className="slider round"></div>
                                        {change8 && (
                                            <Popover
                                                id={id8}
                                                open={open8}
                                                anchorEl={anchorEl8}
                                                onClose={handleClose8}
                                                anchorOrigin={{
                                                    vertical: "center",
                                                    horizontal: "right",
                                                }}
                                                transformOrigin={{
                                                    vertical: "top",
                                                    horizontal: "left",
                                                }}
                                            >
                                                <div className="left-popup">
                                                    <div className="row">
                                                        <div className="col-6">
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Left"
                                                                    type="radio"
                                                                    name="movement1"
                                                                    onChange={(e) => setEarCanal(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">Left</label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Right"
                                                                    type="radio"
                                                                    name="movement1"
                                                                    onChange={(e) => setEarCanal(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Right
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div className="col-6">
                                                            {
                                                                waxArr.length > 0 && waxArr.map((ear_canal, id) => {
                                                                    return (
                                                                        <div key={id} className="form-check ms-1">
                                                                            <input
                                                                                className="form-check-input"
                                                                                value={ear_canal.canal_name}
                                                                                type="radio"
                                                                                name="movement"
                                                                                onChange={(e) => setEarCanalValue(e.target.value)}
                                                                                id="flexRadioDefault1"
                                                                            />
                                                                            <label className="form-check-label">{ear_canal.canal_name}</label>
                                                                        </div>
                                                                    )
                                                                })
                                                            }

                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{earCanal} {earCanalValue && "|"} {earCanalValue}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Wax</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange9(!change9); setWax("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick9} className="slider round"></div>
                                        {change9 && (
                                            <Popover
                                                id={id9}
                                                open={open9}
                                                anchorEl={anchorEl9}
                                                onClose={handleClose9}
                                                anchorOrigin={{
                                                    vertical: "center",
                                                    horizontal: "right",
                                                }}
                                                transformOrigin={{
                                                    vertical: "top",
                                                    horizontal: "left",
                                                }}
                                            >
                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Roght"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setWax(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setWax(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Left
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{wax}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Mastoid</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange7(!change7); setMastoid("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick7} className="slider round"></div>
                                        {change7 && (
                                            <Popover
                                                id={id7}
                                                open={open7}
                                                anchorEl={anchorEl7}
                                                onClose={handleClose7}
                                                anchorOrigin={{
                                                    vertical: "center",
                                                    horizontal: "right",
                                                }}
                                                transformOrigin={{
                                                    vertical: "top",
                                                    horizontal: "left",
                                                }}
                                            >
                                                <div className="left-popup">

                                                    {
                                                        MastoidArr.length > 0 && MastoidArr.map((mastoid, i) => {
                                                            return (
                                                                <div className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={mastoid.mastoid_name}
                                                                        type="radio"
                                                                        name="movement"
                                                                        onChange={(e) => setMastoid(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{mastoid.mastoid_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }


                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{mastoid}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Ear Discharge</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange10(!change10); setDischarge("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick10} className="slider round"></div>
                                        {change10 && (
                                            <Popover
                                                id={id10}
                                                open={open10}
                                                anchorEl={anchorEl10}
                                                onClose={handleClose10}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Right"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setDischarge(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setDischarge(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Left
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{discharge}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Foreign Body </p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange11(!change11); setBody("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick11} className="slider round"></div>
                                        {change11 && (
                                            <Popover
                                                id={id11}
                                                open={open11}
                                                anchorEl={anchorEl11}
                                                onClose={handleClose11}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Right"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setBody(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setBody(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Left
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{body}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Posterior-auricular Lymph node </p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange12(!change12); setLymph("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick12} className="slider round"></div>
                                        {change12 && (
                                            <Popover
                                                id={id12}
                                                open={open12}
                                                anchorEl={anchorEl12}
                                                onClose={handleClose12}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    {
                                                        posteriorArr.length > 0 && posteriorArr.map((posterior, id) => {
                                                            return (
                                                                <div key={id} className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={posterior.posterior_name}
                                                                        type="radio"
                                                                        name="movement"
                                                                        onChange={(e) => setLymph(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{posterior.posterior_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }

                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{lymph}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="row mt-2">
                    <h6>Tunning Fork Test</h6>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Renne Test</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange13(!change13); setRenne("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick13} className="slider round"></div>
                                        {change13 && (
                                            <Popover
                                                id={id13}
                                                open={open13}
                                                anchorEl={anchorEl13}
                                                onClose={handleClose13}
                                                anchorOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="left-popup">

                                                    {
                                                        renneTestArr.length > 0 && renneTestArr.map((Renne, id) => {
                                                            return (
                                                                <div key={id} className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={Renne.RenneTest_name}
                                                                        type="radio"
                                                                        name="movement"
                                                                        onChange={(e) => setRenne(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{Renne.RenneTest_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }


                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{renne}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Louder in better ear</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange14(!change14); setLouder("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick14} className="slider round"></div>
                                        {change14 && (
                                            <Popover
                                                id={id14}
                                                open={open14}
                                                anchorEl={anchorEl14}
                                                onClose={handleClose14}
                                                anchorOrigin={{
                                                    vertical: 'top',
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
                                                            value="Right"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setLouder(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setLouder(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Left
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{louder}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Weber Test</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange15(!change15); setWeber("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick15} className="slider round"></div>
                                        {change15 && (
                                            <Popover
                                                id={id15}
                                                open={open15}
                                                anchorEl={anchorEl15}
                                                onClose={handleClose15}
                                                anchorOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    {
                                                        weberTestArr.length > 0 && weberTestArr.map((weber, id) => {
                                                            return (
                                                                <div key={id} className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={weber.weberTest_name}
                                                                        type="radio"
                                                                        name="movement"
                                                                        onChange={(e) => setWeber(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{weber.weberTest_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }


                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{weber}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Conductive deafness</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange16(!change16); setConduct("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick16} className="slider round"></div>
                                        {change16 && (
                                            <Popover
                                                id={id16}
                                                open={open16}
                                                anchorEl={anchorEl16}
                                                onClose={handleClose16}
                                                anchorOrigin={{
                                                    vertical: 'top',
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
                                                            value="Right"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setConduct(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setConduct(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Left
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{conduct}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Louder in deafer ear</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange17(!change17); setLouderDeafer("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick17} className="slider round"></div>
                                        {change17 && (
                                            <Popover
                                                id={id17}
                                                open={open17}
                                                anchorEl={anchorEl17}
                                                onClose={handleClose17}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Right"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setLouderDeafer(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setLouderDeafer(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Left
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{louderDeafer}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Sensorinural deafness</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange18(!change18); setSensorinural("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick18} className="slider round"></div>
                                        {change18 && (
                                            <Popover
                                                id={id18}
                                                open={open18}
                                                anchorEl={anchorEl18}
                                                onClose={handleClose18}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Right"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setSensorinural(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setSensorinural(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Left
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{sensorinural}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="row mt-2">
                    <h6>Throat</h6>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Inflamed Pharynx</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => setInflamed(!inflamed)}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Swollen Uvula</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => setUvula(!uvula)}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Tonsil</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange19(!change19); setTonsil(""); setTonsilValue({}) }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick19} className="slider round"></div>
                                        {change19 && (
                                            <Popover
                                                id={id19}
                                                open={open19}
                                                anchorEl={anchorEl19}
                                                onClose={handleClose19}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >
                                                <div style={{ width: "180px" }} className="left-popup p-1">
                                                    <div className="row">
                                                        <div className="col-6">
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Right"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setTonsil(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">Right</label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Left"
                                                                    type="radio"
                                                                    name="movement"
                                                                    onChange={(e) => setTonsil(e.target.value)}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Left
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div className="col-6">
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Pus"
                                                                    type="checkbox"
                                                                    name="Pus"
                                                                    onChange={(e) => setTonsilValue(tonsilValue[e.target.name] ? { ...tonsilValue, [e.target.name]: "" } : { ...tonsilValue, [e.target.name]: e.target.value })}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Pus
                                                                </label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Exudate"
                                                                    type="checkbox"
                                                                    name="Exudate"
                                                                    onChange={(e) => setTonsilValue(tonsilValue[e.target.name] ? { ...tonsilValue, [e.target.name]: "" } : { ...tonsilValue, [e.target.name]: e.target.value })}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Exudate
                                                                </label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Enlarges"
                                                                    type="checkbox"
                                                                    name="Enlarges"
                                                                    onChange={(e) => setTonsilValue(tonsilValue[e.target.name] ? { ...tonsilValue, [e.target.name]: "" } : { ...tonsilValue, [e.target.name]: e.target.value })}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Enlarges
                                                                </label>
                                                            </div>
                                                            <div className="form-check ms-1">
                                                                <input
                                                                    className="form-check-input"
                                                                    value="Stone"
                                                                    type="checkbox"
                                                                    name="Stone"
                                                                    onChange={(e) => setTonsilValue(tonsilValue[e.target.name] ? { ...tonsilValue, [e.target.name]: "" } : { ...tonsilValue, [e.target.name]: e.target.value })}
                                                                    id="flexRadioDefault1"
                                                                />
                                                                <label className="form-check-label">
                                                                    Stone
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value d-flex">
                                <p className="me-1">{tonsil}</p>
                                {
                                    Object.keys(tonsilValue).map((item, i) => <p key={i} className="me-1">{tonsilValue[item]}</p>)
                                }
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Postiton of Ulser</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange20(!change20); setUlser("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick20} className="slider round"></div>
                                        {change20 && (
                                            <Popover
                                                id={id20}
                                                open={open20}
                                                anchorEl={anchorEl20}
                                                onClose={handleClose20}
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
                                                        ulserArr.length > 0 && ulserArr.map((ulser, id) => {
                                                            return (
                                                                <div key={id} className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={ulser.Ulser_name}
                                                                        type="radio"
                                                                        name="movement"
                                                                        onChange={(e) => setUlser(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{ulser.Ulser_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }

                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{ulser}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Tongue</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange21(!change21); setTongue("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick21} className="slider round"></div>
                                        {change21 && (
                                            <Popover
                                                id={id21}
                                                open={open21}
                                                anchorEl={anchorEl21}
                                                onClose={handleClose21}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                            >
                                                <div className="left-popup">

                                                    {
                                                        TongueArr.length > 0 && TongueArr.map((tongue, id) => {
                                                            return (
                                                                <div className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={tongue.tongue_name}
                                                                        type="radio"
                                                                        name="movement"
                                                                        onChange={(e) => setTongue(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{tongue.tongue_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }

                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{tongue}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Tongue leison</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange22(!change22); setTongueLesion("") }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick22} className="slider round"></div>
                                        {change22 && (
                                            <Popover
                                                id={id22}
                                                open={open22}
                                                anchorEl={anchorEl22}
                                                onClose={handleClose22}
                                                anchorOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    {
                                                        tongueLesionArr.length > 0 && tongueLesionArr.map((tongueLes, id) => {
                                                            return (
                                                                <div className="form-check ms-1">
                                                                    <input
                                                                        className="form-check-input"
                                                                        value={tongueLes.tongueLesion_name}
                                                                        type="radio"
                                                                        name="movement"
                                                                        onChange={(e) => setTongueLesion(e.target.value)}
                                                                        id="flexRadioDefault1"
                                                                    />
                                                                    <label className="form-check-label">{tongueLes.tongueLesion_name}</label>
                                                                </div>
                                                            )
                                                        })
                                                    }

                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{tongueLesion}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div className="row mt-2">
                    <h6>Nose</h6>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Nose</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setChange23(!change23); setNose(""); }}
                                            id="togBtn"
                                        />
                                        <div onClick={handleClick23} className="slider round"></div>
                                        {change23 && (
                                            <Popover
                                                id={id23}
                                                open={open23}
                                                anchorEl={anchorEl23}
                                                onClose={handleClose23}
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
                                                            value="Right Nostril"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setNose(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">Right Nostril</label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Left Nostril"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setNose(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Left Nostril
                                                        </label>
                                                    </div>
                                                    <div className="form-check ms-1">
                                                        <input
                                                            className="form-check-input"
                                                            value="Both Nostril"
                                                            type="radio"
                                                            name="movement"
                                                            onChange={(e) => setNose(e.target.value)}
                                                            id="flexRadioDefault1"
                                                        />
                                                        <label className="form-check-label">
                                                            Both Nostril
                                                        </label>
                                                    </div>
                                                </div>
                                            </Popover>
                                        )}
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value">
                                <p>{nose}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Nasal septal deviation</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setNasalSeptal(!nasalSeptal) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Mucosa Inflamed</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setMucosa(!mucosa) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Turbinates Inflamed</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setTurbinates(!turbinates) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Polyp in middle meatus</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setPolip(!polip) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Polyp in anterior meatus</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setPolipAnterior(!polipAnterior) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Clear Discharge</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setClearDischarge(!clearDischarge) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Nose bleeding- Anterior</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setBleedingAnterior(!bleedingAnterior) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Nose bleeding- Posterior</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setBleedingPosterior(!bleedingPosterior) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Foreign body in nose</p>
                                <div className="ms-1 mt-1">
                                    <label className="switch me-1">
                                        <input
                                            type="checkbox"
                                            value="Anosmia"
                                            name="anosmia"
                                            onChange={(e) => { setForeign(!foreign) }}
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
        </div>
    );
};

export default Ent;
