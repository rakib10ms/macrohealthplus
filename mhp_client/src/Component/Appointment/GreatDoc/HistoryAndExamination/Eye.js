import { Popover } from '@mui/material';
import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { toast } from 'react-toastify';
import clinic4 from "../../../../Images/clinical8.png";
import Timeline from '@mui/lab/Timeline';
import TimelineItem from '@mui/lab/TimelineItem';
import TimelineSeparator from '@mui/lab/TimelineSeparator';
import TimelineConnector from '@mui/lab/TimelineConnector';
import TimelineContent from '@mui/lab/TimelineContent';
import TimelineDot from '@mui/lab/TimelineDot';
import TimelineOppositeContent from '@mui/lab/TimelineOppositeContent';
import ArrowCircleLeftOutlinedIcon from '@mui/icons-material/ArrowCircleLeftOutlined';
import ArrowCircleDownOutlinedIcon from '@mui/icons-material/ArrowCircleDownOutlined';
import ArrowCircleRightOutlinedIcon from '@mui/icons-material/ArrowCircleRightOutlined';
import ArrowCircleUpOutlinedIcon from '@mui/icons-material/ArrowCircleUpOutlined';
import { TransformWrapper, TransformComponent } from "react-zoom-pan-pinch";
import eyeRight from '../../../../Images/EyeRight.png';
import eyeLeft from '../../../../Images/EyeLeft.png';
// import eye

toast.configure();

