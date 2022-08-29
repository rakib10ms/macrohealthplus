import { Popover } from '@mui/material';
import axios from 'axios';
import React, { useEffect, useState } from 'react';
import clinic3 from "../../../../Images/clinical5.png";
import clinic from "../../../../Images/crush.jpg";
import sensory from "../../../../Images/sensory.png";
import { toast } from 'react-toastify';

toast.configure();

const Cns = (props) => {
    useEffect(() => {


        axios.get(`/cnOne`).then(res => {
            setcnoneArray(res.data.cnOne)
        });

        axios.get(`/cnTwo`).then(res => {
            if (res.data.status === 200) {
                setcn2Array(res.data.cnTwo)
            }
        });

        axios.get(`/cnThree`).then(res => {
            if (res.data.status === 200) {
                setcn3Array(res.data.cnThree);
            }

        });

        axios.get(`/cnFour`).then(res => {
            if (res.data.status === 200) {
                setcn4Array(res.data.cnFour);
            }

        });

        axios.get(`/cnFive`).then(res => {
            if (res.data.status === 200) {
                setcn5Array(res.data.cnFive);
            }

        });

        axios.get(`/cnSix`).then(res => {
            if (res.data.status === 200) {
                setcn6Array(res.data.cnSix);
            }

        });

        axios.get(`/cnSeven`).then(res => {
            if (res.data.status === 200) {
                setcn7Array(res.data.cnSeven);
            }

        });

        axios.get(`/cnEight`).then(res => {
            if (res.data.status === 200) {
                setcn8Array(res.data.cnEight);
            }

        });

        axios.get(`/cnNine`).then(res => {
            if (res.data.status === 200) {
                setcn9Array(res.data.cnNine);
            }

        });


        axios.get(`/olfactory`).then(res => {
            if (res.data.status === 200) {
                setolfactoryArray(res.data.olfactory)
            }
        });


        axios.get(`/visualacuity`).then(res => {
            if (res.data.status === 200) {
                let l = res.data.visualacuity.length / 2;

                const arr1 = res.data.visualacuity.slice(0, l)
                setvisualacuityArray1(arr1)
                const arr2 = res.data.visualacuity.slice(l, res.data.visualacuity.length)
                setvisualacuityArray2(arr2)
            }

        });

        axios.get(`/visualfield`).then(res => {
            if (res.data.status === 200) {
                setvisualFieldArray(res.data.visualfield);
            }

        });

        axios.get(`/papillaryoedema`).then(res => {
            if (res.data.status === 200) {
                setpapillaryoedemaArray(res.data.papillaryoedema)
            }

        });

        axios.get(`/pupil`).then(res => {
            if (res.data.status === 200) {
                setpupilArray(res.data.pupil)
            }

        });
        axios.get(`/lightreflex`).then(res => {
            if (res.data.status === 200) {
                setlightreflexArray(res.data.lightreflex)
            }

        });

        axios.get(`/eyemovements`).then(res => {
            if (res.data.status === 200) {
                seteyemovementsArray(res.data.eyemovements);
            }

        });

        axios.get(`/fundoscopy`).then(res => {
            if (res.data.status === 200) {
                setfundoscopyArray(res.data.fundoscopy);
            }

        });
        axios.get(`/jawjerk`).then(res => {
            if (res.data.status === 200) {
                setjawjerkArray(res.data.jawjerk);
            }

        });

        axios.get(`/lookingup`).then(res => {
            if (res.data.status === 200) {
                setlookingupArray(res.data.lookingup);
            }

        });

        axios.get(`/shrugshoulder`).then(res => {
            if (res.data.status === 200) {
                setshrugshoulderArray(res.data.shrugshoulder);
            }

        });

        axios.get(`/neckmovement`).then(res => {
            if (res.data.status === 200) {
                setneckmovementArray(res.data.neckmovement);
            }

        });

        axios.get(`/whispertest`).then(res => {
            if (res.data.status === 200) {
                setwhispertestArray(res.data.whispertest);
            }

        });

        axios.get(`/hallpike`).then(res => {
            if (res.data.status === 200) {
                sethallpikeArray(res.data.hallpike);
            }

        });

        axios.get(`/uvula`).then(res => {
            if (res.data.status === 200) {
                setuvulaArray(res.data.uvula);
            }

        });

        axios.get(`/cnstongue`).then(res => {
            if (res.data.status === 200) {
                settongueArray(res.data.tongue);
            }

        });
    }, []);

    const [visualFieldArray, setvisualFieldArray] = useState([])
    const [fundoscopyArray, setfundoscopyArray] = useState([])
    const [tongueArray, settongueArray] = useState([])
    const [uvulaArray, setuvulaArray] = useState([])
    const [hallpikeArray, sethallpikeArray] = useState([])
    const [whispertestArray, setwhispertestArray] = useState([])
    const [neckmovementArray, setneckmovementArray] = useState([])
    const [shrugshoulderArray, setshrugshoulderArray] = useState([])
    const [lookingupArray, setlookingupArray] = useState([])
    const [jawjerkArray, setjawjerkArray] = useState([])
    const [eyemovementsArray, seteyemovementsArray] = useState([])
    const [lightreflexArray, setlightreflexArray] = useState([])
    const [pupilArray, setpupilArray] = useState([])
    const [papillaryoedemaArray, setpapillaryoedemaArray] = useState([])
    const [olfactoryArray, setolfactoryArray] = useState([])
    const [visualacuityArray1, setvisualacuityArray1] = useState([])
    const [visualacuityArray2, setvisualacuityArray2] = useState([])

    const [cnoneArray, setcnoneArray] = useState([])
    const [cn2Array, setcn2Array] = useState([])
    const [cn3Array, setcn3Array] = useState([])
    const [cn4Array, setcn4Array] = useState([])
    const [cn5Array, setcn5Array] = useState([])
    const [cn6Array, setcn6Array] = useState([])
    const [cn7Array, setcn7Array] = useState([])
    const [cn8Array, setcn8Array] = useState([])
    const [cn9Array, setcn9Array] = useState([])





    const [historyShowAll1, setHistoryShowAll1] = useState(true);


    const [cn1, setCn1] = useState([]);
    const [cn2, setCn2] = useState([]);
    const [cn3, setCn3] = useState([]);
    const [cn4, setCn4] = useState([]);
    const [cn5, setCn5] = useState([]);
    const [cn6, setCn6] = useState([]);
    const [cn7, setCn7] = useState([]);
    const [cn8, setCn8] = useState([]);
    const [cn9, setCn9] = useState([]);
    const [neck, setNeck] = useState("");


    //Popover
    //
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
    const [anchorEl7, setAnchorEl7] = useState(null);

    const handleClick7 = (event) => {
        setAnchorEl7(event.currentTarget);
    };
    const handleClose7 = () => {
        setAnchorEl7(null);
    };
    const open7 = Boolean(anchorEl7);
    const id7 = open7 ? 'simple-popover' : undefined;
    //
    const [anchorEl8, setAnchorEl8] = useState(null);

    const handleClick8 = (event) => {
        setAnchorEl8(event.currentTarget);
    };
    const handleClose8 = () => {
        setAnchorEl8(null);
    };
    const open8 = Boolean(anchorEl8);
    const id8 = open8 ? 'simple-popover' : undefined;
    //



    //CnsPart1

    const [olfactory, setOlfactory] = useState("");
    const [visualAcuity, setVisualAcuity] = useState("");
    const [visualAcuityDetail, setVisualAcuityDetail] = useState("");
    const [visualField, setVisualField] = useState("");
    const [fundoscopy, setFundosCopy] = useState("");
    const [fundoscopyDetail, setFundosCopyDetail] = useState({});
    const [papillary, setPapillary] = useState("");
    const [pupil, setPupil] = useState("");
    const [light, setLight] = useState("");
    const [eyeMovement, setEyeMovement] = useState("");
    const [motor, setmotor] = useState("");
    const [face, setFace] = useState("");
    const [jaw, setJaw] = useState("");
    const [corner, setCorner] = useState("");
    const [lookingUp, setLookingUp] = useState("");
    const [shuttingEye, setShuttingEye] = useState("");
    const [shoulder, setShoulder] = useState("");
    const [neckMovement, setNeckMovement] = useState("");
    const [whisper, setWhisper] = useState("");
    const [wever, setWever] = useState("");
    const [rinner, setRinner] = useState("");
    const [hallPike, setHallPike] = useState("");
    const [uvula, setUvula] = useState("");
    const [posterior, setPosterior] = useState("");
    const [tongue, setTongue] = useState("");
    const [diviation, setDiviation] = useState("");
    //New doctorchange
    const [rashHerpesZoster, setRashHerpesZoster] = useState("");
    const [firstNerve, setFirstNerve] = useState("");
    const [secondNerve, setSecondNerve] = useState("");
    const [thirdNerve, setThirdNerve] = useState("");
    const [fifthNerve, setFifthNerve] = useState("");
    const [seventhNerve, setSeventhNerve] = useState("");
    const [eleventhNerve, setEleventhNerve] = useState("");
    const [eightNerve, setEightNerve] = useState("");
    const [ninthNerve, setNinthNerve] = useState("");
    const [twelfthNerve, setTwelfthNerve] = useState("");
    const [gagReflex, setGagReflex] = useState("");



    //set value


    //Popover
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
    const [change25, setChange25] = useState(false);
    const [anchorEl25, setAnchorEl25] = useState(null);
    const handleClick25 = (event) => {
        setAnchorEl25(event.currentTarget);
    };
    const handleClose25 = () => {
        setAnchorEl25(null);
    };
    const open25 = Boolean(anchorEl25);
    const id25 = open25 ? 'simple-popover' : undefined;
    //
    const [change26, setChange26] = useState(false);
    const [anchorEl26, setAnchorEl26] = useState(null);
    const handleClick26 = (event) => {
        setAnchorEl26(event.currentTarget);
    };
    const handleClose26 = () => {
        setAnchorEl26(null);
    };
    const open26 = Boolean(anchorEl26);
    const id26 = open26 ? 'simple-popover' : undefined;
    //
    const [change27, setChange27] = useState(false);
    const [anchorEl27, setAnchorEl27] = useState(null);
    const handleClick27 = (event) => {
        setAnchorEl27(event.currentTarget);
    };
    const handleClose27 = () => {
        setAnchorEl27(null);
    };
    const open27 = Boolean(anchorEl27);
    const id27 = open27 ? 'simple-popover' : undefined;
    //
    const [change28, setChange28] = useState(false);
    const [anchorEl28, setAnchorEl28] = useState(null);
    const handleClick28 = (event) => {
        setAnchorEl28(event.currentTarget);
    };
    const handleClose28 = () => {
        setAnchorEl28(null);
    };
    const open28 = Boolean(anchorEl28);
    const id28 = open28 ? 'simple-popover' : undefined;
    //
    const [change29, setChange29] = useState(false);
    const [anchorEl29, setAnchorEl29] = useState(null);
    const handleClick29 = (event) => {
        setAnchorEl29(event.currentTarget);
    };
    const handleClose29 = () => {
        setAnchorEl29(null);
    };
    const open29 = Boolean(anchorEl29);
    const id29 = open29 ? 'simple-popover' : undefined;

    //
    const [change30, setChange30] = useState(false);
    const [anchorEl30, setAnchorEl30] = useState(null);
    const handleClick30 = (event) => {
        setAnchorEl30(event.currentTarget);
    };
    const handleClose30 = () => {
        setAnchorEl30(null);
    };
    const open30 = Boolean(anchorEl30);
    const id30 = open30 ? 'simple-popover' : undefined;
    //
    const [change31, setChange31] = useState(false);
    const [anchorEl31, setAnchorEl31] = useState(null);
    const handleClick31 = (event) => {
        setAnchorEl31(event.currentTarget);
    };
    const handleClose31 = () => {
        setAnchorEl31(null);
    };
    const open31 = Boolean(anchorEl31);
    const id31 = open31 ? 'simple-popover' : undefined;
    //
    const [change32, setChange32] = useState(false);
    const [anchorEl32, setAnchorEl32] = useState(null);
    const handleClick32 = (event) => {
        setAnchorEl32(event.currentTarget);
    };
    const handleClose32 = () => {
        setAnchorEl32(null);
    };
    const open32 = Boolean(anchorEl32);
    const id32 = open32 ? 'simple-popover' : undefined;
    //
    const [change33, setChange33] = useState(false);
    const [anchorEl33, setAnchorEl33] = useState(null);
    const handleClick33 = (event) => {
        setAnchorEl33(event.currentTarget);
    };
    const handleClose33 = () => {
        setAnchorEl33(null);
    };
    const open33 = Boolean(anchorEl33);
    const id33 = open33 ? 'simple-popover' : undefined;
    //
    const [change66, setChange66] = useState(false);
    const [anchorEl66, setAnchorEl66] = useState(null);
    const handleClick66 = (event) => {
        setAnchorEl66(event.currentTarget);
    };
    const handleClose66 = () => {
        setAnchorEl66(null);
    };
    const open66 = Boolean(anchorEl66);
    const id66 = open66 ? 'simple-popover' : undefined;
    //
    const [change67, setChange67] = useState(false);
    const [anchorEl67, setAnchorEl67] = useState(null);
    const handleClick67 = (event) => {
        setAnchorEl67(event.currentTarget);
    };
    const handleClose67 = () => {
        setAnchorEl67(null);
    };
    const open67 = Boolean(anchorEl67);
    const id67 = open67 ? 'simple-popover' : undefined;

    const [saveLoding, setsaveLoding] = useState(false)

    const saveCns = () => {
        //rashHerpesZoster
        setsaveLoding(true)
        const formData = new FormData();
        formData.append('patient_id', props.patient_id);
        formData.append('CN_1', cn1);
        formData.append('CN_2', cn2);
        formData.append('CN_3', cn3);
        formData.append('CN_4', cn4);
        formData.append('CN_5', cn5);
        formData.append('CN_6', cn6);
        formData.append('CN_7', cn7);
        formData.append('CN_8', cn8);
        formData.append('CN_9', cn9);
        formData.append('olfactory', olfactory);
        formData.append('visualAcuity', visualAcuity);
        formData.append('visualAcuityDetail', visualAcuityDetail);
        formData.append('visualField', visualField);
        formData.append('papillary', papillary);
        formData.append('pupil', pupil);
        formData.append('light', light);
        formData.append('eyeMovement', eyeMovement);
        formData.append('sensory', "");
        formData.append('motor', motor);
        formData.append('force_to_shut_open_mouth', face);
        formData.append('jaw', jaw);
        formData.append('drooping_corner_of_mouth', corner);
        formData.append('lookingUp', lookingUp);
        formData.append('on_shutting_eye', shuttingEye);
        formData.append('shrug_the_shoulder_trapezius', shoulder);
        formData.append('neckMovement', neckMovement);
        formData.append('whisper_test', whisper);
        formData.append('wever_test', wever);
        formData.append('rinner_test', rinner);
        formData.append('hallpike_manoeuvre', hallPike);
        formData.append('uvula', uvula);
        formData.append('posterior_third_of_tongue_sensation_(XI)', posterior);
        formData.append('tongue', tongue);
        formData.append('diviation', diviation);

        formData.append('rashHerpesZoster',rashHerpesZoster);
        formData.append('firstNerve',firstNerve);
        formData.append('secondNerve',secondNerve);
        formData.append('thirdNerve',thirdNerve);
        formData.append('fifthNerve',fifthNerve);
        formData.append('seventhNerve',seventhNerve);
        formData.append('eleventhNerve',eleventhNerve);
        formData.append('eightNerve',eightNerve);
        formData.append('ninthNerve',ninthNerve);
        formData.append('twelfthNerve',twelfthNerve);
        formData.append('gagReflex',gagReflex);
        axios.post('/save-cns-part1', formData).then(res => {
            console.log("Res Part 1", res.data)

            // for (const [key, value] of Object.entries(cn1)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn1_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-cn1', formData).then(res => {
            //         console.log("Res cn1", res.data)
            //     })
            // }

            // for (const [key, value] of Object.entries(cn2)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn2_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-cn2', formData).then(res => {
            //         console.log("Res cn2", res.data)
            //     })
            // }

            // for (const [key, value] of Object.entries(cn3)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn3_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-cn3', formData).then(res => {
            //         console.log("Res cn3", res.data)
            //     })
            // }

            // for (const [key, value] of Object.entries(cn4)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn4_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-cn4', formData).then(res => {
            //         console.log("Res cn4", res.data)
            //     })
            // }

            // for (const [key, value] of Object.entries(cn5)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn5_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-cn5', formData).then(res => {
            //         console.log("Res cn5", res.data)
            //     })
            // }

            // for (const [key, value] of Object.entries(cn6)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn6_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-cn6', formData).then(res => {
            //         console.log("Res cn6", res.data)
            //     })
            // }

            // for (const [key, value] of Object.entries(cn7)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn7_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-cn7', formData).then(res => {
            //         console.log("Res cn7", res.data)
            //     })
            // }

            // for (const [key, value] of Object.entries(cn8)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn8_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-cn8', formData).then(res => {
            //         console.log("Res cn8", res.data)
            //     })
            // }

            // for (const [key, value] of Object.entries(visualField)) {

            //     const formData = new FormData();
            //     formData.append('patient_id', props.patient_id);
            //     formData.append('cns_part1_id', res.data.cns_part1.id);
            //     formData.append('cn8_id', `${key}`);
            //     formData.append('value', `${value}`);
            //     axios.post('save-cns-visual-fields', formData).then(res => {
            //         console.log("Res visualField", res.data)
            //     })
            // }

            toast.success(res.data.message)

        })



    }

    const [light1, setLight1] = useState("");

    return (
        <div className='cns-container'>
            <div className='history-main-header d-flex justify-content-between mb-2'>
                <div>
                    <h6>Cranial Nerves</h6>
                </div>
                <div>
                    <img src={clinic3} alt="" className="img-fluid" />
                </div>
            </div>
            <div className="row">
                <div className="col-2">
                    <div className='he-history p-1'>
                        <input type="text" placeholder="History" className="form-control form-control-sm mt-1 mb-2" />
                        <ul className={`g-doc-scroll ${historyShowAll1 ? "full-height" : "half-height"}`}>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-I</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>

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
                                            cnoneArray.length > 0 &&
                                            cnoneArray.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn1([...cn1, value])
                                                                    } else {
                                                                        const newCn = cn1.filter((item) => item !== value)
                                                                        setCn1(newCn)
                                                                    }
                                                                }
                                                                }  id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }


                                    </div>
                                </Popover>
                            </li>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick1} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-II</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>
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
                                            cn2Array.length > 0 &&
                                            cn2Array.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn2([...cn2, value])
                                                                    } else {
                                                                        const newCn = cn2.filter((item) => item !== value)
                                                                        setCn2(newCn)
                                                                    }
                                                                }
                                                                }  id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }
                                    </div>
                                </Popover>
                            </li>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick2} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-III, IV, VI</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>
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
                                            cn3Array.length > 0 &&
                                            cn3Array.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn3([...cn3, value])
                                                                    } else {
                                                                        const newCn = cn3.filter((item) => item !== value)
                                                                        setCn3(newCn)
                                                                    }
                                                                }
                                                                } id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }
                                    </div>
                                </Popover>
                            </li>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick3} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-V</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>

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
                                        {
                                            cn4Array.length > 0 &&
                                            cn4Array.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn4([...cn4, value])
                                                                    } else {
                                                                        const newCn = cn4.filter((item) => item !== value)
                                                                        setCn4(newCn)
                                                                    }
                                                                }
                                                                }  id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }

                                    </div>
                                </Popover>
                            </li>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick4} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-VII</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>

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
                                        {
                                            cn5Array.length > 0 &&
                                            cn5Array.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn5([...cn5, value])
                                                                    } else {
                                                                        const newCn = cn5.filter((item) => item !== value)
                                                                        setCn5(newCn)
                                                                    }
                                                                }
                                                                }  id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }

                                    </div>
                                </Popover>
                            </li>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick5} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-VIII</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>

                                <Popover
                                    id={id5}
                                    open={open5}
                                    anchorEl={anchorEl5}
                                    onClose={handleClose5}
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
                                            cn6Array.length > 0 &&
                                            cn6Array.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn6([...cn6, value])
                                                                    } else {
                                                                        const newCn = cn6.filter((item) => item !== value)
                                                                        setCn6(newCn)
                                                                    }
                                                                }
                                                                }  id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }
                                    </div>
                                </Popover>
                            </li>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick6} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-IX, X</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>

                                <Popover
                                    id={id6}
                                    open={open6}
                                    anchorEl={anchorEl6}
                                    onClose={handleClose6}
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
                                            cn7Array.length > 0 &&
                                            cn7Array.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn7([...cn7, value])
                                                                    } else {
                                                                        const newCn = cn7.filter((item) => item !== value)
                                                                        setCn7(newCn)
                                                                    }
                                                                }
                                                                }  id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }
                                    </div>
                                </Popover>
                            </li>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick7} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-XI</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>
                                <div className='history-popup-value'>
                                    <p>{neck}</p>
                                </div>
                                <Popover
                                    id={id7}
                                    open={open7}
                                    anchorEl={anchorEl7}
                                    onClose={handleClose7}
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
                                            cn8Array.length > 0 &&
                                            cn8Array.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn8([...cn8, value])
                                                                    } else {
                                                                        const newCn = cn8.filter((item) => item !== value)
                                                                        setCn8(newCn)
                                                                    }
                                                                }
                                                                }  id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }

                                    </div>
                                </Popover>
                            </li>
                            <li className='list-bg-white mb-1' style={{ cursor: "pointer" }}>
                                <div onClick={handleClick8} className='d-flex justify-content-between'>
                                    <p className='w-75'>CN-XII</p>
                                    <div className='ms-1'>
                                        <i className="float-end me-1 mt-1 fas fa-angle-right"></i>
                                    </div>
                                </div>

                                <Popover
                                    id={id8}
                                    open={open8}
                                    anchorEl={anchorEl8}
                                    onClose={handleClose8}
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
                                            cn9Array.length > 0 &&
                                            cn9Array.map((item, i) => {
                                                return (
                                                    <div key={i} className='d-flex justify-content-between'>
                                                        <p className='w-75'>{item.name}</p>
                                                        <div className='ms-1'>
                                                            <label className="switch me-1">
                                                                <input type="checkbox" name={item.id} value={item.name} onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setCn9([...cn9, value])
                                                                    } else {
                                                                        const newCn = cn9.filter((item) => item !== value)
                                                                        setCn9(newCn)
                                                                    }
                                                                }
                                                                }  id="togBtn" />
                                                                <div className="slider round"></div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                )
                                            })
                                        }

                                    </div>
                                </Popover>
                            </li>
                        </ul>
                        {
                            !historyShowAll1 ?
                                <span onClick={() => setHistoryShowAll1(!historyShowAll1)} className="history-see-all">Show All <i className="ms-1 far fa-angle-down"></i></span>
                                :
                                <span onClick={() => setHistoryShowAll1(!historyShowAll1)} className="history-see-all">Show Less <i className="ms-1 far fa-angle-up"></i></span>
                        }
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
                                        <button className="vaital-setup-btn float-end me-2"><i className="fas fa-check-circle"></i></button>
                                        :
                                        <button onClick={saveCns} className="vaital-setup-btn float-end me-2">Save</button>
                                }
                            </div>
                        </div>
                    </div>
                    <div className="row">
                        <div className="col-4">
                            <div className="exam-bg-white p-1">
                                <h6 className='me-2'>The First Nerve</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setFirstNerve(e.target.value)} type="radio" name="nerve" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setFirstNerve(e.target.value)} type="radio" name="nerve" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setFirstNerve(e.target.value)} type="radio" name="nerve" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white">
                                    <div className='d-flex justify-content-between'>
                                        <p>Olfactory</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange9(!change9); setOlfactory("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick9} className="slider round"></div>
                                            {
                                                change9 &&
                                                <Popover
                                                    id={id9}
                                                    open={open9}
                                                    anchorEl={anchorEl9}
                                                    onClose={handleClose9}
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
                                                            olfactoryArray.length > 0 &&
                                                            olfactoryArray.map((item, i) => {
                                                                return (
                                                                    <div key={i} className="form-check">
                                                                        <input className="form-check-input" value={item.olfactory_name} type="radio" name="cough"
                                                                            onChange={(e) => {
                                                                                setOlfactory(e.target.value)
                                                                            }} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {item.olfactory_name}
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
                                    <div className='history-popup-value'>
                                        <p>{olfactory}</p>
                                    </div>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1">
                                <h6>The Second Nerve-Optic</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setSecondNerve(e.target.value)} type="radio" name="nerve2" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setSecondNerve(e.target.value)} type="radio" name="nerve2" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setSecondNerve(e.target.value)} type="radio" name="nerve2" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Visual Acuity</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange10(!change10); setVisualAcuityDetail(""); setVisualAcuity("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick10} className="slider round"></div>
                                            {
                                                change10 &&
                                                <Popover
                                                    id={id10}
                                                    open={open10}
                                                    anchorEl={anchorEl10}
                                                    onClose={handleClose10}
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
                                                                {
                                                                    visualacuityArray1.length > 0 &&
                                                                    visualacuityArray1.map((v, i) => {
                                                                        return (
                                                                            <div key={i} className="form-check">
                                                                                <input className="form-check-input" value={v.visualacuity_name} type="radio" name="cough" onChange={(e) => setVisualAcuity(e.target.value)} id="flexRadioDefault1" />
                                                                                <label className="form-check-label" >
                                                                                    {v.visualacuity_name}
                                                                                </label>
                                                                            </div>
                                                                        )
                                                                    })
                                                                }
                                                                {
                                                                    visualacuityArray2.length > 0 &&
                                                                    visualacuityArray2.map((v, i) => {
                                                                        return (
                                                                            <div key={i} className="form-check">
                                                                                <input className="form-check-input" value={v.visualacuity_name} type="radio" name="cough" onChange={(e) => setVisualAcuity(e.target.value)} id="flexRadioDefault1" />
                                                                                <label className="form-check-label" >
                                                                                    {v.visualacuity_name}
                                                                                </label>
                                                                            </div>
                                                                        )
                                                                    })
                                                                }
                                                            </div>
                                                            <div className="col-6">
                                                                <h6>Right</h6>
                                                                {
                                                                    visualacuityArray1.length > 0 &&
                                                                    visualacuityArray1.map((v, i) => {
                                                                        return (
                                                                            <div key={i} className="form-check">
                                                                                <input className="form-check-input" value={v.visualacuity_name} type="radio" name="cough" onChange={(e) => setVisualAcuityDetail(e.target.value)} id="flexRadioDefault1" />
                                                                                <label className="form-check-label" >
                                                                                    {v.visualacuity_name}
                                                                                </label>
                                                                            </div>
                                                                        )
                                                                    })
                                                                }
                                                                {
                                                                    visualacuityArray2.length > 0 &&
                                                                    visualacuityArray2.map((v, i) => {
                                                                        return (
                                                                            <div key={i} className="form-check">
                                                                                <input className="form-check-input" value={v.visualacuity_name} type="radio" name="cough" onChange={(e) => setVisualAcuityDetail(e.target.value)} id="flexRadioDefault1" />
                                                                                <label className="form-check-label" >
                                                                                    {v.visualacuity_name}
                                                                                </label>
                                                                            </div>
                                                                        )
                                                                    })
                                                                }
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }

                                        </label>
                                    </div>
                                    <div className='history-popup-value'>
                                        <p> {visualAcuity && <span>Left : </span>} {visualAcuity}</p>
                                        <p> {visualAcuityDetail && <span>Right : </span>} {visualAcuityDetail}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Visual Field</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange11(!change11); setVisualField({}) }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick11} className="slider round"></div>
                                            {
                                                change11 &&
                                                <Popover
                                                    id={id11}
                                                    open={open11}
                                                    anchorEl={anchorEl11}
                                                    onClose={handleClose11}
                                                    anchorOrigin={{
                                                        vertical: 'center',
                                                        horizontal: 'right',
                                                    }}
                                                    transformOrigin={{
                                                        vertical: 'top',
                                                        horizontal: 'left',
                                                    }}
                                                >

                                                    <div className="left-popup p-1">
                                                        {
                                                            visualFieldArray.length > 0 &&
                                                            visualFieldArray.map((item, i) => {
                                                                return (
                                                                    <div key={i} className="form-check ms-1 mt-1 me-1">
                                                                        <input
                                                                            name={item.id}
                                                                            value={item.visualfield_name}
                                                                            type="checkbox"
                                                                            onChange={(e) => { setVisualField(visualField[e.target.name] ? { ...visualField, [e.target.name]: "" } : { ...visualField, [e.target.name]: e.target.value }) }}
                                                                            id="togBtn"
                                                                        />
                                                                        <label className="ms-2" >
                                                                            {item.visualfield_name}
                                                                        </label>
                                                                    </div>
                                                                )
                                                            })
                                                        }

                                                        {/* {
                                                                        visualField.tunel || visualField.spot || visualField.central || visualField.hemianopia || visualField.loss ?
                                                                            <div className="col-6">
                                                                                <div className="popover-carosel-container">
                                                                                    <div id="carouselExampleControls" className="carousel" data-bs-ride="carousel" data-bs-interval="false">
                                                                                        <div className="carousel-inner">
                                                                                            <div className="carousel-item active" data-bs-interval="1000">
                                                                                                <img src={clinic} className="d-block w-100" alt="..." />
                                                                                                <div class="carousel-caption d-none d-md-block">
                                                                                                    <p>Some representative placeholder content for the first slide.</p>
                                                                                                    <a href="https://facebook.com">This is url</a>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div className="carousel-item" data-bs-interval="1000">
                                                                                                <img src={clinic} className="d-block w-100" alt="..." />
                                                                                                <div class="carousel-caption d-none d-md-block">
                                                                                                    <p>second item</p>
                                                                                                    <a href="https://facebook.com">This is url</a>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div className="carousel-item" data-bs-interval="1000">
                                                                                                <img src={clinic} className="d-block w-100" alt="..." />
                                                                                                <div class="carousel-caption d-none d-md-block">
                                                                                                    <p>Third item</p>
                                                                                                    <a href="https://facebook.com">This is url</a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <button className="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                                                                                            <span className="carousel-control-prev-icon" aria-hidden="true"></span>
                                                                                            <span className="visually-hidden">Previous</span>
                                                                                        </button>
                                                                                        <button className="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                                                                                            <span className="carousel-control-next-icon" aria-hidden="true"></span>
                                                                                            <span className="visually-hidden">Next</span>
                                                                                        </button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            :
                                                                            <></>
                                                                    } */}

                                                    </div>
                                                </Popover>
                                            }

                                        </label>
                                    </div>
                                    <div className="history-popup-value">
                                        {
                                            visualField !== "" &&
                                            Object.keys(visualField).map(key =>
                                                <p className='me-2'>{visualField[key]}</p>

                                            )
                                        }
                                    </div>

                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Fundoscopy</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange12(!change12); setFundosCopyDetail({ nill: "", minimul: "", severe: "", mild: "", proliferative: "" }); setFundosCopy("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick12} className="slider round"></div>
                                            {
                                                change12 &&
                                                <Popover
                                                    id={id12}
                                                    open={open12}
                                                    anchorEl={anchorEl12}
                                                    onClose={handleClose12}
                                                    anchorOrigin={{
                                                        vertical: 'center',
                                                        horizontal: 'right',
                                                    }}
                                                    transformOrigin={{
                                                        vertical: 'top',
                                                        horizontal: 'left',
                                                    }}
                                                >

                                                    <div className="cns-eye-popup">
                                                        <div className="row">
                                                            <div className="col-4">
                                                                <div className="form-check ms-1">
                                                                    <input className="form-check-input" value="Left" type="radio" name="cough2" onChange={(e) => { setFundosCopy(e.target.value) }} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        Left
                                                                    </label>
                                                                </div>
                                                                <div className="form-check ms-1">
                                                                    <input className="form-check-input" value="Right" type="radio" name="cough2" onChange={(e) => setFundosCopy(e.target.value)} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        Right
                                                                    </label>
                                                                </div>

                                                            </div>

                                                            <div className="col-6">

                                                                {
                                                                    fundoscopyArray.map((item, i) => <div key={i} className="form-check ms-1">
                                                                        <input className="form-check-input" value={item.fundoscopy_name} type="checkbox" name={item.id} onChange={(e) => { setFundosCopyDetail(fundoscopyDetail[e.target.name] ? { ...fundoscopyDetail, [e.target.name]: "" } : { ...fundoscopyDetail, [e.target.name]: e.target.value }) }} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {item.fundoscopy_name}
                                                                        </label>
                                                                    </div>)
                                                                }
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }

                                        </label>
                                    </div>
                                    <div className='history-popup-value'>
                                        <div className="row">
                                            <div className="col-2">
                                                <p>{fundoscopy}</p>
                                            </div>
                                            <div className="col-10">
                                                {
                                                    Object.keys(fundoscopyDetail).map(key =>
                                                        <p className='me-2'>{fundoscopyDetail[key]}</p>

                                                    )
                                                }

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div className="list-bg-white">
                                    <div className='d-flex justify-content-between'>
                                        <p>Papillary oedema</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange13(!change13); setPapillary("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick13} className="slider round"></div>
                                            {
                                                change13 &&
                                                <Popover
                                                    id={id13}
                                                    open={open13}
                                                    anchorEl={anchorEl13}
                                                    onClose={handleClose13}
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
                                                            papillaryoedemaArray.length > 0 &&
                                                            papillaryoedemaArray.map((v, i) => {
                                                                return (
                                                                    <div key={i} className="form-check">
                                                                        <input className="form-check-input" value={v.papillaryoedema_name} type="radio" name="cough3" onChange={(e) => setPapillary(e.target.value)} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {v.papillaryoedema_name}

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
                                    <div className='history-popup-value'>
                                        <p>{papillary}</p>
                                    </div>
                                </div>
                            </div>
                            <div className="exam-bg-white mt-1 p-1">
                                <h6>The Third- Oculomotor, Fourth- Trochlear & Sixth- Abducens</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setThirdNerve(e.target.value)} type="radio" name="nerve3" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setThirdNerve(e.target.value)} type="radio" name="nerve3" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setThirdNerve(e.target.value)} type="radio" name="nerve3" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Pupil</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange14(!change14); setPupil("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick14} className="slider round"></div>
                                            {
                                                change14 &&
                                                <Popover
                                                    id={id14}
                                                    open={open14}
                                                    anchorEl={anchorEl14}
                                                    onClose={handleClose14}
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
                                                            pupilArray.length > 0 &&
                                                            pupilArray.map((v, i) => {
                                                                return (
                                                                    <div key={i} className="form-check">
                                                                        <input className="form-check-input" value={v.pupil_name} type="radio" name="cough3" onChange={(e) => setPupil(e.target.value)} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {v.pupil_name}
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
                                    <div className='history-popup-value'>
                                        <p>{pupil}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Light reflex</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange15(!change15); setLight1("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick15} className="slider round"></div>
                                            {
                                                change15 &&
                                                <Popover
                                                    id={id15}
                                                    open={open15}
                                                    anchorEl={anchorEl15}
                                                    onClose={handleClose15}
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
                                                            lightreflexArray.length > 0 &&
                                                            lightreflexArray.map((v, i) => {
                                                                return (
                                                                    <div key={i} className="form-check">
                                                                        <input className="form-check-input" value={v.lightreflex_name} type="radio" name="cough3" onChange={(e) => setLight(e.target.value)} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {v.lightreflex_name}
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
                                    <div className='history-popup-value'>
                                        <p>{light1}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white">
                                    <div className='d-flex justify-content-between'>
                                        <p>Eye Movement</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange16(!change16); setEyeMovement("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick16} className="slider round"></div>
                                            {
                                                change16 &&
                                                <Popover
                                                    id={id16}
                                                    open={open16}
                                                    anchorEl={anchorEl16}
                                                    onClose={handleClose16}
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
                                                            eyemovementsArray.length > 0 &&
                                                            eyemovementsArray.map((v, i) => {
                                                                return (
                                                                    <div key={i} className="form-check">
                                                                        <input className="form-check-input" value={v.eyemovements_name} type="radio" name="cough3" onChange={(e) => setEyeMovement(e.target.value)} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {v.eyemovements_name}
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
                                    <div className='history-popup-value'>
                                        <p>{eyeMovement}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="col-4">
                            <div className="exam-bg-white p-1">
                                <h6>The Fifth- Trigeminal Nerve</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setFifthNerve(e.target.value)} type="radio" name="nerve77" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setFifthNerve(e.target.value)} type="radio" name="nerve77" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setFifthNerve(e.target.value)} type="radio" name="nerve77" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white">
                                    <div className='d-flex justify-content-between'>
                                        <p>Sensory</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange17(!change17); }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick17} className="slider round"></div>
                                            {
                                                change17 &&
                                                <Popover
                                                    id={id17}
                                                    open={open17}
                                                    anchorEl={anchorEl17}
                                                    onClose={handleClose17}
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
                                                        <img src={sensory} className="img-fluid" alt="" />
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="list-bg-white">
                                    <div className='d-flex justify-content-between'>
                                        <p>Motor</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange18(!change18); setmotor("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick18} className="slider round"></div>
                                            {
                                                change18 &&
                                                <Popover
                                                    id={id18}
                                                    open={open18}
                                                    anchorEl={anchorEl18}
                                                    onClose={handleClose18}
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

                                                        <div className="form-check">
                                                            <input className="form-check-input" value="Clench the teeth- Masseter weakness" type="radio" name="cough6" onChange={(e) => setmotor(e.target.value)} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                Clench the teeth- Masseter weakness
                                                            </label>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{motor}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white">
                                    <div className='d-flex justify-content-between'>
                                        <p>Force to shut open mouth</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange19(!change19); setFace("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick19} className="slider round"></div>
                                            {
                                                change19 &&
                                                <Popover
                                                    id={id19}
                                                    open={open19}
                                                    anchorEl={anchorEl19}
                                                    onClose={handleClose19}
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
                                                        <div className="form-check">
                                                            <input className="form-check-input" value="Normal" type="radio" name="cough6" onChange={(e) => setFace(e.target.value)} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                Normal
                                                            </label>
                                                        </div>
                                                        <div className="form-check">
                                                            <input className="form-check-input" value="Deviates- Right" type="radio" name="cough6" onChange={(e) => setFace(e.target.value)} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                Deviates- Right
                                                            </label>
                                                        </div>
                                                        <div className="form-check">
                                                            <input className="form-check-input" value="Deviates- Left" type="radio" name="cough6" onChange={(e) => setFace(e.target.value)} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                Deviates- Left
                                                            </label>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{face}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white">
                                    <div className='d-flex justify-content-between'>
                                        <p>Jaw Jerk</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange20(!change20); setJaw("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick20} className="slider round"></div>
                                            {
                                                change20 &&
                                                <Popover
                                                    id={id20}
                                                    open={open20}
                                                    anchorEl={anchorEl20}
                                                    onClose={handleClose20}
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
                                                            jawjerkArray.length > 0 &&
                                                            jawjerkArray.map((item, i) => {
                                                                return (
                                                                    <div key={i} className="form-check">
                                                                        <input className="form-check-input" value={item.jawjerk_name} type="radio" name="cough6" onChange={(e) => setJaw(e.target.value)} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {item.jawjerk_name}
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
                                    <div className='history-popup-value'>
                                        <p>{jaw}</p>
                                    </div>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1">
                                <h6>The Seventh- Facial Nerve</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setSeventhNerve(e.target.value)} type="radio" name="nerve5" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setSeventhNerve(e.target.value)} type="radio" name="nerve5" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setSeventhNerve(e.target.value)} type="radio" name="nerve5" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Drooping corner of mouth</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange21(!change21); setCorner("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick21} className="slider round"></div>
                                            {
                                                change21 &&
                                                <Popover
                                                    id={id21}
                                                    open={open21}
                                                    anchorEl={anchorEl21}
                                                    onClose={handleClose21}
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
                                                        <div className="form-check">
                                                            <input className="form-check-input" value="Left" type="radio" name="cough7" onChange={(e) => setCorner(e.target.value)} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                Left
                                                            </label>
                                                        </div>
                                                        <div className="form-check">
                                                            <input className="form-check-input" value="Right" type="radio" name="cough7" onChange={(e) => setCorner(e.target.value)} id="flexRadioDefault1" />
                                                            <label className="form-check-label" >
                                                                Right
                                                            </label>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{corner}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Lookling up</p>
                                        <label className="switch me-1">
                                            <input onChange={() => { setChange22(!change22); setLookingUp("") }} type="checkbox" id="togBtn" />
                                            <div onClick={handleClick22} className="slider round"></div>
                                            {
                                                change22 &&
                                                <Popover
                                                    id={id22}
                                                    open={open22}
                                                    anchorEl={anchorEl22}
                                                    onClose={handleClose22}
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
                                                            lookingupArray.length > 0 &&
                                                            lookingupArray.map((item, i) => {
                                                                return (
                                                                    <div key={i} className="form-check">
                                                                        <input className="form-check-input" value={item.lookingup_name} type="radio" name="cough6" onChange={(e) => setLookingUp(e.target.value)} id="flexRadioDefault1" />
                                                                        <label className="form-check-label" >
                                                                            {item.lookingup_name}
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
                                    <div className='history-popup-value'>
                                        <p>{lookingUp}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>On shutting eye(on lesion side eye move upward and incomplete closure- LMNL)</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange23(!change23); setShuttingEye("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick23} className="slider round"></div>
                                                {
                                                    change23 &&
                                                    <Popover
                                                        id={id23}
                                                        open={open23}
                                                        anchorEl={anchorEl23}
                                                        onClose={handleClose23}
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
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Present" type="radio" name="cough7" onChange={(e) => setShuttingEye(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Present
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Absent" type="radio" name="cough7" onChange={(e) => setShuttingEye(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Absent
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>

                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{shuttingEye}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Rash- Herpes zoster</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange66(!change66); setRashHerpesZoster("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick66} className="slider round"></div>
                                                {
                                                    change66 &&
                                                    <Popover
                                                        id={id66}
                                                        open={open66}
                                                        anchorEl={anchorEl66}
                                                        onClose={handleClose66}
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
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Present" type="radio" name="cough7" onChange={(e) => setRashHerpesZoster(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Present
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Absent" type="radio" name="cough7" onChange={(e) => setRashHerpesZoster(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Absent
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>

                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{rashHerpesZoster}</p>
                                    </div>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1">
                                <h6>The Eleventh- Accessory Nerve</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setEleventhNerve(e.target.value)} type="radio" name="nerve6" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setEleventhNerve(e.target.value)} type="radio" name="nerve6" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setEleventhNerve(e.target.value)} type="radio" name="nerve6" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Shrug the shoulder- trapezius</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange24(!change24); setShoulder("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick24} className="slider round"></div>
                                                {
                                                    change24 &&
                                                    <Popover
                                                        id={id24}
                                                        open={open24}
                                                        anchorEl={anchorEl24}
                                                        onClose={handleClose24}
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
                                                                shrugshoulderArray.length > 0 &&
                                                                shrugshoulderArray.map((item, i) => {
                                                                    return (
                                                                        <div key={i} className="form-check">
                                                                            <input className="form-check-input" value={item.shrugshoulder_name} type="radio" name="cough6" onChange={(e) => setShoulder(e.target.value)} id="flexRadioDefault1" />
                                                                            <label className="form-check-label" >
                                                                                {item.shrugshoulder_name}
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
                                        <p>{shoulder}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Neck movement-On Resistance</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange25(!change25); setNeckMovement("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick25} className="slider round"></div>
                                                {
                                                    change25 &&
                                                    <Popover
                                                        id={id25}
                                                        open={open25}
                                                        anchorEl={anchorEl25}
                                                        onClose={handleClose25}
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
                                                                neckmovementArray.length > 0 &&
                                                                neckmovementArray.map((item, i) => {
                                                                    return (
                                                                        <div key={i} className="form-check">
                                                                            <input className="form-check-input" value={item.neckmovement_name} type="radio" name="cough6" onChange={(e) => setNeckMovement(e.target.value)} id="flexRadioDefault1" />
                                                                            <label className="form-check-label" >
                                                                                {item.neckmovement_name}
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
                                        <p>{neckMovement}</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div className="col-4">
                            <div className="exam-bg-white p-1">
                                <h6>The Eight- Acoustic Nerve</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setEightNerve(e.target.value)} type="radio" name="nerve72" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setEightNerve(e.target.value)} type="radio" name="nerve72" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setEightNerve(e.target.value)} type="radio" name="nerve72" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Whisper Test</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange26(!change26); setWhisper("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick26} className="slider round"></div>
                                                {
                                                    change26 &&
                                                    <Popover
                                                        id={id26}
                                                        open={open26}
                                                        anchorEl={anchorEl26}
                                                        onClose={handleClose26}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">

                                                            {
                                                                whispertestArray.length > 0 &&
                                                                whispertestArray.map((item, i) => {
                                                                    return (
                                                                        <div key={i} className="form-check">
                                                                            <input className="form-check-input" value={item.whispertest_name} type="radio" name="cough6" onChange={(e) => setWhisper(e.target.value)} id="flexRadioDefault1" />
                                                                            <label className="form-check-label" >
                                                                                {item.whispertest_name}
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
                                        <p>{whisper}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Weber’s Test</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange27(!change27); setWever("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick27} className="slider round"></div>
                                                {
                                                    change27 &&
                                                    <Popover
                                                        id={id27}
                                                        open={open27}
                                                        anchorEl={anchorEl27}
                                                        onClose={handleClose27}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Center" type="radio" name="cough8" onChange={(e) => setWever(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Center
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Lateralize to left" type="radio" name="cough8" onChange={(e) => setWever(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Lateralize to left
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Lateralize to right" type="radio" name="cough8" onChange={(e) => setWever(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Lateralize to right
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>

                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{wever}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Rinne’s Test</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange28(!change28); setRinner("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick28} className="slider round"></div>
                                                {
                                                    change28 &&
                                                    <Popover
                                                        id={id28}
                                                        open={open28}
                                                        anchorEl={anchorEl28}
                                                        onClose={handleClose28}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Positive" type="radio" name="cough8" onChange={(e) => setRinner(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Positive
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Negative" type="radio" name="cough8" onChange={(e) => setRinner(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Negative
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>

                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{rinner}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Hallpike Manoeuvre</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange29(!change29); setHallPike("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick29} className="slider round"></div>
                                                {
                                                    change29 &&
                                                    <Popover
                                                        id={id29}
                                                        open={open29}
                                                        anchorEl={anchorEl29}
                                                        onClose={handleClose29}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">

                                                            {
                                                                hallpikeArray.length > 0 &&
                                                                hallpikeArray.map((item, i) => {
                                                                    return (
                                                                        <div key={i} className="form-check">
                                                                            <input className="form-check-input" value={item.hallpike_name} type="radio" name="cough6" onChange={(e) => setHallPike(e.target.value)} id="flexRadioDefault1" />
                                                                            <label className="form-check-label" >
                                                                                {item.hallpike_name}
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
                                        <p>{hallPike}</p>
                                    </div>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1">
                                <h6>The Ninth- Glossophary & Tenth- Vagus Nerve</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setNinthNerve(e.target.value)} type="radio" name="nerve7" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setNinthNerve(e.target.value)} type="radio" name="nerve7" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setNinthNerve(e.target.value)} type="radio" name="nerve7" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Uvula</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange30(!change30); setUvula("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick30} className="slider round"></div>
                                                {
                                                    change30 &&
                                                    <Popover
                                                        id={id30}
                                                        open={open30}
                                                        anchorEl={anchorEl30}
                                                        onClose={handleClose30}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">
                                                            {
                                                                uvulaArray.length > 0 &&
                                                                uvulaArray.map((item, i) => {
                                                                    return (
                                                                        <div key={i} className="form-check">
                                                                            <input className="form-check-input" value={item.uvula_name} type="radio" name="cough6" onChange={(e) => setUvula(e.target.value)} id="flexRadioDefault1" />
                                                                            <label className="form-check-label" >
                                                                                {item.uvula_name}
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
                                        <p>{uvula}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Gag reflex (Sensory -XI, Motor - X</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange67(!change67); setGagReflex("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick67} className="slider round"></div>
                                                {
                                                    change67 &&
                                                    <Popover
                                                        id={id67}
                                                        open={open67}
                                                        anchorEl={anchorEl67}
                                                        onClose={handleClose67}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">

                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Present" type="radio" name="cough6" onChange={(e) => setGagReflex(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Present
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Absent" type="radio" name="cough6" onChange={(e) => setGagReflex(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Absent
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>

                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{gagReflex}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Posterior third of tongue sensation (XI)</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange31(!change31); setPosterior("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick31} className="slider round"></div>
                                                {
                                                    change31 &&
                                                    <Popover
                                                        id={id31}
                                                        open={open31}
                                                        anchorEl={anchorEl31}
                                                        onClose={handleClose31}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">

                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Present" type="radio" name="cough8" onChange={(e) => setPosterior(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Present
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Absent" type="radio" name="cough8" onChange={(e) => setPosterior(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Absent
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>

                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{posterior}</p>
                                    </div>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1">
                                <h6>The Twelfth- Hypoglossal Nerve</h6>
                                <div className='d-flex'>
                                    <input className='custom-radio' value="Left" onClick={(e) => setTwelfthNerve(e.target.value)} type="radio" name="nerve9" />
                                    <label> Left</label>
                                    <input className='custom-radio' value="Right" onClick={(e) => setTwelfthNerve(e.target.value)} type="radio" name="nerve9" />
                                    <label> Right</label>
                                    <input className='custom-radio' value="Both" onClick={(e) => setTwelfthNerve(e.target.value)} type="radio" name="nerve9" />
                                    <label> Both</label>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Tongue</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange32(!change32); setTongue("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick32} className="slider round"></div>
                                                {
                                                    change32 &&
                                                    <Popover
                                                        id={id32}
                                                        open={open32}
                                                        anchorEl={anchorEl32}
                                                        onClose={handleClose32}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">
                                                            {
                                                                tongueArray.length > 0 &&
                                                                tongueArray.map((item, i) => {
                                                                    return (
                                                                        <div key={i} className="form-check">
                                                                            <input className="form-check-input" value={item.tongue_name} type="radio" name="cough6" onChange={(e) => setTongue(e.target.value)} id="flexRadioDefault1" />
                                                                            <label className="form-check-label" >
                                                                                {item.tongue_name}
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
                                        <p>{tongue}</p>
                                    </div>
                                </div>
                                <div className="list-bg-white mb-1">
                                    <div className='d-flex justify-content-between'>
                                        <p>Fasciculation/Deviation</p>
                                        <div className="ms-1">
                                            <label className="switch me-1">
                                                <input onChange={() => { setChange33(!change33); setDiviation("") }} type="checkbox" id="togBtn" />
                                                <div onClick={handleClick33} className="slider round"></div>
                                                {
                                                    change33 &&
                                                    <Popover
                                                        id={id33}
                                                        open={open33}
                                                        anchorEl={anchorEl33}
                                                        onClose={handleClose33}
                                                        anchorOrigin={{
                                                            vertical: 'bottom',
                                                            horizontal: 'right',
                                                        }}
                                                        transformOrigin={{
                                                            vertical: 'top',
                                                            horizontal: 'right',
                                                        }}
                                                    >
                                                        <div className="history-select-popup">
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Tremor" type="radio" name="cough8" onChange={(e) => setDiviation(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Tremor
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Small immobile tongue" type="radio" name="cough8" onChange={(e) => setDiviation(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Small immobile tongue
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Deviated- Left" type="radio" name="cough8" onChange={(e) => setDiviation(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Deviated- Left
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" value="Deviated- Right" type="radio" name="cough8" onChange={(e) => setDiviation(e.target.value)} id="flexRadioDefault1" />
                                                                <label className="form-check-label" >
                                                                    Deviated- Right
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </Popover>
                                                }
                                            </label>
                                        </div>

                                    </div>
                                    <div className='history-popup-value'>
                                        <p>{diviation}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    );
};

export default Cns;