const Eye = (props) => {
    const [historyShowAll, setHistoryShowAll] = useState(false);
    const [historyArray, setHistoryArray] = useState([]);
    const [historyValue, setHistoryValue] = useState([]);
    const [externalObservation, setExternalObservation] = useState('');
    const [externalObservationValue, setExternalObservationValue] = useState('');
    const [spectacles, setSpectacles] = useState('');
    const [anteriorEyeExamination, setAnteriorEyeExamination] = useState(false);
    const [contactLense, setContactLense] = useState('');
    const [posteriorEyeExamination, setPosteriorEyeExamination] = useState('');
    const [ancillaryTest, setAncillaryTest] = useState('');

    //UCVA
    const [UCVARightDistance, setUCVARightDistance] = useState("");
    const [UCVARightNear, setUCVARightNear] = useState("");
    const [UCVALeftDistance, setUCVALeftDistance] = useState("");
    const [UCVALeftNear, setUCVALeftNear] = useState("");
    const [UCVAOUDistance, setUCVAOUDistance] = useState("");
    const [UCVAOUNear, setUCVAOUNear] = useState("");
    //UCVA
    //Pinhole
    const [pinholeRightDistance, setPinholeRightDistance] = useState("");
    const [pinholeRightNear, setPinholeRightNear] = useState("");
    const [pinholeLeftDistance, setPinholeLeftDistance] = useState("");
    const [pinholeLeftNear, setPinholeLeftNear] = useState("");
    //Pinhole
    //Cover test
    const [coverDistancePhoria, setCoverDistancePhoria] = useState("");
    const [coverDistanceTropia, setCoverDistanceTropia] = useState("");
    const [coverDistanceTropiaSide, setCoverDistanceTropiaSide] = useState("");
    const [coverDistanceTropiaType, setCoverDistanceTropiaType] = useState("");
    const [coverNearPhoria, setCoverNearPhoria] = useState("");
    const [coverNearTropia, setCoverNearTropia] = useState("");
    const [coverNearTropiaSide, setCoverNearTropiaSide] = useState("");
    const [coverNearTropiaType, setCoverNearTropiaType] = useState("");
    //Cover test

    //EOM
    const [eomType, setEomType] = useState("")
    const [saccades, setSaccades] = useState([]);
    const [eomValue, setEomValue] = useState([]);
    //EOM
    //Pupils
    const [pupils, setPupils] = useState("");
    const [pupilsType, setPupilsType] = useState([]);
    const [pupilsLeftValue, setPupilsLeftValue] = useState('');
    const [pupilsRightValue, setPupilsRightValue] = useState('');
    const [pupilsRightShape, setPupilsRightShape] = useState({ part1: "", part2: "", part3: "", part4: "", part5: "", part6: "", part7: "", part8: "", center: "" });
    const [pupilsLeftShape, setPupilsLeftShape] = useState({ part1: "", part2: "", part3: "", part4: "", part5: "", part6: "", part7: "", part8: "", center: "" });
    //Pupils
    //Gonioscopy
    const [gonioscopy, setGonioscopy] = useState("")
    const [gonioscopyPopup, setGonioscopyPopup] = useState("");
    const [gonioscopyVanHarrik, setGonioscopyVanHarrik] = useState("");
    const [gonioscopyShapeRightS, setGonioscopyShapeRightS] = useState([]);
    const [gonioscopyShapeRightN, setGonioscopyShapeRightN] = useState([]);
    const [gonioscopyShapeRightT, setGonioscopyShapeRightT] = useState([]);
    const [gonioscopyShapeRightI, setGonioscopyShapeRightI] = useState([]);
    const [gonioscopyShapeRightC, setGonioscopyShapeRightC] = useState([]);

    const [gonioscopyShapeLeftS, setGonioscopyShapeLeftS] = useState([]);
    const [gonioscopyShapeLeftN, setGonioscopyShapeLeftN] = useState([]);
    const [gonioscopyShapeLeftT, setGonioscopyShapeLeftT] = useState([]);
    const [gonioscopyShapeLeftI, setGonioscopyShapeLeftI] = useState([]);
    const [gonioscopyShapeLeftC, setGonioscopyShapeLeftC] = useState([]);
    //Gonioscopy
    //Intra-Ocular Pressure
    const [intraOcularPressure, setIntraOcularPressure] = useState("");
    const [intraOcularPressureCheckbox, setIntraOcularPressureCheckbox] = useState([]);
    const [intraOcularPressureLeft, setIntraOcularPressureLeft] = useState("");
    const [intraOcularPressureRight, setIntraOcularPressureRight] = useState("");
    //Intra-Ocular Pressure
    //Pachymetry
    const [pachymetryLeft, setPachymetryLeft] = useState("");
    const [pachymetryRight, setPachymetryRight] = useState("");
    //Pachymetry
    //Keratometry
    const [kRight1, setKRight1] = useState("");
    const [kRight2, setKRight2] = useState("");
    const [kRight3, setKRight3] = useState("");
    const [kRightD1, setKRightD1] = useState('');
    const [kRightD3, setKRightD3] = useState('');
    const [kRightD2, setKRightD2] = useState('');
    const [kRightAt1, setKRightAt1] = useState("");
    const [kRightAt2, setKRightAt2] = useState("");
    const [kRightCly, setKRightCly] = useState("");
    const [kRightClyAt, setKRightClyAt] = useState("");

    const [kLeft1, setKLeft1] = useState("");
    const [kLeft2, setKLeft2] = useState("");
    const [kLeft3, setKLeft3] = useState("");
    const [kLeftD1, setKLeftD1] = useState('');
    const [kLeftD3, setKLeftD3] = useState('');
    const [kLeftD2, setKLeftD2] = useState('');
    const [kLeftAt1, setKLeftAt1] = useState("");
    const [kLeftAt2, setKLeftAt2] = useState("");
    const [kLeftCly, setKLeftCly] = useState("");
    const [kLeftClyAt, setKLeftClyAt] = useState("");

    //Keratometry
    //PosteriorEyeExamination
    const [posteriorEye, setPosteriorEye] = useState('');
    const [posteriorEyeCheckbox, setPosteriorEyeCheckbox] = useState([]);
    const [posteriorEyeShapeRight, setPosteriorEyeShapeRight] = useState({ part1: "", part2: "", part3: "", part4: "", center: "" });
    const [posteriorEyeShapeLeft, setPosteriorEyeShapeLeft] = useState({ part1: "", part2: "", part3: "", part4: "", center: "" });
    const [posteriorEyeStartTime, setPosteriorEyeStartTime] = useState('');
    const [posteriorEyeEndTime, setPosteriorEyeEndTime] = useState('');
    //PosteriorEyeExamination
    //Spectacles
    const [spectaclesFirst, setSpectaclesFirst] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesFirstRight, setSpectaclesFirstRight] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesSecond, setSpectaclesSecond] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesSecondRight, setSpectaclesSecondRight] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesThird, setSpectaclesThird] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesThirdRight, setSpectaclesThirdRight] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesFourth, setSpectaclesFourth] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesFourthRight, setSpectaclesFourthRight] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesFifth, setSpectaclesFifth] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesFifthRight, setSpectaclesFifthRight] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesSixth, setSpectaclesSixth] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesSixthRight, setSpectaclesSixthRight] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesSeventh, setSpectaclesSeventh] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });
    const [spectaclesSeventhRight, setSpectaclesSeventhRight] = useState({ sphere: "", cyl: "", axis: "", VA: "", add: "", intern: "", prism: "", prismUnit: "" });

    const [sphere, setSphere] = useState({ first: "", second: "", third: "", fourth: "", fifth: "", six: "" });
    const [sphere2, setSphere2] = useState({ first: "", second: "", third: "", fourth: "", fifth: "", six: "", seventh: "" });
    const [SU, setSU] = useState('');
    const [GI, setGI] = useState('');
    const [trailFramed, setTrailFramed] = useState('');
    const [rxAdvice, setRxAdvice] = useState([]);
    //Spectacles
    //contract lens
    const [contractLens, setContractLens] = useState({ consultationDate: "", dueDate: "", prescriber: "", dispenser: "", invNo: "", warrantyExpire: "", right: "", left: "" });
    const [contractLensInfoRight, setContractLensInfoRight] = useState({ cLCode: "", sup: "", BCOR: "", OAD: "", sphere: "", cyl: "", axis: "", add: "", BCOD: "", perip: "", orderStatus: "", price: "", qty: "" });
    const [contractLensInfoLeft, setContractLensInfoLeft] = useState({ cLCode: "", sup: "", BCOR: "", OAD: "", sphere: "", cyl: "", axis: "", add: "", BCOD: "", perip: "", orderStatus: "", price: "", qty: "" });
    //contract lens
    //Ancillary Test
    const [ancillaryTestInfo, setAncillaryTestInfo] = useState({ colorVisionMethod: "", result: "", topography: "", stereopsis: "", maddoxWing: "", B: "", fusionalReserves: "", visionTraining: "", OCT: "", });
    const [ancillaryTestImportExport, setAncillaryTestImportExport] = useState([]);
    //Ancillary Test
    //Previous Spectacles
    const [previousSpectacles1, setPreviousSpectacles1] = useState({ date: "", optom: "", type: "", right: "", sphereRight: "", cylRight: "", axisRight: "", addRight: "", interRight: "", left: "", sphereLeft: "", cylLeft: "", axisLeft: "", addLeft: "", interLeft: "", noteLeft: "" });
    // const [setPreviousSpectacles2, setPreviousSpectacles2] = useState([]);
    //Previous Spectacles

    const [externalObservationArray, setExternalObservationArray] = useState([])
    const [spectaclesArray, setSpectaclesArray] = useState([
        { name: "Test 1", id: 1 },
        { name: "Test 2", id: 2 },
        { name: "Test 3", id: 3 },
        { name: "Test 4", id: 4 },
    ]);
    const [posteriorEyeExaminationArray, setPosteriorEyeExaminationArray] = useState([
        { name: "Abnormal gait", id: 1 },
        { name: "Speech abnormal", id: 2 },
        { name: "Test 3", id: 3 },
        { name: "Developmental delay-congenital", id: 4 },
    ]);
    const [ancillaryTestArray, setAncillaryTestArray] = useState([
        { name: "Developmental delay-acquired", id: 1 },
    ]);
    const [UCVAArray1, setUCVAArray1] = useState([
        { name: "6/5+", id: 1 },
        { name: "6/5", id: 2 },
        { name: "6/5-", id: 3 },
        { name: "6/5=", id: 4 },
        { name: "6/6+", id: 5 },
        { name: "6/6", id: 6 },
        { name: "6/6-", id: 7 },
        { name: "6/6=", id: 8 },
        { name: "6/7.5+", id: 9 },
        { name: "6/7.5", id: 10 },
        { name: "6/7.5-", id: 11 },
        { name: "6/7.5=", id: 12 },
        { name: "6/9+", id: 13 }
    ])
    const [UCVAArray2, setUCVAArray2] = useState([
        { name: "6/9", id: 1 },
        { name: "6/9-", id: 2 },
        { name: "6/9=", id: 3 },
        { name: "6/12+", id: 4 },
        { name: "6/12", id: 5 },
        { name: "6/12-", id: 6 },
        { name: "6/12=", id: 7 },
        { name: "6/24+", id: 8 },
        { name: "6/24", id: 9 },
        { name: "6/24-", id: 10 },
        { name: "6/24=", id: 11 },
        { name: "6/36+", id: 12 },
        { name: "6/36", id: 13 },
    ])
    const [UCVAArray3, setUCVAArray3] = useState([

        { name: "6/36-", id: 1 },
        { name: "6/36=", id: 2 },
        { name: "6/60+", id: 3 },
        { name: "6/60", id: 4 },
        { name: "6/60-", id: 5 },
        { name: "6/60=", id: 6 },
        { name: "6/120+", id: 7 },
        { name: "6/120", id: 8 },
        { name: "6/120-", id: 9 },
        { name: "6/120=", id: 10 },
        { name: "HM", id: 11 },
        { name: "LP", id: 12 },
    ])
    useEffect(() => {

        axios.get(`/commonHistory-all/eye`).then(res => {
            if (res.data.status === 200) {
                setHistoryArray(res.data.commonHistory);
            }
        });
        axios.get(`/external-observation`).then(res => {
            if (res.data.status === 200) {
                setExternalObservationArray(res.data.ExternalObservation);
            }
        });



    }, [])

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
    const [change20, setChange20] = useState(false);
    const [anchorEl20, setAnchorEl20] = useState(null);
    const open20 = Boolean(anchorEl20);
    const id20 = open20 ? 'simple-popover' : undefined;
    //
    const [change21, setChange21] = useState(false);
    const [anchorEl21, setAnchorEl21] = useState(null);
    const open21 = Boolean(anchorEl21);
    const id21 = open21 ? 'simple-popover' : undefined;
    //
    const [change22, setChange22] = useState(false);
    const [anchorEl22, setAnchorEl22] = useState(null);
    const open22 = Boolean(anchorEl22);
    const id22 = open22 ? 'simple-popover' : undefined;
    //
    const [change23, setChange23] = useState(false);
    const [anchorEl23, setAnchorEl23] = useState(null);
    const open23 = Boolean(anchorEl23);
    const id23 = open23 ? 'simple-popover' : undefined;
    //

    const [saveLoding, setsaveLoding] = useState(false)

    const saveEyeData = () => {
        setsaveLoding(true)



        //     toast.success(res.data.message)
        // }
    }

    useEffect(() => {
        if (kRight1 !== '' && kRight2 !== '') {
            const newValue = parseFloat(kRight1) + parseFloat(kRight2);
            setKRight3(newValue.toFixed(2))
        }
    }, [kRight1, kRight2])
    useEffect(() => {
        if (kRightD1 !== '' && kRightD2 !== '') {
            const newValue = (parseFloat(kRightD1) + parseFloat(kRightD2)) / 2;
            setKRightD3(newValue.toFixed(2))
        }
    }, [kRightD1, kRightD2])
    useEffect(() => {
        if (kLeft1 !== '' && kLeft2 !== '') {
            const newValue = parseFloat(kLeft1) + parseFloat(kLeft2);
            setKLeft3(newValue.toFixed(2))
        }
    }, [kLeft1, kLeft2])
    useEffect(() => {
        if (kLeftD1 !== '' && kLeftD2 !== '') {
            const newValue = (parseFloat(kLeftD1) + parseFloat(kLeftD2)) / 2;
            setKLeftD3(newValue.toFixed(2))
        }
    }, [kLeftD1, kLeftD2])


    console.log(spectaclesFirst, "ddp")

    return (
        <div className='row'>
            <div className="history-main-header d-flex justify-content-between mb-2">
                <div>
                    <h6>EYE Examination</h6>
                </div>
                <div>
                    <img src={clinic4} alt="" className="img-fluid" />
                </div>
            </div>
            <div className="col-2">
                <div className="he-history eye-history p-1">
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
                            historyArray.map((item, i) => <li key={i}>
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">{item.history_name}</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name={item.id}
                                                type="checkbox"
                                                value={item.history_name} onChange={(e) => {
                                                    const { value, checked } = e.target;

                                                    if (checked) {
                                                        setHistoryValue([...historyValue, value])
                                                    } else {
                                                        const newHistory = historyValue.filter((item) => item !== value)
                                                        setHistoryValue(newHistory)
                                                    }
                                                }
                                                }
                                            />
                                            <div className="slider round"></div>

                                        </label>
                                    </div>
                                </div>
                            </li>)
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
            <div className="col-10 cns-container">
                <div className='history-main-header mb-2'>
                    <div className="d-flex">
                        <input type="text" placeholder='Examination Search' className="form-control form-control-sm w-75" />
                        <div className="w-25">
                            <button onClick={() => setsaveLoding(false)} className="vaital-setup-btn-cancel float-end">Reset</button>

                            {
                                saveLoding ?
                                    <button className="vaital-setup-btn float-end me-2"><i className="fas fa-check-circle"></i></button>
                                    :
                                    <button onClick={saveEyeData} className="vaital-setup-btn float-end me-2">Save</button>
                            }

                        </div>
                    </div>
                </div>
                <div style={{ backgroundColor: "#ffff" }} className="text-center">
                    <div className="col-7">
                        <TransformWrapper>
                            {({ zoomIn, zoomOut, doubleClick, resetTransform, ...rest }) => (
                                <React.Fragment>
                                    <div className="tools">
                                        <button className='zoom-button' onClick={() => zoomIn()}><i className="fas fa-search-plus"></i></button>
                                        <button className='zoom-button' onClick={() => zoomOut()}><i className="fas fa-search-minus"></i></button>
                                        <button className='zoom-button' onClick={() => resetTransform()}><i className="fas fa-sync-alt"></i></button>
                                    </div>
                                    <div className="ehr-anatomy">
                                        <TransformComponent>
                                            <div className="row">
                                                <div className="col-6">
                                                    <img src={eyeRight} alt="" className='img-fluid' />
                                                </div>
                                                <div className="col-6">
                                                <img src={eyeLeft} alt="" className='img-fluid' />
                                                </div>
                                            </div>
                                        </TransformComponent>
                                    </div>
                                </React.Fragment>
                            )}
                        </TransformWrapper>
                    </div>
                </div>
                <div className="row">
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">External Observation</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange(!change); setExternalObservation(""); setExternalObservationValue("") }}
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
                                                <div style={{ width: "200px" }} className="left-popup">
                                                    {
                                                        externalObservationArray.length > 0 &&
                                                        externalObservationArray.map((v, i) => {
                                                            return (
                                                                <div key={i} className="form-check ms-1">
                                                                    <input className="form-check-input" value={v.ExternalObservation_name} type="radio" name="cough1" onChange={(e) => { setExternalObservation(e.target.value) }} id="flexRadioDefault1" />
                                                                    <label className="d-flex" >
                                                                        <span style={{ width: "170px" }}>{v.ExternalObservation_name}</span>
                                                                        <input type="text" className="form-control form-control-sm w-25 ms-2" onChange={(e) => setExternalObservationValue(e.target.value)} />
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
                                <p>{externalObservation} {externalObservationValue && " : "} {externalObservationValue}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Spectacles</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange1(!change1); setSpectacles("") }}
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
                                                        spectaclesArray.length > 0 &&
                                                        spectaclesArray.map((v, i) => {
                                                            return (
                                                                <div key={i} className="form-check ms-1">
                                                                    <input className="form-check-input" value={v.name} type="radio" name="cough1" onChange={(e) => { setSpectacles(e.target.value) }} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {v.name}
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
                                <p>{spectacles}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Anterior Eye Examination</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setAnteriorEyeExamination(!anteriorEyeExamination) }}
                                            id="togBtn"
                                        />
                                        <div className="slider round"></div>

                                    </label>
                                </div>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">OU Lense</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange3(!change3); setContactLense("") }}
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
                                                        spectaclesArray.length > 0 &&
                                                        spectaclesArray.map((v, i) => {
                                                            return (
                                                                <div key={i} className="form-check ms-1">
                                                                    <input className="form-check-input" value={v.name} type="radio" name="cough1" onChange={(e) => { setContactLense(e.target.value) }} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {v.name}
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
                                <p>{contactLense}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Posterior Eye Examination</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange5(!change5); setPosteriorEyeExamination("") }}
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
                                                        posteriorEyeExaminationArray.length > 0 &&
                                                        spectaclesArray.map((v, i) => {
                                                            return (
                                                                <div key={i} className="form-check ms-1">
                                                                    <input className="form-check-input" value={v.name} type="radio" name="cough1" onChange={(e) => { setPosteriorEyeExamination(e.target.value) }} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {v.name}
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
                                <p>{posteriorEyeExamination}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Ancillary Test</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange6(!change6); setAncillaryTest("") }}
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
                                                    vertical: 'center',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                            >
                                                <div className="left-popup">
                                                    {
                                                        ancillaryTestArray.length > 0 &&
                                                        ancillaryTestArray.map((v, i) => {
                                                            return (
                                                                <div key={i} className="form-check ms-1">
                                                                    <input className="form-check-input" value={v.name} type="radio" name="cough1" onChange={(e) => { setAncillaryTest(e.target.value) }} id="flexRadioDefault1" />
                                                                    <label className="form-check-label" >
                                                                        {v.name}
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
                                <p>{ancillaryTest}</p>
                            </div>
                        </div>
                    </div>
                </div>
                {
                    anteriorEyeExamination &&
                    <div className="row mt-2 exam-bg-white">
                        <h6 className="my-1">Anterior Eye Examination</h6>
                        <div className="col-4">
                            <div className="exam-bg-white p-1">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">UCVA</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange4(!change4); setUCVAOUNear(""); setUCVAOUDistance(""); setUCVALeftNear(); setUCVALeftDistance(""); setUCVARightNear(""); setUCVARightDistance("") }}
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

                                                    <div style={{ width: "500px" }} className="left-popup">
                                                        <div className="cns-container">
                                                            <ul className="nav nav-pills" id="pills-tab" role="tablist">
                                                                <li className="nav-item" role="presentation">
                                                                    <button className="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Right</button>
                                                                </li>
                                                                <li className="nav-item" role="presentation">
                                                                    <button className="nav-link" id="pills-Left-tab" data-bs-toggle="pill" data-bs-target="#pills-Left" type="button" role="tab" aria-controls="pills-Left" aria-selected="false">Left</button>
                                                                </li>
                                                                <li className="nav-item" role="presentation">
                                                                    <button className="nav-link" id="pills-OU-tab" data-bs-toggle="pill" data-bs-target="#pills-OU" type="button" role="tab" aria-controls="pills-OU" aria-selected="false">OU</button>
                                                                </li>
                                                            </ul>
                                                            <div className="tab-content" id="pills-tabContent">
                                                                <div className="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                                                    <div className="row eye-large-popup p-2">
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1'>Distance</h6>
                                                                            <div className="border-top row">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough2" onChange={(e) => { setUCVARightDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough2" onChange={(e) => { setUCVARightDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough2" onChange={(e) => { setUCVARightDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1 '>Near</h6>
                                                                            <div className="border-top row clearfix">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough1" onChange={(e) => { setUCVARightNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough1" onChange={(e) => { setUCVARightNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough1" onChange={(e) => { setUCVARightNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
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
                                                                <div className="tab-pane fade" id="pills-Left" role="tabpanel" aria-labelledby="pills-Left-tab">
                                                                    <div className="row eye-large-popup p-2">
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1'>Distance</h6>
                                                                            <div className="border-top row">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setUCVALeftDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setUCVALeftDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setUCVALeftDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1 '>Near</h6>
                                                                            <div className="border-top row clearfix">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setUCVALeftNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setUCVALeftNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setUCVALeftNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
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
                                                                <div className="tab-pane fade" id="pills-OU" role="tabpanel" aria-labelledby="pills-OU-tab">
                                                                    <div className="row eye-large-popup p-2">
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1'>Distance</h6>
                                                                            <div className="border-top row">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setUCVAOUDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setUCVAOUDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setUCVAOUDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1 '>Near</h6>
                                                                            <div className="border-top row clearfix">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setUCVAOUNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setUCVAOUNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setUCVAOUNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
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
                                                        </div>

                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p className='ms-1'>{UCVARightDistance && `R : D - ${UCVARightDistance}`} {UCVARightNear && `,N -  ${UCVARightNear} `} {(UCVARightNear || UCVARightDistance) && " | "} {UCVALeftDistance && `L : D - ${UCVALeftDistance}`} {UCVALeftNear && `,N -  ${UCVALeftNear} `} {(UCVALeftNear || UCVALeftDistance) && " | "} {UCVAOUDistance && `OU : D - ${UCVAOUDistance}`} {UCVAOUNear && `,N -  ${UCVAOUNear} `} {(UCVAOUNear || UCVAOUDistance) && " | "}</p>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1 mt-2">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">EOM</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange9(!change9); setEomType(""); setEomValue([]); setSaccades([]); }}
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

                                                    <div style={{ width: "500px" }} className="left-popup">
                                                        <div className="d-flex">
                                                            <input className="custom-radio" value="Restricted" type="radio" name="cough2" onChange={(e) => { setEomType(e.target.value) }} id="flexRadioDefault1" />
                                                            <label className="" >
                                                                Restricted
                                                            </label>
                                                        </div>
                                                        <div className="d-flex">
                                                            <input className="custom-radio" value="Pain" type="radio" name="cough2" onChange={(e) => { setEomType(e.target.value); setSaccades([]) }} id="flexRadioDefault1" />
                                                            <label className="" >
                                                                Pain
                                                            </label>
                                                        </div>
                                                        <div className="d-flex">
                                                            <input className="custom-radio" value="Saccades" type="radio" name="cough2" onChange={(e) => { setEomType(e.target.value); setSaccades([]) }} id="flexRadioDefault1" />
                                                            <label className="" >
                                                                Saccades
                                                            </label>
                                                        </div>
                                                        {
                                                            eomType === "Saccades" &&
                                                            <div style={{ width: "180px" }} className="form-check ms-3 border rounded shadow">
                                                                <div className="p-2">
                                                                    <input className="form-check-input" type="checkbox" value="Jerky" onChange={(e) => {
                                                                        const { value, checked } = e.target;

                                                                        if (checked) {
                                                                            setSaccades([...saccades, value])
                                                                        } else {
                                                                            const newCn = saccades.filter((item) => item !== value)
                                                                            setSaccades(newCn)
                                                                        }
                                                                    }
                                                                    } id="flexCheckDefault" />
                                                                    <label className="form-check-label" for="flexCheckDefault">
                                                                        Jerky
                                                                    </label>
                                                                    <input className="form-check-input" type="checkbox" value="Overshoot" onChange={(e) => {
                                                                        const { value, checked } = e.target;

                                                                        if (checked) {
                                                                            setSaccades([...saccades, value])
                                                                        } else {
                                                                            const newCn = saccades.filter((item) => item !== value)
                                                                            setSaccades(newCn)
                                                                        }
                                                                    }
                                                                    } id="flexCheckDefault" />
                                                                    <label className="form-check-label" for="flexCheckDefault">
                                                                        Overshoot
                                                                    </label>
                                                                    <input className="form-check-input" type="checkbox" value="Undershoot" onChange={(e) => {
                                                                        const { value, checked } = e.target;

                                                                        if (checked) {
                                                                            setSaccades([...saccades, value])
                                                                        } else {
                                                                            const newCn = saccades.filter((item) => item !== value)
                                                                            setSaccades(newCn)
                                                                        }
                                                                    }
                                                                    } id="flexCheckDefault" />
                                                                    <label className="form-check-label" for="flexCheckDefault">
                                                                        Undershoot
                                                                    </label>
                                                                </div>
                                                            </div>

                                                        }
                                                        <div className="d-flex">
                                                            <input className="custom-radio" value="Pursuits" type="radio" name="cough2" onChange={(e) => { setEomType(e.target.value); setSaccades([]) }} id="flexRadioDefault1" />
                                                            <label className="" >
                                                                Pursuits
                                                            </label>
                                                        </div>
                                                        <div className="d-flex">
                                                            <input className="custom-radio" value="Full" type="radio" name="cough2" onChange={(e) => { setEomType(e.target.value); setSaccades([]) }} id="flexRadioDefault1" />
                                                            <label className="" >
                                                                Full
                                                            </label>
                                                        </div>
                                                        {/* <p className='rsr-text'>Click on the RSR etc and select</p> */}
                                                        <div className="border rsr-timeline row rounded shadow p-1">
                                                            <div className="col-4">
                                                                <Timeline position="left">
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot >
                                                                                <input className="RSR" value="RSR" type="checkbox" name="coughRSR2" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} />

                                                                            </TimelineDot >
                                                                            <TimelineConnector />
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>RSR</TimelineContent>
                                                                    </TimelineItem>
                                                                    <TimelineItem>
                                                                        <TimelineOppositeContent color="text.secondary">
                                                                            <hr />
                                                                        </TimelineOppositeContent>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot className='tricky'>
                                                                                <input className="RLR" value="RLR" type="checkbox" name="cough2RLR" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />

                                                                            </TimelineDot >
                                                                            <TimelineConnector />
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>RLR</TimelineContent>
                                                                    </TimelineItem>
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot >
                                                                                <input className="RIR" value="RIR" type="checkbox" name="cough2RIR" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />

                                                                            </TimelineDot >
                                                                            {/* <TimelineConnector /> */}
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>RIR</TimelineContent>
                                                                    </TimelineItem>
                                                                </Timeline>
                                                            </div>
                                                            <div className="col-2">
                                                                <Timeline position="right">
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot >
                                                                                <input className="RIO" value="RIO" type="checkbox" name="coughrio" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />
                                                                            </TimelineDot >
                                                                            <TimelineConnector />
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>RIO</TimelineContent>
                                                                    </TimelineItem>
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot className='tricky2'>
                                                                                <input className="RMR" value="RMR" type="checkbox" name="coughRMR" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />
                                                                            </TimelineDot >
                                                                            <TimelineConnector />
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>RMR</TimelineContent>
                                                                    </TimelineItem>
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot >
                                                                                <input className="RSO" value="RSO" type="checkbox" name="coughRIO" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />

                                                                            </TimelineDot >
                                                                            {/* <TimelineConnector /> */}
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>RSO</TimelineContent>
                                                                    </TimelineItem>
                                                                </Timeline>
                                                            </div>
                                                            <div className="col-4">
                                                                <Timeline position="left">
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot >
                                                                                <input className="LIO" value="LIO" type="checkbox" name="cough2LIO" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />

                                                                            </TimelineDot >
                                                                            <TimelineConnector />
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>LIO</TimelineContent>
                                                                    </TimelineItem>
                                                                    <TimelineItem>
                                                                        <TimelineOppositeContent color="text.secondary">
                                                                            <hr />
                                                                        </TimelineOppositeContent>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot className='tricky'>
                                                                                <input className="LMR" value="LMR" type="checkbox" name="cough2LMR" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />

                                                                            </TimelineDot >
                                                                            <TimelineConnector />
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>LMR</TimelineContent>
                                                                    </TimelineItem>
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot >
                                                                                <input className="LSO" value="LSO" type="checkbox" name="cough2LSO" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />

                                                                            </TimelineDot >
                                                                            {/* <TimelineConnector /> */}
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>LSO</TimelineContent>
                                                                    </TimelineItem>
                                                                </Timeline>
                                                            </div>
                                                            <div className="col-2">
                                                                <Timeline position="right">
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot >
                                                                                <input className="LSR" value="LSR" type="checkbox" name="cough2LSR" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />

                                                                            </TimelineDot >
                                                                            <TimelineConnector />
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>LSR</TimelineContent>
                                                                    </TimelineItem>
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot className='tricky2'>
                                                                                <input className="LLR" value="LLR" type="checkbox" name="cough2LLR" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />
                                                                            </TimelineDot >
                                                                            <TimelineConnector />
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>LLR</TimelineContent>
                                                                    </TimelineItem>
                                                                    <TimelineItem>
                                                                        <TimelineSeparator>
                                                                            <TimelineDot >
                                                                                <input className="LIR" value="LIR" type="checkbox" name="cough2LIR" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setEomValue([...eomValue, value])
                                                                                    } else {
                                                                                        const newCn = eomValue.filter((item) => item !== value)
                                                                                        setEomValue(newCn)
                                                                                    }
                                                                                }} id="flexRadioDefault1" />

                                                                            </TimelineDot >
                                                                            {/* <TimelineConnector /> */}
                                                                        </TimelineSeparator>
                                                                        <TimelineContent>LIR</TimelineContent>
                                                                    </TimelineItem>
                                                                </Timeline>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p>{eomType} {saccades.length > 0 && " - "} {saccades.length > 0 && saccades.map((item, i) => <span key={i} className='me-1'>{item},</span>)} {
                                        eomValue.map((item, i) => <span key={i} className="me-1">{item},</span>)
                                    }</p>

                                </div>
                            </div>
                            <div className="exam-bg-white p-1 mt-2">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">Gonioscopy</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange11(!change11); setGonioscopy(''); setGonioscopyShapeLeftC([]); setGonioscopyShapeLeftI([]); setGonioscopyShapeLeftT([]); setGonioscopyShapeLeftN([]); setGonioscopyShapeLeftS([]); setGonioscopyShapeRightC([]); setGonioscopyShapeRightI([]); setGonioscopyShapeRightN([]); setGonioscopyShapeRightS([]) }}
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
                                                        horizontal: 'left',
                                                    }}
                                                >

                                                    <div style={{ width: "300px" }} className="left-popup">
                                                        <div className="d-flex">
                                                            <input className="custom-radio" value="Van Herrick" type="radio" name="cough2" onChange={(e) => { setGonioscopy(e.target.value); }} id="flexRadioDefault1" />
                                                            <label className="" >
                                                                Van Herrick
                                                            </label>
                                                        </div>

                                                        {
                                                            gonioscopy === "Van Herrick" &&
                                                            <div className="ms-2 mt-1 d-flex border rounded p-1">
                                                                <div className="d-flex me-1">
                                                                    <input className="custom-radio" value="G1" type="radio" name="cough6" onChange={(e) => { setGonioscopyVanHarrik(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        G1
                                                                    </label>
                                                                </div>
                                                                <div className="d-flex me-1">
                                                                    <input className="custom-radio" value="G2" type="radio" name="cough6" onChange={(e) => { setGonioscopyVanHarrik(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        G2
                                                                    </label>
                                                                </div>
                                                                <div className="d-flex me-1">
                                                                    <input className="custom-radio" value="G3" type="radio" name="cough6" onChange={(e) => { setGonioscopyVanHarrik(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        G3
                                                                    </label>
                                                                </div>
                                                                <div className="d-flex me-1">
                                                                    <input className="custom-radio" value="G4" type="radio" name="cough6" onChange={(e) => { setGonioscopyVanHarrik(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        G4
                                                                    </label>
                                                                </div>
                                                                <div className="d-flex me-1">
                                                                    <input className="custom-radio" value="G5" type="radio" name="cough6" onChange={(e) => { setGonioscopyVanHarrik(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        G5
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        }

                                                        <div className="d-flex">
                                                            <input className="custom-radio" value="Schaffer" type="radio" name="cough2" onChange={(e) => { setGonioscopy(e.target.value); }} id="flexRadioDefault1" />
                                                            <label className="" >
                                                                Schaffer
                                                            </label>
                                                        </div>
                                                        <div className="d-flex">
                                                            <input className="custom-radio" value="Land Mark Visible" type="radio" name="cough2" onChange={(e) => { setGonioscopy(e.target.value); }} id="flexRadioDefault1" />
                                                            <label className="" >
                                                                Land Mark Visible
                                                            </label>
                                                        </div>
                                                        <div className="mt-1 border rounded p-1 eye-svg-content">
                                                            <div className="row">
                                                                <div className="col-6 text-center">
                                                                    <div className="text-center">
                                                                        <span className="py-2">Right</span>
                                                                    </div>
                                                                    <span className='d-block mt-2 mb-1'>S</span>
                                                                    <span className='me-2'>T</span>
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" >

                                                                        {/* part1 */}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeRightT.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl21(e.currentTarget); setGonioscopyPopup("RightT"); }} d="m 25.379164,41.439909 a 13.820556,13.81805 0 0 1 -0.07113,-1.422341 14.567421,14.56478 0 0 1 3.613403,-9.650589 L 11.003793,12.452584 A 39.832793,39.82557 0 0 0 -1.5761401e-5,39.996233 c 0,0.483596 0,0.967192 0,1.422341 A 39.832793,39.82557 0 0 0 12.447732,68.983558 L 30.365376,51.069163 a 14.58876,14.586115 0 0 1 -4.986212,-9.629254 z" />
                                                                        {/* part2 */}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeRightS.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl21(e.currentTarget); setGonioscopyPopup("RightS"); }} d="M 40.010602,-1.8261322e-5 A 39.832793,39.82557 0 0 0 11.018019,12.452584 l 17.917644,17.914395 a 14.652777,14.65012 0 0 1 22.149878,0 L 68.996072,12.445472 A 39.889697,39.882464 0 0 0 40.010602,-1.8261322e-5 Z" />
                                                                        {/* part3 */}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeRightN.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl21(e.currentTarget); setGonioscopyPopup("RightN"); }} d="M 68.996072,12.445472 51.078428,30.366979 a 14.567421,14.56478 0 0 1 3.613403,9.629254 13.820556,13.81805 0 0 1 -0.07113,1.422341 14.58876,14.586115 0 0 1 -4.979099,9.629254 l 17.93187,17.93573 A 39.832793,39.82557 0 0 0 79.999881,41.439909 c 0,-0.476484 0,-0.96008 0,-1.422341 A 39.889697,39.882464 0 0 0 68.996072,12.445472 Z" />
                                                                        {/* part4 */}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeRightI.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl21(e.currentTarget); setGonioscopyPopup("RightI"); }} d="m 49.634489,51.069163 v 0 a 14.652777,14.65012 0 0 1 -19.254887,0 L 12.454845,68.983558 a 39.975053,39.967804 0 0 0 55.118627,0 z" />
                                                                        {/* part middle*/}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeRightC.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl21(e.currentTarget); setGonioscopyPopup("RightC"); }} d="m 54.698944,39.996233 a 13.820556,13.81805 0 0 1 -0.07113,1.422341 14.688342,14.685679 0 0 1 -29.234424,0 13.820556,13.81805 0 0 1 -0.07113,-1.422341 14.688342,14.685679 0 0 1 29.376684,0 z" />
                                                                        <Popover
                                                                            id={id21}
                                                                            open={open21}
                                                                            anchorEl={anchorEl21}
                                                                            onClose={() => setAnchorEl21(null)}
                                                                            anchorOrigin={{
                                                                                vertical: 'center',
                                                                                horizontal: 'left',
                                                                            }}
                                                                            transformOrigin={{
                                                                                vertical: 'center',
                                                                                horizontal: 'right',
                                                                            }}
                                                                        >
                                                                            <div style={{ width: "300px" }} className="left-popup">
                                                                                {
                                                                                    gonioscopyPopup === "RightT" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeRightT.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightT([...gonioscopyShapeRightT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeRightT.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightT([...gonioscopyShapeRightT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeRightT.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightT([...gonioscopyShapeRightT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeRightT.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightT([...gonioscopyShapeRightT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeRightT.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightT([...gonioscopyShapeRightT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                                {
                                                                                    gonioscopyPopup === "RightS" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeRightS.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightS([...gonioscopyShapeRightS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeRightS.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightS([...gonioscopyShapeRightS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeRightS.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightS([...gonioscopyShapeRightS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeRightS.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightS([...gonioscopyShapeRightS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeRightS.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightS([...gonioscopyShapeRightS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                                {
                                                                                    gonioscopyPopup === "RightN" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeRightN.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightN([...gonioscopyShapeRightN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeRightN.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightN([...gonioscopyShapeRightN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeRightN.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightN([...gonioscopyShapeRightN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeRightN.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightN([...gonioscopyShapeRightN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeRightN.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightN([...gonioscopyShapeRightN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                                {
                                                                                    gonioscopyPopup === "RightI" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeRightI.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightI([...gonioscopyShapeRightI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeRightI.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightI([...gonioscopyShapeRightI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeRightI.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightI([...gonioscopyShapeRightI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeRightI.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightI([...gonioscopyShapeRightI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeRightI.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightI([...gonioscopyShapeRightI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                                {
                                                                                    gonioscopyPopup === "RightC" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeRightC.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightC([...gonioscopyShapeRightC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeRightC.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightC([...gonioscopyShapeRightC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeRightC.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightC([...gonioscopyShapeRightC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeRightC.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightC([...gonioscopyShapeRightC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeRightC.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeRightC([...gonioscopyShapeRightC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeRightC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                            </div>
                                                                        </Popover>
                                                                    </svg>
                                                                    <span className='ms-2'>N</span>
                                                                    <span className='mt-1 d-block'>I</span>
                                                                </div>
                                                                <div className="col-6 text-center">
                                                                    <div className="text-center">
                                                                        <span className="py-2">Left</span>
                                                                    </div>
                                                                    <span className='d-block mt-2 mb-1'>S</span>
                                                                    <span className='me-2'>T</span>
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" >

                                                                        {/* part1 */}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeLeftT.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl22(e.currentTarget); setGonioscopyPopup("LeftT"); }} d="m 25.379164,41.439909 a 13.820556,13.81805 0 0 1 -0.07113,-1.422341 14.567421,14.56478 0 0 1 3.613403,-9.650589 L 11.003793,12.452584 A 39.832793,39.82557 0 0 0 -1.5761401e-5,39.996233 c 0,0.483596 0,0.967192 0,1.422341 A 39.832793,39.82557 0 0 0 12.447732,68.983558 L 30.365376,51.069163 a 14.58876,14.586115 0 0 1 -4.986212,-9.629254 z" />
                                                                        {/* part2 */}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeLeftS.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl22(e.currentTarget); setGonioscopyPopup("LeftS"); }} d="M 40.010602,-1.8261322e-5 A 39.832793,39.82557 0 0 0 11.018019,12.452584 l 17.917644,17.914395 a 14.652777,14.65012 0 0 1 22.149878,0 L 68.996072,12.445472 A 39.889697,39.882464 0 0 0 40.010602,-1.8261322e-5 Z" />
                                                                        {/* part3 */}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeLeftN.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl22(e.currentTarget); setGonioscopyPopup("LeftN"); }} d="M 68.996072,12.445472 51.078428,30.366979 a 14.567421,14.56478 0 0 1 3.613403,9.629254 13.820556,13.81805 0 0 1 -0.07113,1.422341 14.58876,14.586115 0 0 1 -4.979099,9.629254 l 17.93187,17.93573 A 39.832793,39.82557 0 0 0 79.999881,41.439909 c 0,-0.476484 0,-0.96008 0,-1.422341 A 39.889697,39.882464 0 0 0 68.996072,12.445472 Z" />
                                                                        {/* part4 */}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeLeftI.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl22(e.currentTarget); setGonioscopyPopup("LeftI"); }} d="m 49.634489,51.069163 v 0 a 14.652777,14.65012 0 0 1 -19.254887,0 L 12.454845,68.983558 a 39.975053,39.967804 0 0 0 55.118627,0 z" />
                                                                        {/* part middle*/}
                                                                        <path className={`eye-svg-bg ${gonioscopyShapeLeftC.length > 0 && "active-eye-svg"}`} onClick={(e) => { setAnchorEl22(e.currentTarget); setGonioscopyPopup("LeftC"); }} d="m 54.698944,39.996233 a 13.820556,13.81805 0 0 1 -0.07113,1.422341 14.688342,14.685679 0 0 1 -29.234424,0 13.820556,13.81805 0 0 1 -0.07113,-1.422341 14.688342,14.685679 0 0 1 29.376684,0 z" />
                                                                        <Popover
                                                                            id={id22}
                                                                            open={open22}
                                                                            anchorEl={anchorEl22}
                                                                            onClose={() => setAnchorEl22(null)}
                                                                            anchorOrigin={{
                                                                                vertical: 'center',
                                                                                horizontal: 'left',
                                                                            }}
                                                                            transformOrigin={{
                                                                                vertical: 'center',
                                                                                horizontal: 'right',
                                                                            }}
                                                                        >
                                                                            <div style={{ width: "300px" }} className="left-popup">
                                                                                {
                                                                                    gonioscopyPopup === "LeftT" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeLeftT.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftT([...gonioscopyShapeLeftT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeLeftT.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftT([...gonioscopyShapeLeftT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeLeftT.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftT([...gonioscopyShapeLeftT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeRightT.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftT([...gonioscopyShapeLeftT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeLeftT.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftT([...gonioscopyShapeLeftT, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftT.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftT(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                                {
                                                                                    gonioscopyPopup === "LeftS" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeLeftS.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftS([...gonioscopyShapeLeftS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeLeftS.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftS([...gonioscopyShapeLeftS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeLeftS.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftS([...gonioscopyShapeLeftS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeLeftS.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftS([...gonioscopyShapeLeftS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeLeftS.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftS([...gonioscopyShapeLeftS, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftS.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftS(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                                {
                                                                                    gonioscopyPopup === "LeftN" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeLeftN.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftN([...gonioscopyShapeLeftN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeLeftN.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftN([...gonioscopyShapeLeftN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeLeftN.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftN([...gonioscopyShapeLeftN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeLeftN.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftN([...gonioscopyShapeLeftN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeLeftN.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftN([...gonioscopyShapeLeftN, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeRightN.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftN(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                                {
                                                                                    gonioscopyPopup === "LeftI" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeLeftI.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftI([...gonioscopyShapeLeftI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeLeftI.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftI([...gonioscopyShapeLeftI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeLeftI.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftI([...gonioscopyShapeLeftI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeLeftI.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftI([...gonioscopyShapeLeftI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeLeftI.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftI([...gonioscopyShapeLeftI, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftI.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftI(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                                {
                                                                                    gonioscopyPopup === "LeftC" &&
                                                                                    <>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="CB- Ciliary Body Band" defaultChecked={gonioscopyShapeLeftC.find(item => item === "CB- Ciliary Body Band") === "CB- Ciliary Body Band"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftC([...gonioscopyShapeLeftC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                CB- Ciliary Body Band
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="SS- Scleral Spur" defaultChecked={gonioscopyShapeLeftC.find(item => item === "SS- Scleral Spur") === "SS- Scleral Spur"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftC([...gonioscopyShapeLeftC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                SS- Scleral Spur
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="TM(P)- Trabecular Meshwork pigmented" defaultChecked={gonioscopyShapeLeftC.find(item => item === "TM(P)- Trabecular Meshwork pigmented") === "TM(P)- Trabecular Meshwork pigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftC([...gonioscopyShapeLeftC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(P)- Trabecular Meshwork pigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex align-items-start">
                                                                                            <input className="custom-radio mt-1" value="TM(NP)- Trabecular Meshwork nonpigmented" defaultChecked={gonioscopyShapeLeftC.find(item => item === "TM(NP)- Trabecular Meshwork nonpigmented") === "TM(NP)- Trabecular Meshwork nonpigmented"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftC([...gonioscopyShapeLeftC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                TM(NP)- Trabecular Meshwork nonpigmented
                                                                                            </label>
                                                                                        </div>
                                                                                        <div className="d-flex">
                                                                                            <input className="custom-radio" value="Schwalbe’s Line" defaultChecked={gonioscopyShapeLeftC.find(item => item === "Schwalbe’s Line") === "Schwalbe’s Line"} type="checkbox" name="cough2" onChange={(e) => {
                                                                                                const { value, checked } = e.target;

                                                                                                if (checked) {
                                                                                                    setGonioscopyShapeLeftC([...gonioscopyShapeLeftC, value])
                                                                                                } else {
                                                                                                    const newCn = gonioscopyShapeLeftC.filter((item) => item !== value)
                                                                                                    setGonioscopyShapeLeftC(newCn)
                                                                                                }
                                                                                            }
                                                                                            } id="flexRadioDefault1" />
                                                                                            <label className="" >
                                                                                                Schwalbe’s Line
                                                                                            </label>
                                                                                        </div>
                                                                                    </>
                                                                                }
                                                                            </div>
                                                                        </Popover>
                                                                    </svg>
                                                                    <span className='ms-2'>N</span>
                                                                    <span className='mt-1 d-block'>I</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p>{gonioscopy} {gonioscopy === "Van Herrick" && ` : ${gonioscopyVanHarrik}`}</p>

                                </div>
                            </div>
                        </div>
                        <div className="col-4">
                            <div className="exam-bg-white p-1">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">Pinhole</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange7(!change7); setPinholeLeftNear(); setPinholeLeftDistance(""); setPinholeRightNear(""); setPinholeRightDistance("") }}
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

                                                    <div style={{ width: "500px" }} className="left-popup">
                                                        <div className="cns-container">
                                                            <ul className="nav nav-pills" id="pills-tab" role="tablist">
                                                                <li className="nav-item" role="presentation">
                                                                    <button className="nav-link active" id="pills-home1-tab" data-bs-toggle="pill" data-bs-target="#pills-home1" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Right</button>
                                                                </li>
                                                                <li className="nav-item" role="presentation">
                                                                    <button className="nav-link" id="pills-Left1-tab" data-bs-toggle="pill" data-bs-target="#pills-Left1" type="button" role="tab" aria-controls="pills-Left" aria-selected="false">Left</button>
                                                                </li>
                                                            </ul>
                                                            <div className="tab-content" id="pills-tabContent">
                                                                <div className="tab-pane fade show active" id="pills-home1" role="tabpanel" aria-labelledby="pills-home-tab">
                                                                    <div className="row eye-large-popup p-2">
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1'>Distance</h6>
                                                                            <div className="border-top row">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough2" onChange={(e) => { setPinholeRightDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough2" onChange={(e) => { setPinholeRightDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough2" onChange={(e) => { setPinholeRightDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1 '>Near</h6>
                                                                            <div className="border-top row clearfix">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough1" onChange={(e) => { setPinholeRightNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough1" onChange={(e) => { setPinholeRightNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough1" onChange={(e) => { setPinholeRightNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
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
                                                                <div className="tab-pane fade" id="pills-Left1" role="tabpanel" aria-labelledby="pills-Left-tab">
                                                                    <div className="row eye-large-popup p-2">
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1'>Distance</h6>
                                                                            <div className="border-top row">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setPinholeLeftDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setPinholeLeftDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough3" onChange={(e) => { setPinholeLeftDistance(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div className="col-6 text-center border rounded">
                                                                            <h6 className='mt-1 '>Near</h6>
                                                                            <div className="border-top row clearfix">
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray1.length > 0 &&
                                                                                        UCVAArray1.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setPinholeLeftNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4 border-right">
                                                                                    {
                                                                                        UCVAArray2.length > 0 &&
                                                                                        UCVAArray2.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setPinholeLeftNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
                                                                                                    </label>
                                                                                                </div>
                                                                                            )
                                                                                        })
                                                                                    }

                                                                                </div>
                                                                                <div className="col-4">
                                                                                    {
                                                                                        UCVAArray3.length > 0 &&
                                                                                        UCVAArray3.map((v, i) => {
                                                                                            return (
                                                                                                <div key={i} className="d-flex">
                                                                                                    <input className="custom-radio" value={v.name} type="radio" name="cough4" onChange={(e) => { setPinholeLeftNear(e.target.value) }} id="flexRadioDefault1" />
                                                                                                    <label className="" >
                                                                                                        {v.name}
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
                                                        </div>

                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p className='ms-1'>{pinholeRightDistance && `R : D - ${pinholeRightDistance}`} {pinholeRightNear && `,N -  ${pinholeRightNear} `} {(pinholeRightNear || pinholeRightDistance) && " | "} {pinholeLeftDistance && `L : D - ${pinholeLeftDistance}`} {pinholeLeftNear && `,N -  ${pinholeLeftNear} `} {(pinholeLeftNear || pinholeLeftDistance) && " | "} </p>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1 mt-2">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">Pupils</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange10(!change10); setPupils(""); setPupilsRightValue(""); setPupilsLeftValue(""); setPupilsType([]); setPupilsRightShape({ part1: "", part2: "", part3: "", part4: "", part5: "", part6: "", part7: "", part8: "", center: "" }); setPupilsLeftShape({ part1: "", part2: "", part3: "", part4: "", part5: "", part6: "", part7: "", part8: "", center: "" }) }}
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
                                                        horizontal: 'right',
                                                    }}
                                                    transformOrigin={{
                                                        vertical: 'top',
                                                        horizontal: 'left',
                                                    }}
                                                >

                                                    <div style={{ width: "300px" }} className="left-popup">
                                                        <div className="row">
                                                            <div className="col-5">
                                                                <div className="border">
                                                                    <div className="d-flex">
                                                                        <input className="custom-radio" value="Normal" type="radio" name="cough2" onChange={(e) => { setPupils(e.target.value); setPupilsType([]) }} id="flexRadioDefault1" />
                                                                        <label className="" >
                                                                            Normal
                                                                        </label>
                                                                    </div>
                                                                    <div className="d-flex">
                                                                        <input className="custom-radio" value="Abnormal" type="radio" name="cough2" onChange={(e) => { setPupils(e.target.value) }} id="flexRadioDefault1" />
                                                                        <label className="" >
                                                                            Abnormal
                                                                        </label>
                                                                    </div>
                                                                    {
                                                                        pupils === "Abnormal" &&
                                                                        <div className="form-check ms-1 border rounded shadow">
                                                                            <div className="p-2">
                                                                                <input className="form-check-input" type="checkbox" value="+ RAPD" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setPupilsType([...pupilsType, value])
                                                                                    } else {
                                                                                        const newCn = pupilsType.filter((item) => item !== value)
                                                                                        setPupilsType(newCn)
                                                                                    }
                                                                                }
                                                                                } id="flexCheckDefault" />
                                                                                <label className="form-check-label" for="flexCheckDefault">
                                                                                    + RAPD
                                                                                </label>
                                                                                <input className="form-check-input" type="checkbox" value="Horner’s" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setPupilsType([...pupilsType, value])
                                                                                    } else {
                                                                                        const newCn = pupilsType.filter((item) => item !== value)
                                                                                        setPupilsType(newCn)
                                                                                    }
                                                                                }
                                                                                } id="flexCheckDefault" />
                                                                                <label className="form-check-label" for="flexCheckDefault">
                                                                                    Horner’s
                                                                                </label>
                                                                                <input className="form-check-input" type="checkbox" value="Miotic" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setPupilsType([...pupilsType, value])
                                                                                    } else {
                                                                                        const newCn = pupilsType.filter((item) => item !== value)
                                                                                        setPupilsType(newCn)
                                                                                    }
                                                                                }
                                                                                } id="flexCheckDefault" />
                                                                                <label className="form-check-label" for="flexCheckDefault">
                                                                                    Miotic
                                                                                </label>
                                                                                <input className="form-check-input" type="checkbox" value="Fixed Dilated" onChange={(e) => {
                                                                                    const { value, checked } = e.target;

                                                                                    if (checked) {
                                                                                        setPupilsType([...pupilsType, value])
                                                                                    } else {
                                                                                        const newCn = pupilsType.filter((item) => item !== value)
                                                                                        setPupilsType(newCn)
                                                                                    }
                                                                                }
                                                                                } id="flexCheckDefault" />
                                                                                <label className="form-check-label" for="flexCheckDefault">
                                                                                    Fixed Dilated
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    }
                                                                </div>
                                                            </div>
                                                            <div className="col-7">
                                                                <div className="border">
                                                                    <div className="border-bottom text-center">
                                                                        <span className="my-1">Size</span>
                                                                    </div>
                                                                    <div className="row p-1">
                                                                        <div className="col-3">
                                                                            <label >Right</label>
                                                                        </div>
                                                                        <div className="col-7">
                                                                            <input type="text" onChange={(e) => setPupilsLeftValue(e.target.value)} className="form-control form-control-sm" />
                                                                        </div>
                                                                        <div className="col-2">
                                                                            <span>mm</span>
                                                                        </div>
                                                                    </div>
                                                                    <div className="row p-1">
                                                                        <div className="col-3">
                                                                            <label >Left</label>
                                                                        </div>
                                                                        <div className="col-7">
                                                                            <input type="text" onChange={(e) => setPupilsRightValue(e.target.value)} className="form-control form-control-sm" />
                                                                        </div>
                                                                        <div className="col-2">
                                                                            <span>mm</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div className="mt-1 border rounded p-1 eye-svg-content">
                                                            <div className="border-bottom">
                                                                <span className='my-1'>Shape</span>
                                                            </div>
                                                            <div className="row">
                                                                <div className="col-6 text-center">
                                                                    <div className="text-center">
                                                                        <span className="py-2">Right</span>
                                                                    </div>
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" >
                                                                        {/* part1 */}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.part1 !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.part1 ? { ...pupilsRightShape, part1: "" } : { ...pupilsRightShape, part1: "part1" })} d="M 28.895762,30.37249 10.994022,12.454844 A 39.797436,39.832798 0 0 0 -1.9303509e-5,40.003492 c 0,0.483684 0,0.967368 0,1.4226 H 25.356633 a 13.808289,13.820558 0 0 1 -0.07107,-1.4226 14.554491,14.567423 0 0 1 3.610196,-9.631002 z" />
                                                                        {/* part2 */}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.part2 !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.part2 ? { ...pupilsRightShape, part2: "" } : { ...pupilsRightShape, part2: "part2" })} d="M 10.901635,12.454844 28.803375,30.37249 A 14.582918,14.595875 0 0 1 39.868484,25.315148 V -1.825316e-5 A 39.797436,39.832798 0 0 0 10.901635,12.454844 Z" />
                                                                        {/* part3 */}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.part3 !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.part3 ? { ...pupilsRightShape, part3: "" } : { ...pupilsRightShape, part3: "part3" })} d="M 39.868484,-1.825316e-5 V 25.315148 A 14.582918,14.595875 0 0 1 50.933592,30.37249 L 68.842438,12.447731 A 39.854289,39.889702 0 0 0 39.868484,-1.825316e-5 Z" />
                                                                        {/* part4 */}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.part4 !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.part4 ? { ...pupilsRightShape, part4: "" } : { ...pupilsRightShape, part4: "part4" })} d="M 69.005892,12.447731 51.097046,30.37249 a 14.554491,14.567423 0 0 1 3.624409,9.631002 13.808289,13.820558 0 0 1 -0.07107,1.4226 H 79.98572 c 0,-0.476571 0,-0.960255 0,-1.4226 A 39.854289,39.889702 0 0 0 69.005892,12.447731 Z" />
                                                                        {/* part5 */}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.part5 !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.part5 ? { ...pupilsRightShape, part5: "" } : { ...pupilsRightShape, part5: "part5" })} d="m 54.664602,41.447431 a 14.575811,14.588762 0 0 1 -4.97468,9.631002 L 67.584555,68.996079 A 39.797436,39.832798 0 0 0 79.999934,41.447431 Z" />
                                                                        {/* part6 */}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.part6 !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.part6 ? { ...pupilsRightShape, part6: "" } : { ...pupilsRightShape, part6: "part6" })} d="m 49.682816,51.078433 a 14.597131,14.610101 0 0 1 -9.622452,3.60629 v 25.315166 a 39.797436,39.832798 0 0 0 27.524191,-11.00381 z" />
                                                                        {/* part7 */}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.part7 !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.part7 ? { ...pupilsRightShape, part7: "" } : { ...pupilsRightShape, part7: "part7" })} d="m 30.366846,51.078433 -17.90174,17.917646 a 39.797436,39.832798 0 0 0 27.524191,11.00381 V 54.684723 a 14.597131,14.610101 0 0 1 -9.622451,-3.60629 z" />
                                                                        {/* part8 */}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.part8 !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.part8 ? { ...pupilsRightShape, part8: "" } : { ...pupilsRightShape, part8: "part8" })} d="M 25.38506,41.447431 H 0.05683418 A 39.797436,39.832798 0 0 0 12.465106,68.996079 L 30.366846,51.078433 A 14.575811,14.588762 0 0 1 25.38506,41.447431 Z" />
                                                                        {/* part middle*/}
                                                                        <path className={`eye-svg-bg ${pupilsRightShape.center !== '' && "active-eye-svg"}`} onClick={() => setPupilsRightShape(pupilsRightShape.center ? { ...pupilsRightShape, center: "" } : { ...pupilsRightShape, center: "center" })} d="m 54.664602,40.003492 a 13.808289,13.820558 0 0 1 -0.07107,1.4226 14.675305,14.688344 0 0 1 -29.208475,0 13.808289,13.820558 0 0 1 -0.07107,-1.4226 14.675305,14.688344 0 0 1 29.350609,0 z" />
                                                                    </svg>
                                                                </div>
                                                                <div className="col-6 text-center">
                                                                    <div className="text-center">
                                                                        <span className="py-2">Left</span>
                                                                    </div>
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" >
                                                                        {/* part1 */}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.part1 !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.part1 ? { ...pupilsLeftShape, part1: "" } : { ...pupilsLeftShape, part1: "part1" })} d="M 28.895762,30.37249 10.994022,12.454844 A 39.797436,39.832798 0 0 0 -1.9303509e-5,40.003492 c 0,0.483684 0,0.967368 0,1.4226 H 25.356633 a 13.808289,13.820558 0 0 1 -0.07107,-1.4226 14.554491,14.567423 0 0 1 3.610196,-9.631002 z" />
                                                                        {/* part2 */}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.part2 !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.part2 ? { ...pupilsLeftShape, part2: "" } : { ...pupilsLeftShape, part2: "part2" })} d="M 10.901635,12.454844 28.803375,30.37249 A 14.582918,14.595875 0 0 1 39.868484,25.315148 V -1.825316e-5 A 39.797436,39.832798 0 0 0 10.901635,12.454844 Z" />
                                                                        {/* part3 */}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.part3 !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.part3 ? { ...pupilsLeftShape, part3: "" } : { ...pupilsLeftShape, part3: "part3" })} d="M 39.868484,-1.825316e-5 V 25.315148 A 14.582918,14.595875 0 0 1 50.933592,30.37249 L 68.842438,12.447731 A 39.854289,39.889702 0 0 0 39.868484,-1.825316e-5 Z" />
                                                                        {/* part4 */}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.part4 !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.part4 ? { ...pupilsLeftShape, part4: "" } : { ...pupilsLeftShape, part4: "part4" })} d="M 69.005892,12.447731 51.097046,30.37249 a 14.554491,14.567423 0 0 1 3.624409,9.631002 13.808289,13.820558 0 0 1 -0.07107,1.4226 H 79.98572 c 0,-0.476571 0,-0.960255 0,-1.4226 A 39.854289,39.889702 0 0 0 69.005892,12.447731 Z" />
                                                                        {/* part5 */}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.part5 !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.part5 ? { ...pupilsLeftShape, part5: "" } : { ...pupilsLeftShape, part5: "part5" })} d="m 54.664602,41.447431 a 14.575811,14.588762 0 0 1 -4.97468,9.631002 L 67.584555,68.996079 A 39.797436,39.832798 0 0 0 79.999934,41.447431 Z" />
                                                                        {/* part6 */}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.part6 !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.part6 ? { ...pupilsLeftShape, part6: "" } : { ...pupilsLeftShape, part6: "part6" })} d="m 49.682816,51.078433 a 14.597131,14.610101 0 0 1 -9.622452,3.60629 v 25.315166 a 39.797436,39.832798 0 0 0 27.524191,-11.00381 z" />
                                                                        {/* part7 */}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.part7 !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.part7 ? { ...pupilsLeftShape, part7: "" } : { ...pupilsLeftShape, part7: "part7" })} d="m 30.366846,51.078433 -17.90174,17.917646 a 39.797436,39.832798 0 0 0 27.524191,11.00381 V 54.684723 a 14.597131,14.610101 0 0 1 -9.622451,-3.60629 z" />
                                                                        {/* part8 */}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.part8 !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.part8 ? { ...pupilsLeftShape, part8: "" } : { ...pupilsLeftShape, part8: "part8" })} d="M 25.38506,41.447431 H 0.05683418 A 39.797436,39.832798 0 0 0 12.465106,68.996079 L 30.366846,51.078433 A 14.575811,14.588762 0 0 1 25.38506,41.447431 Z" />
                                                                        {/* part middle*/}
                                                                        <path className={`eye-svg-bg ${pupilsLeftShape.center !== '' && "active-eye-svg"}`} onClick={() => setPupilsLeftShape(pupilsLeftShape.center ? { ...pupilsLeftShape, center: "" } : { ...pupilsLeftShape, center: "center" })} d="m 54.664602,40.003492 a 13.808289,13.820558 0 0 1 -0.07107,1.4226 14.675305,14.688344 0 0 1 -29.208475,0 13.808289,13.820558 0 0 1 -0.07107,-1.4226 14.675305,14.688344 0 0 1 29.350609,0 z" />
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p className='ms-1'> {pupils} {pupils && " : "} {pupilsType.map((item, i) => <span key={i}>{item} ,</span>)} {pupilsLeftValue && <span>Left: {pupilsLeftValue}mm ,</span>}{pupilsRightValue && <span>Right: {pupilsRightValue}mm</span>}</p>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1 mt-2">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">Intra-Ocular Pressure</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange12(!change12); setIntraOcularPressureCheckbox([]); setIntraOcularPressure(""); setIntraOcularPressureRight(''); setIntraOcularPressureLeft('') }}
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
                                                        horizontal: 'right',
                                                    }}
                                                    transformOrigin={{
                                                        vertical: 'top',
                                                        horizontal: 'right',
                                                    }}
                                                >

                                                    <div style={{ width: "550px" }} className="left-popup eye-check-popup">
                                                        <div className="row">
                                                            <div className="col-4">
                                                                <div className="border">
                                                                    <div className="d-flex">
                                                                        <input className="custom-radio" value="Goldmann" type="radio" name="cough2" onChange={(e) => { setIntraOcularPressure(e.target.value); }} id="flexRadioDefault1" />
                                                                        <label className="" >
                                                                            Goldmann
                                                                        </label>
                                                                    </div>
                                                                    <div className="d-flex">
                                                                        <input className="custom-radio" value="Perkins" type="radio" name="cough2" onChange={(e) => { setIntraOcularPressure(e.target.value); }} id="flexRadioDefault1" />
                                                                        <label className="" >
                                                                            Perkins
                                                                        </label>
                                                                    </div>
                                                                    <div className="d-flex">
                                                                        <input className="custom-radio" value="Non-Contact" type="radio" name="cough2" onChange={(e) => { setIntraOcularPressure(e.target.value); }} id="flexRadioDefault1" />
                                                                        <label className="" >
                                                                            Non-Contact
                                                                        </label>
                                                                    </div>
                                                                    <div className="d-flex">
                                                                        <input className="custom-radio" value="Undilated" type="radio" name="cough2" onChange={(e) => { setIntraOcularPressure(e.target.value); }} id="flexRadioDefault1" />
                                                                        <label className="" >
                                                                            Undilated
                                                                        </label>
                                                                    </div>
                                                                    <div className="d-flex">
                                                                        <input className="custom-radio" value="Dilated" type="radio" name="cough2" onChange={(e) => { setIntraOcularPressure(e.target.value); }} id="flexRadioDefault1" />
                                                                        <label className="" >
                                                                            Dilated
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div className="col-8">
                                                                <div className="row p-1 border">
                                                                    <div className="col-6 border-end row">
                                                                        <span className=''>Start Time : <input type="time" className="w-" /></span>
                                                                    </div>
                                                                    <div className="col-6">
                                                                        <span className='ms-2'>End Time : <input type="time" className="w-" /></span>
                                                                    </div>
                                                                </div>
                                                                <div className="mt-1 row">
                                                                    <div className="col-6 border">
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" value={`Cyclopentolate : 1%`} onChange={(e) => {
                                                                                const { value, checked } = e.target;

                                                                                if (checked) {
                                                                                    setIntraOcularPressureCheckbox([...intraOcularPressureCheckbox, value])
                                                                                } else {
                                                                                    const newCn = intraOcularPressureCheckbox.filter((item) => item !== value)
                                                                                    setIntraOcularPressureCheckbox(newCn)
                                                                                }
                                                                            }
                                                                            } id="flexCheckDefault" />
                                                                            <label className="form-check-label" for="flexCheckDefault">
                                                                                Cyclopentolate 1%
                                                                            </label>
                                                                        </div>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" value={`Tropicamide : 1%`} onChange={(e) => {
                                                                                const { value, checked } = e.target;

                                                                                if (checked) {
                                                                                    setIntraOcularPressureCheckbox([...intraOcularPressureCheckbox, value])
                                                                                } else {
                                                                                    const newCn = intraOcularPressureCheckbox.filter((item) => item !== value)
                                                                                    setIntraOcularPressureCheckbox(newCn)
                                                                                }
                                                                            }
                                                                            } id="flexCheckDefault" />
                                                                            <label className="form-check-label" for="flexCheckDefault">
                                                                                Tropicamide 1%
                                                                            </label>
                                                                        </div>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" value={`Tropicamide : 0.5%`} onChange={(e) => {
                                                                                const { value, checked } = e.target;

                                                                                if (checked) {
                                                                                    setIntraOcularPressureCheckbox([...intraOcularPressureCheckbox, value])
                                                                                } else {
                                                                                    const newCn = intraOcularPressureCheckbox.filter((item) => item !== value)
                                                                                    setIntraOcularPressureCheckbox(newCn)
                                                                                }
                                                                            }
                                                                            } id="flexCheckDefault" />
                                                                            <label className="form-check-label" for="flexCheckDefault">
                                                                                Tropicamide 0.5%
                                                                            </label>
                                                                        </div>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" value={`Phenylephrine : 2.5%`} onChange={(e) => {
                                                                                const { value, checked } = e.target;

                                                                                if (checked) {
                                                                                    setIntraOcularPressureCheckbox([...intraOcularPressureCheckbox, value])
                                                                                } else {
                                                                                    const newCn = intraOcularPressureCheckbox.filter((item) => item !== value)
                                                                                    setIntraOcularPressureCheckbox(newCn)
                                                                                }
                                                                            }
                                                                            } id="flexCheckDefault" />
                                                                            <label className="form-check-label" for="flexCheckDefault">
                                                                                Phenylephrine 2.5%
                                                                            </label>
                                                                        </div>
                                                                        <div className="form-check">
                                                                            <input className="form-check-input" type="checkbox" value={`Phenylephrine : 10%`} onChange={(e) => {
                                                                                const { value, checked } = e.target;

                                                                                if (checked) {
                                                                                    setIntraOcularPressureCheckbox([...intraOcularPressureCheckbox, value])
                                                                                } else {
                                                                                    const newCn = intraOcularPressureCheckbox.filter((item) => item !== value)
                                                                                    setIntraOcularPressureCheckbox(newCn)
                                                                                }
                                                                            }
                                                                            } id="flexCheckDefault" />
                                                                            <label className="form-check-label" for="flexCheckDefault">
                                                                                Phenylephrine 10%
                                                                            </label>
                                                                        </div>
                                                                    </div>
                                                                    <div className="col-6 border">
                                                                        <label> Right</label>
                                                                        <div className="row mb-2">
                                                                            <div className="col-8">
                                                                                <input type="text" onChange={(e) => setIntraOcularPressureLeft(e.target.value)} className="form-control form-control-sm" />
                                                                            </div>
                                                                            <div className="col-4">mmHg</div>
                                                                        </div>
                                                                        <label> Left</label>
                                                                        <div className="row mb-1">
                                                                            <div className="col-8">
                                                                                <input type="text" onChange={(e) => setIntraOcularPressureRight(e.target.value)} className="form-control form-control-sm" />
                                                                            </div>
                                                                            <div className="col-4">mmHg</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p className='ms-1'> {intraOcularPressure} {intraOcularPressure && " : "} {intraOcularPressureCheckbox.map((item, i) => <span key={i}>{item} ,</span>)}{intraOcularPressureRight && <span>R: {intraOcularPressureRight}mmHg</span>} {intraOcularPressureLeft && <span>L: {intraOcularPressureLeft}mmHg ,</span>}</p>
                                </div>
                            </div>
                        </div>
                        <div className="col-4">
                            <div className="exam-bg-white p-1">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">Cover Test</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange8(!change8); setCoverDistanceTropia(); setCoverDistancePhoria(""); setCoverNearTropia(""); setCoverNearPhoria("") }}
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
                                                        vertical: 'bottom',
                                                        horizontal: 'right',
                                                    }}
                                                    transformOrigin={{
                                                        vertical: 'top',
                                                        horizontal: 'right',
                                                    }}
                                                >

                                                    <div style={{ width: "500px" }} className="left-popup">
                                                        <div className="row eye-large-popup p-1">
                                                            <div className="col-6 text-center border rounded">
                                                                <h6 className="my-1">Distance</h6>
                                                                <div className="row border-top">
                                                                    <div className="col-6 border-right">
                                                                        <h6 className="border-bottom">Phoria</h6>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="ESO" type="radio" name="cough2" onChange={(e) => { setCoverDistancePhoria(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >ESO</label>
                                                                        </div>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="EXO" type="radio" name="cough2" onChange={(e) => { setCoverDistancePhoria(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >EXO</label>
                                                                        </div>
                                                                    </div>
                                                                    <div className="col-6">
                                                                        <h6 className="border-bottom">Tropia</h6>
                                                                        <div className="border-bottom">
                                                                            <div className="d-flex">
                                                                                <input className="custom-radio" value="ESO" type="radio" name="near" onChange={(e) => { setCoverDistanceTropia(e.target.value) }} id="flexRadioDefault1" />
                                                                                <label className="" >ESO</label>
                                                                            </div>
                                                                            <div className="d-flex">
                                                                                <input className="custom-radio" value="EXO" type="radio" name="near" onChange={(e) => { setCoverDistanceTropia(e.target.value) }} id="flexRadioDefault1" />
                                                                                <label className="" >EXO</label>
                                                                            </div>
                                                                        </div>
                                                                        <div className="border-bottom">
                                                                            <div className="d-flex">
                                                                                <input className="custom-radio" value="Right" type="radio" name="near2" onChange={(e) => { setCoverDistanceTropiaSide(e.target.value) }} id="flexRadioDefault1" />
                                                                                <label className="" >Right</label>
                                                                            </div>
                                                                            <div className="d-flex">
                                                                                <input className="custom-radio" value="Left" type="radio" name="near2" onChange={(e) => { setCoverDistanceTropiaSide(e.target.value) }} id="flexRadioDefault1" />
                                                                                <label className="" >Left</label>
                                                                            </div>
                                                                        </div>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="Alternative" type="radio" name="near3" onChange={(e) => { setCoverDistanceTropiaType(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >Alternating</label>
                                                                        </div>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="Intermittent" type="radio" name="near3" onChange={(e) => { setCoverDistanceTropiaType(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >Intermittent</label>
                                                                        </div>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="Constant" type="radio" name="near3" onChange={(e) => { setCoverDistanceTropiaType(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >Constant</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div className="col-6 text-center border rounded">
                                                                <h6 className="my-1">Near</h6>
                                                                <div className="row border-top">
                                                                    <div className="col-6 border-right">
                                                                        <h6 className="border-bottom">Phoria</h6>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="ESO" type="radio" name="distance" onChange={(e) => { setCoverNearPhoria(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >ESO</label>
                                                                        </div>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="EXO" type="radio" name="distance" onChange={(e) => { setCoverNearPhoria(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >EXO</label>
                                                                        </div>
                                                                    </div>
                                                                    <div className="col-6">
                                                                        <h6 className="border-bottom">Tropia</h6>
                                                                        <div className="border-bottom">
                                                                            <div className="d-flex">
                                                                                <input className="custom-radio" value="ESO" type="radio" name="cough6" onChange={(e) => { setCoverNearTropia(e.target.value) }} id="flexRadioDefault1" />
                                                                                <label className="" >ESO</label>
                                                                            </div>
                                                                            <div className="d-flex">
                                                                                <input className="custom-radio" value="EXO" type="radio" name="cough6" onChange={(e) => { setCoverNearTropia(e.target.value) }} id="flexRadioDefault1" />
                                                                                <label className="" >EXO</label>
                                                                            </div>
                                                                        </div>
                                                                        <div className="border-bottom">
                                                                            <div className="d-flex">
                                                                                <input className="custom-radio" value="Right" type="radio" name="cough7" onChange={(e) => { setCoverNearTropiaSide(e.target.value) }} id="flexRadioDefault1" />
                                                                                <label className="" >Right</label>
                                                                            </div>
                                                                            <div className="d-flex">
                                                                                <input className="custom-radio" value="Left" type="radio" name="cough7" onChange={(e) => { setCoverNearTropiaSide(e.target.value) }} id="flexRadioDefault1" />
                                                                                <label className="" >Left</label>
                                                                            </div>
                                                                        </div>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="Alternative" type="radio" name="cough8" onChange={(e) => { setCoverNearTropiaType(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >Alternative</label>
                                                                        </div>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="Intermittent" type="radio" name="cough8" onChange={(e) => { setCoverNearTropiaType(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >Intermittent</label>
                                                                        </div>
                                                                        <div className="d-flex">
                                                                            <input className="custom-radio" value="Constant" type="radio" name="cough8" onChange={(e) => { setCoverNearTropiaType(e.target.value) }} id="flexRadioDefault1" />
                                                                            <label className="" >Constant</label>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p className='ms-1'>{coverDistancePhoria && `D - P: ${coverDistancePhoria}`} {coverDistanceTropia && `,T -  ${coverDistanceTropia}, ${coverDistanceTropiaSide}, ${coverDistanceTropiaType} `} {(coverDistanceTropia || coverDistancePhoria) && " | "} {coverNearPhoria && `N : P - ${coverNearPhoria}`} {coverNearTropia && `,T -  ${coverNearTropia},${coverNearTropiaSide},${coverNearTropiaType} `} {(coverNearTropia || coverNearPhoria) && " | "} </p>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1 mt-2">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">Slit lamp Biomicroscopy</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange13(!change13); setCoverDistanceTropia(); setCoverDistancePhoria(""); setCoverNearTropia(""); setCoverNearPhoria("") }}
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
                                                        horizontal: 'right',
                                                    }}
                                                >

                                                    <div style={{ width: "500px" }} className="left-popup">

                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p className='ms-1'>{coverDistancePhoria && `D - P: ${coverDistancePhoria}`} {coverDistanceTropia && `,T -  ${coverDistanceTropia} `} {(coverDistanceTropia || coverDistancePhoria) && " | "} {coverNearPhoria && `N : P - ${coverNearPhoria}`} {coverNearTropia && `,T -  ${coverNearTropia} `} {(coverNearTropia || coverNearPhoria) && " | "} </p>
                                </div>
                            </div>
                            <div className="exam-bg-white p-1 mt-2">
                                <div className="d-flex justify-content-between">
                                    <p className="w-75">Pachymetry</p>
                                    <div className="ms-1">
                                        <label className="switch me-1">
                                            <input
                                                name="Jaundiced"
                                                value="Jaundiced"
                                                type="checkbox"
                                                onChange={(e) => { setChange14(!change14); setPachymetryRight(''); setPachymetryLeft('') }}
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
                                                        horizontal: 'right',
                                                    }}
                                                >

                                                    <div style={{ width: "200px" }} className="left-popup">
                                                        <div className=" border p-1">
                                                            <label> Right</label>
                                                            <div className="row mb-2">
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setPachymetryRight(e.target.value)} className="form-control form-control-sm" />
                                                                </div>
                                                                <div className="col-4">Microns</div>
                                                            </div>
                                                            <label> Left</label>
                                                            <div className="row mb-1">
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setPachymetryLeft(e.target.value)} className="form-control form-control-sm" />
                                                                </div>
                                                                <div className="col-4">Microns</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </Popover>
                                            }
                                        </label>
                                    </div>
                                </div>
                                <div className="history-popup-value d-flex">
                                    <p className='ms-1'>{pachymetryRight && `R - ${pachymetryRight} microns`} {pachymetryRight && ` | `}  {pachymetryLeft && `L - ${pachymetryLeft} microns`}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                }

                <div className="row">
                    <div className="col-4">
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Keratometry</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => {
                                                setChange15(!change15); setKRight1(''); setKRight2(''); setKRight3(''); setKRightD3(''); setKRightD2(''); setKRightD1(''); setKRightAt1(''); setKRightAt2(''); setKRightCly(''); setKRightClyAt('');
                                                setKLeft1(''); setKLeft2(''); setKLeft3(''); setKLeftD3(''); setKLeftD2(''); setKLeftD1(''); setKLeftAt1(''); setKLeftAt2(''); setKLeftCly(''); setKLeftClyAt('');
                                            }}
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
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div style={{ width: "500px" }} className="left-popup">
                                                    <div className=" border p-1 pb-2">
                                                        <div className="row">
                                                            <div className="col-3">
                                                                <label>Consultation Date : </label>
                                                            </div>
                                                            <div className="col-4">
                                                                <input type="date" className="form-control form-control-sm ms -1" />
                                                            </div>

                                                        </div>
                                                        <span>K Reading</span>
                                                        <div className="row mt-2 k-reading">
                                                            <div className="border col-6">
                                                                <div className="border-bottom text-center">
                                                                    <span className='my-1'>Right</span>
                                                                </div>
                                                                <div className="row mt-1">
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" onChange={(e) => { setKRight1(parseFloat(e.target.value / 2)); e.target.value.length > 0 ? setKRightD1(parseFloat(1000 / e.target.value).toFixed(2)) : setKRightD1(''); }} className="form-control form-control-sm w-75" /> mm
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" defaultValue={kRightD1} className="form-control form-control-sm w-75" /> D
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        at <input type="number" onChange={(e) => setKRightAt1(parseFloat(e.target.value))} className="form-control form-control-sm w-75" />
                                                                    </div>
                                                                </div>
                                                                <div className="row mt-1">
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" onChange={(e) => { setKRight2(parseFloat(e.target.value / 2)); e.target.value.length > 0 ? setKRightD2(parseFloat(1000 / e.target.value).toFixed(2)) : setKRightD2(""); }} className="form-control form-control-sm w-75" /> mm
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" defaultValue={kRightD2} className="form-control form-control-sm w-75" /> D
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        at <input type="number" onChange={(e) => setKRightAt2(e.target.value)} className="form-control form-control-sm w-75" />
                                                                    </div>
                                                                </div>
                                                                <div className="row mt-1">
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" defaultValue={kRight3} readOnly className="form-control form-control-sm w-75" /> mm
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" defaultValue={kRightD3} readOnly className="form-control form-control-sm w-75" /> D
                                                                    </div>

                                                                </div>
                                                                <div className="row mt-1">
                                                                    <div className="col-3"></div>
                                                                    <div className="col-5 d-flex">
                                                                        Cly <input type="number" onChange={(e) => setKRightCly(e.target.value)} className="form-control form-control-sm" /> D
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        at <input type="number" onChange={(e) => setKRightClyAt(e.target.value)} className="form-control form-control-sm" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div className="border col-6">
                                                                <div className="border-bottom text-center">
                                                                    <span className='my-1'>Left</span>
                                                                </div>
                                                                <div className="row mt-1">
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" onChange={(e) => { setKLeft1(parseFloat(e.target.value / 2)); e.target.value.length > 0 ? setKLeftD1(parseFloat(1000 / e.target.value).toFixed(2)) : setKLeftD1(''); }} className="form-control form-control-sm w-75" /> mm
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" defaultValue={kLeftD1} className="form-control form-control-sm w-75" /> D
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        at <input type="number" onChange={(e) => setKLeftAt1(parseFloat(e.target.value))} className="form-control form-control-sm w-75" />
                                                                    </div>
                                                                </div>
                                                                <div className="row mt-1">
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" onChange={(e) => { setKLeft2(parseFloat(e.target.value / 2)); e.target.value.length > 0 ? setKLeftD2(parseFloat(1000 / e.target.value).toFixed(2)) : setKLeftD2(""); }} className="form-control form-control-sm w-75" /> mm
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" defaultValue={kLeftD2} className="form-control form-control-sm w-75" /> D
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        at <input type="number" onChange={(e) => setKLeftAt2(e.target.value)} className="form-control form-control-sm w-75" />
                                                                    </div>
                                                                </div>
                                                                <div className="row mt-1">
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" defaultValue={kLeft3} readOnly className="form-control form-control-sm w-75" /> mm
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        <input type="number" defaultValue={kLeftD3} readOnly className="form-control form-control-sm w-75" /> D
                                                                    </div>

                                                                </div>
                                                                <div className="row mt-1">
                                                                    <div className="col-3"></div>
                                                                    <div className="col-5 d-flex">
                                                                        Cly <input type="number" onChange={(e) => setKLeftCly(e.target.value)} className="form-control form-control-sm" /> D
                                                                    </div>
                                                                    <div className="col-4 d-flex">
                                                                        at <input type="number" onChange={(e) => setKLeftClyAt(e.target.value)} className="form-control form-control-sm" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value d-flex">
                                <p className='ms-1'>{kRight3 && `Right - ${kRight3} mm ${kRightD3} at`}  {kRightAt1}  {(kRightD3 || kRight3) && ` | `} {kLeft3 && `Left - ${kLeft3} mm ${kLeftD3} at`}  {kLeftAt1} </p>
                            </div>
                            {/* <svg xmlns="http://www.w3.org/2000/svg" viewBox="">
                            </svg> */}
                        </div>
                    </div>
                </div>
                <div className="row mt-2">
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Posterior Eye Examination</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange16(!change16); setPosteriorEyeCheckbox([]); setPosteriorEye(""); setPosteriorEyeEndTime(''); setPosteriorEyeStartTime('') }}
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
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div style={{ width: "550px" }} className="left-popup eye-check-popup">
                                                    <div className="row">
                                                        <div className="col-4">
                                                            <div className="border">
                                                                <div className="d-flex align-items-start">
                                                                    <input className="custom-radio mt-1" value="BIO (Binocular Indirect Ophthalmoscopy)" type="radio" name="cough2" onChange={(e) => { setPosteriorEye(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        BIO (Binocular Indirect Ophthalmoscopy)
                                                                    </label>
                                                                </div>
                                                                <div className="d-flex">
                                                                    <input className="custom-radio" value="Fundoscopy" type="radio" name="cough2" onChange={(e) => { setPosteriorEye(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        Fundoscopy
                                                                    </label>
                                                                </div>
                                                                <div className="d-flex">
                                                                    <input className="custom-radio" value="Undilated" type="radio" name="cough2" onChange={(e) => { setPosteriorEye(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        Undilated
                                                                    </label>
                                                                </div>
                                                                <div className="d-flex">
                                                                    <input className="custom-radio" value="Dilated" type="radio" name="cough2" onChange={(e) => { setPosteriorEye(e.target.value); }} id="flexRadioDefault1" />
                                                                    <label className="" >
                                                                        Dilated
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div className="col-8">
                                                            <div className="row p-1 border">
                                                                <div className="col-6 border-end row">
                                                                    <span className=''>Start Time : <input type="time" onChange={(e) => setPosteriorEyeStartTime(e.target.value)} className="w-" /></span>
                                                                </div>
                                                                <div className="col-6">
                                                                    <span className='ms-2'>End Time : <input type="time" onChange={(e) => setPosteriorEyeEndTime(e.target.value)} className="w-" /></span>
                                                                </div>
                                                            </div>
                                                            <div className="mt-1 border row">
                                                                <div className="col-6">
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value={`Cyclopentolate : 1%`} onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setPosteriorEyeCheckbox([...posteriorEyeCheckbox, value])
                                                                            } else {
                                                                                const newCn = posteriorEyeCheckbox.filter((item) => item !== value)
                                                                                setPosteriorEyeCheckbox(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="form-check-label" for="flexCheckDefault">
                                                                            Cyclopentolate 1%
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value={`Tropicamide : 1%`} onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setPosteriorEyeCheckbox([...posteriorEyeCheckbox, value])
                                                                            } else {
                                                                                const newCn = posteriorEyeCheckbox.filter((item) => item !== value)
                                                                                setPosteriorEyeCheckbox(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="form-check-label" for="flexCheckDefault">
                                                                            Tropicamide 1%
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value={`Tropicamide : 0.5%`} onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setPosteriorEyeCheckbox([...posteriorEyeCheckbox, value])
                                                                            } else {
                                                                                const newCn = posteriorEyeCheckbox.filter((item) => item !== value)
                                                                                setPosteriorEyeCheckbox(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="form-check-label" for="flexCheckDefault">
                                                                            Tropicamide 0.5%
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-6">
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value={`Phenylephrine : 2.5%`} onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setPosteriorEyeCheckbox([...posteriorEyeCheckbox, value])
                                                                            } else {
                                                                                const newCn = posteriorEyeCheckbox.filter((item) => item !== value)
                                                                                setPosteriorEyeCheckbox(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="form-check-label" for="flexCheckDefault">
                                                                            Phenylephrine 2.5%
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value={`Phenylephrine : 10%`} onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setPosteriorEyeCheckbox([...posteriorEyeCheckbox, value])
                                                                            } else {
                                                                                const newCn = posteriorEyeCheckbox.filter((item) => item !== value)
                                                                                setPosteriorEyeCheckbox(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="form-check-label" for="flexCheckDefault">
                                                                            Phenylephrine 10%
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div className="border mt-1 pb-1 row">
                                                                <div className="col-6 text-center">
                                                                    <div className="text-center">
                                                                        <span className="mt-1 mb-2">Right</span>
                                                                    </div>
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" >
                                                                        {/* part1 */}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeRight.part1 !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeRight(posteriorEyeShapeRight.part1 ? { ...posteriorEyeShapeRight, part1: "" } : { ...posteriorEyeShapeRight, part1: "part1" })} d="m 25.379164,41.439909 a 13.820556,13.81805 0 0 1 -0.07113,-1.422341 14.567421,14.56478 0 0 1 3.613403,-9.650589 L 11.003793,12.452584 A 39.832793,39.82557 0 0 0 -1.5761401e-5,39.996233 c 0,0.483596 0,0.967192 0,1.422341 A 39.832793,39.82557 0 0 0 12.447732,68.983558 L 30.365376,51.069163 a 14.58876,14.586115 0 0 1 -4.986212,-9.629254 z" />
                                                                        {/* part2 */}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeRight.part2 !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeRight(posteriorEyeShapeRight.part2 ? { ...posteriorEyeShapeRight, part2: "" } : { ...posteriorEyeShapeRight, part2: "part2" })} d="M 40.010602,-1.8261322e-5 A 39.832793,39.82557 0 0 0 11.018019,12.452584 l 17.917644,17.914395 a 14.652777,14.65012 0 0 1 22.149878,0 L 68.996072,12.445472 A 39.889697,39.882464 0 0 0 40.010602,-1.8261322e-5 Z" />
                                                                        {/* part3 */}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeRight.part3 !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeRight(posteriorEyeShapeRight.part3 ? { ...posteriorEyeShapeRight, part3: "" } : { ...posteriorEyeShapeRight, part3: "part3" })} d="M 68.996072,12.445472 51.078428,30.366979 a 14.567421,14.56478 0 0 1 3.613403,9.629254 13.820556,13.81805 0 0 1 -0.07113,1.422341 14.58876,14.586115 0 0 1 -4.979099,9.629254 l 17.93187,17.93573 A 39.832793,39.82557 0 0 0 79.999881,41.439909 c 0,-0.476484 0,-0.96008 0,-1.422341 A 39.889697,39.882464 0 0 0 68.996072,12.445472 Z" />
                                                                        {/* part4 */}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeRight.part4 !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeRight(posteriorEyeShapeRight.part4 ? { ...posteriorEyeShapeRight, part4: "" } : { ...posteriorEyeShapeRight, part4: "part4" })} d="m 49.634489,51.069163 v 0 a 14.652777,14.65012 0 0 1 -19.254887,0 L 12.454845,68.983558 a 39.975053,39.967804 0 0 0 55.118627,0 z" />
                                                                        {/* part middle*/}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeRight.center !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeRight(posteriorEyeShapeRight.center ? { ...posteriorEyeShapeRight, center: "" } : { ...posteriorEyeShapeRight, center: "center" })} d="m 54.698944,39.996233 a 13.820556,13.81805 0 0 1 -0.07113,1.422341 14.688342,14.685679 0 0 1 -29.234424,0 13.820556,13.81805 0 0 1 -0.07113,-1.422341 14.688342,14.685679 0 0 1 29.376684,0 z" />
                                                                    </svg>
                                                                </div>
                                                                <div className="col-6 text-center">
                                                                    <div className="text-center">
                                                                        <span className="mt-1 mb-2">Left</span>
                                                                    </div>
                                                                    <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" >
                                                                        {/* part1 */}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeLeft.part1 !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeLeft(posteriorEyeShapeLeft.part1 ? { ...posteriorEyeShapeLeft, part1: "" } : { ...posteriorEyeShapeLeft, part1: "part1" })} d="m 25.379164,41.439909 a 13.820556,13.81805 0 0 1 -0.07113,-1.422341 14.567421,14.56478 0 0 1 3.613403,-9.650589 L 11.003793,12.452584 A 39.832793,39.82557 0 0 0 -1.5761401e-5,39.996233 c 0,0.483596 0,0.967192 0,1.422341 A 39.832793,39.82557 0 0 0 12.447732,68.983558 L 30.365376,51.069163 a 14.58876,14.586115 0 0 1 -4.986212,-9.629254 z" />
                                                                        {/* part2 */}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeLeft.part2 !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeLeft(posteriorEyeShapeLeft.part2 ? { ...posteriorEyeShapeLeft, part2: "" } : { ...posteriorEyeShapeLeft, part2: "part2" })} d="M 40.010602,-1.8261322e-5 A 39.832793,39.82557 0 0 0 11.018019,12.452584 l 17.917644,17.914395 a 14.652777,14.65012 0 0 1 22.149878,0 L 68.996072,12.445472 A 39.889697,39.882464 0 0 0 40.010602,-1.8261322e-5 Z" />
                                                                        {/* part3 */}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeLeft.part3 !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeLeft(posteriorEyeShapeLeft.part3 ? { ...posteriorEyeShapeLeft, part3: "" } : { ...posteriorEyeShapeLeft, part3: "part3" })} d="M 68.996072,12.445472 51.078428,30.366979 a 14.567421,14.56478 0 0 1 3.613403,9.629254 13.820556,13.81805 0 0 1 -0.07113,1.422341 14.58876,14.586115 0 0 1 -4.979099,9.629254 l 17.93187,17.93573 A 39.832793,39.82557 0 0 0 79.999881,41.439909 c 0,-0.476484 0,-0.96008 0,-1.422341 A 39.889697,39.882464 0 0 0 68.996072,12.445472 Z" />
                                                                        {/* part4 */}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeLeft.part4 !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeLeft(posteriorEyeShapeLeft.part4 ? { ...posteriorEyeShapeLeft, part4: "" } : { ...posteriorEyeShapeLeft, part4: "part4" })} d="m 49.634489,51.069163 v 0 a 14.652777,14.65012 0 0 1 -19.254887,0 L 12.454845,68.983558 a 39.975053,39.967804 0 0 0 55.118627,0 z" />
                                                                        {/* part middle*/}
                                                                        <path className={`eye-svg-bg ${posteriorEyeShapeLeft.center !== '' && "active-eye-svg"}`} onClick={() => setPosteriorEyeShapeLeft(posteriorEyeShapeLeft.center ? { ...posteriorEyeShapeLeft, center: "" } : { ...posteriorEyeShapeLeft, center: "center" })} d="m 54.698944,39.996233 a 13.820556,13.81805 0 0 1 -0.07113,1.422341 14.688342,14.685679 0 0 1 -29.234424,0 13.820556,13.81805 0 0 1 -0.07113,-1.422341 14.688342,14.685679 0 0 1 29.376684,0 z" />
                                                                    </svg>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div className="form-floating mt-1">
                                                            <textarea className="form-control" placeholder="Leave a comment here" id="floatingTextarea"></textarea>
                                                            <label for="floatingTextarea">Comments</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value d-flex">
                                <p className='ms-1'> {posteriorEye} {posteriorEye && " : "} {posteriorEyeCheckbox.map((item, i) => <span key={i}>{item} ,</span>)} {posteriorEyeStartTime && `Start Time : ${posteriorEyeStartTime}`} {posteriorEyeEndTime && `End Time : ${posteriorEyeEndTime}`}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Ancillary Test</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange19(!change19); setAncillaryTestImportExport([]); setAncillaryTestInfo({ colorVisionMethod: "", result: "", topography: "", stereopsis: "", maddoxWing: "", B: "", fusionalReserves: "", visionTraining: "", OCT: "", }) }}
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
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div style={{ width: "570px" }} className="left-popup p-1">
                                                    <div className="row eye-ancilary-popup">
                                                        <div className="">
                                                            <div className="row">
                                                                <div className="col-4">
                                                                    <label>Color Vision Method </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, colorVisionMethod: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mt-1">
                                                                <div className="col-4">
                                                                    <label>Result </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, result: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mt-1">
                                                                <div className="col-4">
                                                                    <label>Topography </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, topography: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mt-1">
                                                                <div className="col-4">
                                                                    <label>Stereopsis </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, stereopsis: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mt-1">
                                                                <div className="col-4">
                                                                    <label>Maddox Wing </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, maddoxWing: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mt-1">
                                                                <div className="col-4">
                                                                    <label>B+/B- </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, B: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mt-1">
                                                                <div className="col-4">
                                                                    <label>Fusional Reserves  </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, fusionalReserves: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mt-1">
                                                                <div className="col-4">
                                                                    <label>Vision Training  </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, visionTraining: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mt-1">
                                                                <div className="col-4">
                                                                    <label>OCT  </label>:
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setAncillaryTestInfo({ ...ancillaryTestInfo, OCT: e.target.value })} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div className="row">
                                                        <div className="col-4">
                                                            <label style={{ width: "125px" }} >Import/Export</label>:
                                                        </div>
                                                        <div className="col-8">
                                                            <div className="form-check">
                                                                <input className="form-check-input" type="checkbox" value="Import Images" onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setAncillaryTestImportExport([...ancillaryTestImportExport, value])
                                                                    } else {
                                                                        const newCn = ancillaryTestImportExport.filter((item) => item !== value)
                                                                        setAncillaryTestImportExport(newCn)
                                                                    }
                                                                }
                                                                } id="flexCheckDefault" />
                                                                <label className="" for="flexCheckDefault">
                                                                    Import Images
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" type="checkbox" value="Retrieve Rx data from Auto-Refractor" onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setAncillaryTestImportExport([...ancillaryTestImportExport, value])
                                                                    } else {
                                                                        const newCn = ancillaryTestImportExport.filter((item) => item !== value)
                                                                        setAncillaryTestImportExport(newCn)
                                                                    }
                                                                }
                                                                } id="flexCheckDefault" />
                                                                <label className="" for="flexCheckDefault">
                                                                    Retrieve Rx data from Auto-Refractor
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" type="checkbox" value="Retrieve data from Phoropter to SU" onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setAncillaryTestImportExport([...ancillaryTestImportExport, value])
                                                                    } else {
                                                                        const newCn = ancillaryTestImportExport.filter((item) => item !== value)
                                                                        setAncillaryTestImportExport(newCn)
                                                                    }
                                                                }
                                                                } id="flexCheckDefault" />
                                                                <label className="" for="flexCheckDefault">
                                                                    Retrieve data from Phoropter to SU
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" type="checkbox" value="Send Rx to Phoropter" onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setAncillaryTestImportExport([...ancillaryTestImportExport, value])
                                                                    } else {
                                                                        const newCn = ancillaryTestImportExport.filter((item) => item !== value)
                                                                        setAncillaryTestImportExport(newCn)
                                                                    }
                                                                }
                                                                } id="flexCheckDefault" />
                                                                <label className="" for="flexCheckDefault">
                                                                    Send Rx to Phoropter
                                                                </label>
                                                            </div>
                                                            <div className="form-check">
                                                                <input className="form-check-input" type="checkbox" value="OCT image import" onChange={(e) => {
                                                                    const { value, checked } = e.target;

                                                                    if (checked) {
                                                                        setAncillaryTestImportExport([...ancillaryTestImportExport, value])
                                                                    } else {
                                                                        const newCn = ancillaryTestImportExport.filter((item) => item !== value)
                                                                        setAncillaryTestImportExport(newCn)
                                                                    }
                                                                }
                                                                } id="flexCheckDefault" />
                                                                <label className="" for="flexCheckDefault">
                                                                    OCT image import
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
                            <div className="history-popup-value d-flex">
                                <p className='ms-1'> {ancillaryTestImportExport.length > 0 && ancillaryTestImportExport.map((item, i) => <span key={i}>{item} ,</span>)}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Spectacles</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange17(!change17); setRxAdvice([]); setTrailFramed(""); setSphere({ first: "", second: "", third: "", fourth: "", fifth: "", six: "", }); setSphere2({ first: "", second: "", third: "", fourth: "", fifth: "", six: "", seventh: "" }); setSU(""); setGI("") }}
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
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div style={{ width: "900px", marginRight: "3px" }} className="left-popup eye-spack-popup">
                                                    <div className="d-flex justify-content-end">
                                                        <button className="eye-spack-btn my-2 shadow">Retrive Data from Auto-Refractor</button>
                                                    </div>
                                                    <div className="d-flex">
                                                        <div className="me-1 eye-spack-table">
                                                            <table className=''>
                                                                <tr>
                                                                    <td><span style={{ width: "30px" }}>Rx R</span></td>
                                                                    <td>Sphere</td>
                                                                    <td>Cyl</td>
                                                                    <td>Axis</td>
                                                                    <td>VA</td>
                                                                    <td>Add</td>
                                                                    <td>Intern</td>
                                                                    <td>Prism</td>
                                                                    <td> </td>
                                                                    <td> </td>
                                                                    <td> </td>
                                                                    <td><span style={{ width: "30px" }}>Rx R</span></td>
                                                                    <td>Sphere</td>
                                                                    <td>Cyl</td>
                                                                    <td>Axis</td>
                                                                    <td>VA</td>
                                                                    <td>Add</td>
                                                                    <td>Intern</td>
                                                                    <td>Prism</td>
                                                                    <td></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        PR
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirst.sphere} type="text" onChange={(e) => setSpectaclesFirst({ ...spectaclesFirst, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirst.cyl} type="text" onChange={(e) => setSpectaclesFirst({ ...spectaclesFirst, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirst.axis} type="text" onChange={(e) => setSpectaclesFirst({ ...spectaclesFirst, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirst.VA} type="text" onChange={(e) => setSpectaclesFirst({ ...spectaclesFirst, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirst.add} type="text" onChange={(e) => setSpectaclesFirst({ ...spectaclesFirst, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirst.intern} type="text" onChange={(e) => setSpectaclesFirst({ ...spectaclesFirst, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesFirst.prism} type="text" onChange={(e) => setSpectaclesFirst({ ...spectaclesFirst, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesFirst.prismUnit} onChange={(e) => setSpectaclesFirst({ ...spectaclesFirst, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>


                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleLeftOutlinedIcon onClick={() => setSpectaclesFirst({ ...spectaclesFirstRight })} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleDownOutlinedIcon onClick={() => { setSpectaclesSecond({ ...spectaclesFirst }); setSpectaclesSecondRight({ ...spectaclesFirstRight }) }} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleRightOutlinedIcon onClick={() => setSpectaclesFirstRight({ ...spectaclesFirst })} />
                                                                    </td>
                                                                    <td>
                                                                        PR
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirstRight.sphere} type="text" onChange={(e) => setSpectaclesFirstRight({ ...spectaclesFirstRight, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirstRight.cyl} type="text" onChange={(e) => setSpectaclesFirstRight({ ...spectaclesFirstRight, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirstRight.axis} type="text" onChange={(e) => setSpectaclesFirstRight({ ...spectaclesFirstRight, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirstRight.VA} type="text" onChange={(e) => setSpectaclesFirstRight({ ...spectaclesFirstRight, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirstRight.add} type="text" onChange={(e) => setSpectaclesFirstRight({ ...spectaclesFirstRight, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFirstRight.intern} type="text" onChange={(e) => setSpectaclesFirstRight({ ...spectaclesFirstRight, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesFirstRight.prism} type="text" onChange={(e) => setSpectaclesFirstRight({ ...spectaclesFirstRight, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesFirstRight.prismUnit} onChange={(e) => setSpectaclesFirstRight({ ...spectaclesFirstRight, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <button onClick={() => setSU(spectaclesFirst.sphere)} className='me-1'> To SU</button>
                                                                        <button onClick={() => setGI(spectaclesFirst.sphere)}> To GI</button>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        #
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecond.sphere} type="text" onChange={(e) => setSpectaclesSecond({ ...spectaclesSecond, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecond.cyl} type="text" onChange={(e) => setSpectaclesSecond({ ...spectaclesSecond, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecond.axis} type="text" onChange={(e) => setSpectaclesSecond({ ...spectaclesSecond, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecond.VA} type="text" onChange={(e) => setSpectaclesSecond({ ...spectaclesSecond, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecond.add} type="text" onChange={(e) => setSpectaclesSecond({ ...spectaclesSecond, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecond.intern} type="text" onChange={(e) => setSpectaclesSecond({ ...spectaclesSecond, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesSecond.prism} type="text" onChange={(e) => setSpectaclesSecond({ ...spectaclesSecond, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesSecond.prismUnit} onChange={(e) => setSpectaclesSecond({ ...spectaclesSecond, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>


                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleLeftOutlinedIcon onClick={() => setSpectaclesSecond({ ...spectaclesSecondRight })} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleDownOutlinedIcon onClick={() => { setSpectaclesThird({ ...spectaclesSecond }); setSpectaclesThirdRight({ ...spectaclesSecondRight }) }} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleRightOutlinedIcon onClick={() => setSpectaclesSecondRight({ ...spectaclesSecond })} />
                                                                    </td>
                                                                    <td>
                                                                        #
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecondRight.sphere} type="text" onChange={(e) => setSpectaclesSecondRight({ ...spectaclesSecondRight, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecondRight.cyl} type="text" onChange={(e) => setSpectaclesSecondRight({ ...spectaclesSecondRight, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecondRight.axis} type="text" onChange={(e) => setSpectaclesSecondRight({ ...spectaclesSecondRight, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecondRight.VA} type="text" onChange={(e) => setSpectaclesSecondRight({ ...spectaclesSecondRight, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecondRight.add} type="text" onChange={(e) => setSpectaclesSecondRight({ ...spectaclesSecondRight, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSecondRight.intern} type="text" onChange={(e) => setSpectaclesSecondRight({ ...spectaclesSecondRight, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesSecondRight.prism} type="text" onChange={(e) => setSpectaclesSecondRight({ ...spectaclesSecondRight, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesSecondRight.prismUnit} onChange={(e) => setSpectaclesSecondRight({ ...spectaclesSecondRight, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <button onClick={() => setSU(spectaclesSecond.sphere)} className='me-1'> To SU</button>
                                                                        <button onClick={() => setGI(spectaclesSecond.sphere)}> To GI</button>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <input type="text" readOnly className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThird.sphere} type="text" onChange={(e) => setSpectaclesThird({ ...spectaclesThird, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThird.cyl} type="text" onChange={(e) => setSpectaclesThird({ ...spectaclesThird, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThird.axis} type="text" onChange={(e) => setSpectaclesThird({ ...spectaclesThird, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThird.VA} type="text" onChange={(e) => setSpectaclesThird({ ...spectaclesThird, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThird.add} type="text" onChange={(e) => setSpectaclesThird({ ...spectaclesThird, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThird.intern} type="text" onChange={(e) => setSpectaclesThird({ ...spectaclesThird, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesThird.prism} type="text" onChange={(e) => setSpectaclesThird({ ...spectaclesThird, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesThird.prismUnit} onChange={(e) => setSpectaclesThird({ ...spectaclesThird, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>


                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleLeftOutlinedIcon onClick={() => setSpectaclesThird({ ...spectaclesThirdRight })} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleDownOutlinedIcon onClick={() => { setSpectaclesFourth({ ...spectaclesThird }); setSpectaclesFourthRight({ ...spectaclesThirdRight }) }} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleRightOutlinedIcon onClick={() => setSpectaclesThirdRight({ ...spectaclesThird })} />
                                                                    </td>
                                                                    <td>
                                                                        <input type="text" readOnly className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThirdRight.sphere} type="text" onChange={(e) => setSpectaclesThirdRight({ ...spectaclesThirdRight, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThirdRight.cyl} type="text" onChange={(e) => setSpectaclesThirdRight({ ...spectaclesThirdRight, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThirdRight.axis} type="text" onChange={(e) => setSpectaclesThirdRight({ ...spectaclesThirdRight, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThirdRight.VA} type="text" onChange={(e) => setSpectaclesThirdRight({ ...spectaclesThirdRight, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThirdRight.add} type="text" onChange={(e) => setSpectaclesThirdRight({ ...spectaclesThirdRight, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesThirdRight.intern} type="text" onChange={(e) => setSpectaclesThirdRight({ ...spectaclesThirdRight, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesThirdRight.prism} type="text" onChange={(e) => setSpectaclesThirdRight({ ...spectaclesThirdRight, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesThirdRight.prismUnit} onChange={(e) => setSpectaclesThirdRight({ ...spectaclesThirdRight, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <button onClick={() => setSU(spectaclesThird.sphere)} className='me-1'> To SU</button>
                                                                        <button onClick={() => setGI(spectaclesThird.sphere)}> To GI</button>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        AR
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourth.sphere} type="text" onChange={(e) => setSpectaclesFourth({ ...spectaclesFourth, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourth.cyl} type="text" onChange={(e) => setSpectaclesFourth({ ...spectaclesFourth, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourth.axis} type="text" onChange={(e) => setSpectaclesFourth({ ...spectaclesFourth, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourth.VA} type="text" onChange={(e) => setSpectaclesFourth({ ...spectaclesFourth, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourth.add} type="text" onChange={(e) => setSpectaclesFourth({ ...spectaclesFourth, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourth.intern} type="text" onChange={(e) => setSpectaclesFourth({ ...spectaclesFourth, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesFourth.prism} type="text" onChange={(e) => setSpectaclesFourth({ ...spectaclesFourth, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesFourth.prismUnit} onChange={(e) => setSpectaclesFourth({ ...spectaclesFourth, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleLeftOutlinedIcon onClick={() => setSpectaclesFourth({ ...spectaclesFourthRight })} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleDownOutlinedIcon onClick={() => { setSpectaclesFifth({ ...spectaclesFourth }); setSpectaclesFifthRight({ ...spectaclesFourthRight }) }} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleRightOutlinedIcon onClick={() => setSpectaclesFourthRight({ ...spectaclesFourth })} />
                                                                    </td>
                                                                    <td>
                                                                        AR
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourthRight.sphere} type="text" onChange={(e) => setSpectaclesFourthRight({ ...spectaclesFourthRight, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourthRight.cyl} type="text" onChange={(e) => setSpectaclesFourthRight({ ...spectaclesFourthRight, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourthRight.axis} type="text" onChange={(e) => setSpectaclesFourthRight({ ...spectaclesFourthRight, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourthRight.VA} type="text" onChange={(e) => setSpectaclesFourthRight({ ...spectaclesFourthRight, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourthRight.add} type="text" onChange={(e) => setSpectaclesFourthRight({ ...spectaclesFourthRight, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFourthRight.intern} type="text" onChange={(e) => setSpectaclesFourthRight({ ...spectaclesFourthRight, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesFourthRight.prism} type="text" onChange={(e) => setSpectaclesFourthRight({ ...spectaclesFourthRight, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesFourthRight.prismUnit} onChange={(e) => setSpectaclesFourthRight({ ...spectaclesFourthRight, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <button onClick={() => setSU(spectaclesFourth.sphere)} className='me-1'> To SU</button>
                                                                        <button onClick={() => setGI(spectaclesFourth.sphere)}> To GI</button>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>

                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifth.sphere} type="text" onChange={(e) => setSpectaclesFifth({ ...spectaclesFifth, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifth.cyl} type="text" onChange={(e) => setSpectaclesFifth({ ...spectaclesFifth, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifth.axis} type="text" onChange={(e) => setSpectaclesFifth({ ...spectaclesFifth, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifth.VA} type="text" onChange={(e) => setSpectaclesFifth({ ...spectaclesFifth, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifth.add} type="text" onChange={(e) => setSpectaclesFifth({ ...spectaclesFifth, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifth.intern} type="text" onChange={(e) => setSpectaclesFifth({ ...spectaclesFifth, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesFifth.prism} type="text" onChange={(e) => setSpectaclesFifth({ ...spectaclesFifth, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesFifth.prismUnit} onChange={(e) => setSpectaclesFifth({ ...spectaclesFifth, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleLeftOutlinedIcon onClick={() => setSpectaclesFifth({ ...spectaclesFourthRight })} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleDownOutlinedIcon onClick={() => { setSpectaclesSixth({ ...spectaclesFifth }); setSpectaclesSixthRight({ ...spectaclesFifthRight }) }} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleRightOutlinedIcon onClick={() => setSpectaclesFifthRight({ ...spectaclesFifth })} />
                                                                    </td>
                                                                    <td>
                                                                        <input type="text" readOnly className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifthRight.sphere} type="text" onChange={(e) => setSpectaclesFifthRight({ ...spectaclesFifthRight, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifthRight.cyl} type="text" onChange={(e) => setSpectaclesFifthRight({ ...spectaclesFifthRight, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifthRight.axis} type="text" onChange={(e) => setSpectaclesFifthRight({ ...spectaclesFifthRight, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifthRight.VA} type="text" onChange={(e) => setSpectaclesFifthRight({ ...spectaclesFifthRight, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifthRight.add} type="text" onChange={(e) => setSpectaclesFifthRight({ ...spectaclesFifthRight, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesFifthRight.intern} type="text" onChange={(e) => setSpectaclesFifthRight({ ...spectaclesFifthRight, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesFifthRight.prism} type="text" onChange={(e) => setSpectaclesFifthRight({ ...spectaclesFifthRight, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesFifthRight.prismUnit} onChange={(e) => setSpectaclesFifthRight({ ...spectaclesFifthRight, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <button onClick={() => setSU(spectaclesFifth.sphere)} className='me-1'> To SU</button>
                                                                        <button onClick={() => setGI(spectaclesFifth.sphere)}> To GI</button>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        SU
                                                                    </td>
                                                                    <td>
                                                                        <input readOnly value={SU} type="text" className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixth.cyl} type="text" onChange={(e) => setSpectaclesSixth({ ...spectaclesSixth, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixth.axis} type="text" onChange={(e) => setSpectaclesSixth({ ...spectaclesSixth, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixth.VA} type="text" onChange={(e) => setSpectaclesSixth({ ...spectaclesSixth, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixth.add} type="text" onChange={(e) => setSpectaclesSixth({ ...spectaclesSixth, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixth.intern} type="text" onChange={(e) => setSpectaclesSixth({ ...spectaclesSixth, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesSixth.prism} type="text" onChange={(e) => setSpectaclesSixth({ ...spectaclesSixth, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesSixth.prismUnit} onChange={(e) => setSpectaclesSixth({ ...spectaclesSixth, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleLeftOutlinedIcon onClick={() => setSpectaclesSixth({ ...spectaclesSixthRight })} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleDownOutlinedIcon onClick={() => { setSpectaclesSeventh({ ...spectaclesSixth }); setSpectaclesSixthRight({ ...spectaclesSixthRight }) }} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleRightOutlinedIcon onClick={() => setSpectaclesSixthRight({ ...spectaclesSixth })} />
                                                                    </td>
                                                                    <td>
                                                                        <input type="text" readOnly className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixthRight.sphere} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSixthRight, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixthRight.cyl} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSixthRight, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixthRight.axis} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSixthRight, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixthRight.VA} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSixthRight, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixthRight.add} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSixthRight, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSixthRight.intern} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSixthRight, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesSixthRight.prism} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSixthRight, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesSixthRight.prismUnit} onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSixthRight, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <button onClick={() => setGI(spectaclesSixth.sphere)}> To GI</button>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        GI
                                                                    </td>
                                                                    <td>
                                                                        <input value={GI} type="text" className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventh.cyl} type="text" onChange={(e) => setSpectaclesSeventh({ ...spectaclesSeventh, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventh.axis} type="text" onChange={(e) => setSpectaclesSeventh({ ...spectaclesSeventh, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventh.VA} type="text" onChange={(e) => setSpectaclesSeventh({ ...spectaclesSeventh, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventh.add} type="text" onChange={(e) => setSpectaclesSeventh({ ...spectaclesSeventh, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventh.intern} type="text" onChange={(e) => setSpectaclesSeventh({ ...spectaclesSeventh, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesSeventh.prism} type="text" onChange={(e) => setSpectaclesSeventh({ ...spectaclesSeventh, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesSeventh.prismUnit} onChange={(e) => setSpectaclesSeventh({ ...spectaclesSeventh, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleLeftOutlinedIcon onClick={() => setSpectaclesSeventh({ ...spectaclesFourthRight })} />
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        {/* <ArrowCircleDownOutlinedIcon onClick={() => { setSpectaclesSixth({ ...spectaclesFifth }); setSpectaclesFifthRight({ ...spectaclesFourthRight }) }} /> */}
                                                                    </td>
                                                                    <td className='eye-spac-table-icon'>
                                                                        <ArrowCircleRightOutlinedIcon onClick={() => setSpectaclesSeventhRight({ ...spectaclesSeventh })} />
                                                                    </td>
                                                                    <td>
                                                                        <input type="text" readOnly className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventhRight.sphere} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSeventhRight, sphere: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventhRight.cyl} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSeventhRight, cyl: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventhRight.axis} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSeventhRight, axis: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventhRight.VA} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSeventhRight, VA: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventhRight.add} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSeventhRight, add: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <input value={spectaclesSeventhRight.intern} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSeventhRight, intern: e.target.value })} className="eye-input-box" />
                                                                    </td>
                                                                    <td>
                                                                        <div className="d-flex">
                                                                            <input value={spectaclesSeventhRight.prism} type="text" onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSeventhRight, prism: e.target.value })} className=" eye-input-box" />
                                                                            <select value={spectaclesSeventhRight.prismUnit} onChange={(e) => setSpectaclesSixthRight({ ...spectaclesSeventhRight, prismUnit: e.target.value })}>
                                                                                <option value="DN"> DN</option>
                                                                                <option value="UP"> UP</option>
                                                                                <option value="IN"> IN</option>
                                                                                <option value="OUT"> OUT</option>
                                                                            </select>
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        {/* <button onClick={() => setGI(spectaclesSixth.sphere)}> To GI</button> */}
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </div>

                                                    </div>
                                                    <div className="row mt-2 p-2">
                                                        <div className="col-5">
                                                            <div className="border rounded row p-1">
                                                                <div className="col-4">
                                                                    <label>Trail Framed : </label>
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" onChange={(e) => setTrailFramed(e.target.value)} className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div className="col-7">
                                                            <div className="border rounded row p-1 ms-1">
                                                                <div className="border-bottom">
                                                                    <h6>Rx Advice: 1</h6>
                                                                </div>
                                                                <div className="col-3">
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="MF" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            MF
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="Multicoat" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            Multicoat
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="SVN" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            SVN
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-3">
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="BF" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            BF
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="Transition" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            Transition
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-3">
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="SVD" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            SVD
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="Tint" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            Tint
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div className="col-3">
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="VDU" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            VDU
                                                                        </label>
                                                                    </div>
                                                                    <div className="form-check">
                                                                        <input className="form-check-input" type="checkbox" value="Polarised" onChange={(e) => {
                                                                            const { value, checked } = e.target;

                                                                            if (checked) {
                                                                                setRxAdvice([...rxAdvice, value])
                                                                            } else {
                                                                                const newCn = rxAdvice.filter((item) => item !== value)
                                                                                setRxAdvice(newCn)
                                                                            }
                                                                        }
                                                                        } id="flexCheckDefault" />
                                                                        <label className="" for="flexCheckDefault">
                                                                            Polarised
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div className="d-flex justify-content-end rx-one-button-group">
                                                        <button className="btn">Add</button>
                                                    </div>
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value d-flex">
                                <p className='ms-1'>  {trailFramed && ` Trail Framed : ${trailFramed} | `} {rxAdvice.map((item, i) => <span key={i}>{item} ,</span>)}</p>
                            </div>
                        </div>
                        <div className="exam-bg-white p-1 mt-2">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Previous Spectacles RX</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange20(!change20); setPreviousSpectacles1({ date: "", optom: "", type: "", right: "", sphereRight: "", cylRight: "", axisRight: "", addRight: "", interRight: "", left: "", sphereLeft: "", cylLeft: "", axisLeft: "", addLeft: "", interLeft: "", noteLeft: "" }) }}
                                            id="togBtn"
                                        />
                                        <div onClick={(e) => setAnchorEl20(e.currentTarget)} className="slider round"></div>
                                        {
                                            change20 &&
                                            <Popover
                                                id={id20}
                                                open={open20}
                                                anchorEl={anchorEl20}
                                                onClose={() => setAnchorEl20(null)}
                                                anchorOrigin={{
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'left',
                                                }}
                                            >

                                                <div style={{ width: "780px", marginRight: "3px" }} className="left-popup eye-spack-popup">
                                                    <div className="eye-lens-popup">
                                                        <table>
                                                            <tr>
                                                                <td>Date</td>
                                                                <td>Optom</td>
                                                                <td>Type</td>
                                                                <td>Right</td>
                                                                <td>Sphere</td>
                                                                <td>Cyl</td>
                                                                <td>Axis</td>
                                                                <td>Add</td>
                                                                <td>Inter</td>
                                                                <td>Left</td>
                                                                <td>Sphere</td>
                                                                <td>Cyl</td>
                                                                <td>Axis</td>
                                                                <td>Add</td>
                                                                <td>Inter</td>
                                                                <td>Note</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, date: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, optom: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, type: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, right: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, sphereRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, cylRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, axisRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, addRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, interRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, left: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, sphereLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, cylLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, axisLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, addLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, interLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, noteLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, date: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, optom: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, type: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, right: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, sphereRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, cylRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, axisRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, addRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, interRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, left: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, sphereLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, cylLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, axisLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, addLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, interLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, noteLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, date: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, optom: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, type: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, right: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, sphereRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, cylRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, axisRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, addRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, interRight: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, left: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, sphereLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, cylLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, axisLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, addLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, interLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setPreviousSpectacles1({ ...previousSpectacles1, noteLeft: e.target.value })} className="form-control" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value d-flex">
                                <p className='ms-1'>  {trailFramed && ` Trail Framed : ${trailFramed} | `} {rxAdvice.map((item, i) => <span key={i}>{item} ,</span>)}</p>
                            </div>
                        </div>
                    </div>
                    <div className="col-4">
                        <div className="exam-bg-white p-1">
                            <div className="d-flex justify-content-between">
                                <p className="w-75">Contact Lenses</p>
                                <div className="ms-1">
                                    <label className="switch me-1">
                                        <input
                                            name="Jaundiced"
                                            value="Jaundiced"
                                            type="checkbox"
                                            onChange={(e) => { setChange18(!change18); setContractLens({ ...contractLens, left: "", right: "" }) }}
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
                                                    vertical: 'top',
                                                    horizontal: 'right',
                                                }}
                                                transformOrigin={{
                                                    vertical: 'bottom',
                                                    horizontal: 'right',
                                                }}
                                            >

                                                <div style={{ width: "600px" }} className="left-popup ">
                                                    <div className="eye-lens-popup">
                                                        <table>
                                                            <tr>
                                                                <td>Consultation Date</td>
                                                                <td>Due Date</td>
                                                                <td>Prescriber</td>
                                                                <td>Dispenser</td>
                                                                <td>Inv No.</td>
                                                                <td>Warranty Expire</td>
                                                                <td>Right</td>
                                                                <td>Left</td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLens({ ...contractLens, consultationDate: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLens({ ...contractLens, dueDate: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLens({ ...contractLens, prescriber: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLens({ ...contractLens, dispenser: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLens({ ...contractLens, invNo: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLens({ ...contractLens, warrantyExpire: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLens({ ...contractLens, right: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLens({ ...contractLens, left: e.target.value })} className="form-control" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div className="eye-lens-popup mt-2">
                                                        <table>
                                                            <tr>
                                                                <td></td>
                                                                <td>CL Code</td>
                                                                <td>Sup</td>
                                                                <td>BCOR</td>
                                                                <td>Sphere</td>
                                                                <td>Cyl</td>
                                                                <td>Axis</td>
                                                                <td>Add</td>
                                                                <td>BCOD</td>
                                                                <td>Perip</td>
                                                                <td></td>
                                                                <td>Order Status</td>
                                                                <td>Qty.</td>
                                                                <td>Price</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Right</td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, cLCode: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, sup: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, BCOR: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, OAD: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, sphere: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, cyl: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, axis: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, add: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, BCOD: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td className='eye-spac-table-icon'>
                                                                    <ArrowCircleUpOutlinedIcon />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, orderStatus: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, qty: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoRight({ ...contractLensInfoRight, price: e.target.value })} className="form-control" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Left</td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, cLCode: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, sup: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, BCOR: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, OAD: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, sphere: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, cyl: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, axis: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, add: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, BCOD: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td className='eye-spac-table-icon'>
                                                                    <ArrowCircleDownOutlinedIcon />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, orderStatus: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, qty: e.target.value })} className="form-control" />
                                                                </td>
                                                                <td>
                                                                    <input type="text" onChange={(e) => setContractLensInfoLeft({ ...contractLensInfoLeft, price: e.target.value })} className="form-control" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div className="mt-2">
                                                        <h6>Notes:</h6>
                                                        <div className="border rounded p-2">
                                                            <div className="row mb-1">
                                                                <div className="col-4">
                                                                    <label>Tint : </label>
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mb-1">
                                                                <div className="col-4">
                                                                    <label>Patient Instruction : </label>
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row mb-1">
                                                                <div className="col-4">
                                                                    <label>Lab Instruction : </label>
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                            <div className="row">
                                                                <div className="col-4">
                                                                    <label>Others : </label>
                                                                </div>
                                                                <div className="col-8">
                                                                    <input type="text" className="form-control form-control-sm" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </Popover>
                                        }
                                    </label>
                                </div>
                            </div>
                            <div className="history-popup-value d-flex">
                                <p className='ms-1'>  {contractLens.right && ` R : ${contractLens.right} | `} {contractLens.left && ` L : ${contractLens.left} `}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    );
};

export default Eye;