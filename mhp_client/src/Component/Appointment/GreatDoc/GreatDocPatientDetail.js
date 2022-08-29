import React, { useCallback, useEffect, useState, useRef } from 'react';
import Accordion from '@mui/material/Accordion';
import AccordionSummary from '@mui/material/AccordionSummary';
import AccordionDetails from '@mui/material/AccordionDetails';
import Typography from '@mui/material/Typography';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import './GreatDoc.css';
import icon from "../../../Images/crush.jpg";
import heartIcon from "../../../Images/Blood Pressure icon.png";
import notes1 from "../../../Images/notes1.png";
import clinic from "../../../Images/clinicale.png";
import clinic1 from "../../../Images/clinical1.png";
import clinic2 from "../../../Images/clinical2.png";
import clinic3 from "../../../Images/clinical3.png";
import clinic4 from "../../../Images/clinical4.png";
import clinic5 from "../../../Images/clinical5.png";
import clinic6 from "../../../Images/clinical6.png";
import clinic7 from "../../../Images/clinical7.png";
import clinic8 from "../../../Images/clinical8.png";
import clinic9 from "../../../Images/clinical9.png";
import clinic10 from "../../../Images/clinical10.png";
import clinic11 from "../../../Images/Mentalicon.png";
import clinic12 from "../../../Images/neurology.png";
import clinic13 from "../../../Images/womens-health.png";
import docMenu1 from "../../../Images/g-doc-menu1.png";
import docMenu2 from "../../../Images/g-doc-menu2.png";
import docMenu3 from "../../../Images/g-doc-menu3.png";
import docMenu4 from "../../../Images/g-doc-menu4.png";
import docMenu5 from "../../../Images/g-doc-menu5.png";
import docMenu6 from "../../../Images/g-doc-menu6.png";
import docMenu7 from "../../../Images/pragnency-icon.png";
import accIcon from "../../../Images/accordion (2).png";
import pMenu1 from "../../../Images/p-menu-1.png";
import pMenu2 from "../../../Images/p-menu-2.png";
import pMenu3 from "../../../Images/p-menu-3.png";
import pMenu4 from "../../../Images/p-menu-4.png";
import pMenu5 from "../../../Images/p-menu-5.png";
import vitalSign from "../../../Images/vital-icon.png";
// import procedureImg from '../../../'
import { OverlayTrigger, Popover, } from 'react-bootstrap';
import { Accordion as Accordion1 } from 'react-bootstrap';
import { createTheme, ThemeProvider } from '@mui/material/styles'
import InsertDriveFileOutlinedIcon from '@mui/icons-material/InsertDriveFileOutlined';
import TreeView from '@mui/lab/TreeView';
import TreeItem, { treeItemClasses } from '@mui/lab/TreeItem';
import { alpha, styled } from '@mui/material/styles';
import ViewInArRoundedIcon from '@mui/icons-material/ViewInArRounded';
import VitalSignModal from './VitalSignModal';
import DoctorMenuModal from './DoctorMenuModal';
import RadiologyPopUp from './RadiologyPopUp';
import axios from 'axios';
import moment from 'moment';
import NewRx from './NewRx';
import HistoryAndExamination from './HistoryAndExamination/HistoryAndExamination';
import Modal from 'react-modal';
import Table from 'react-bootstrap/Table';
import procedureImg from '../../../Images/Procedure image.png';
import diagnosisImg from '../../../Images/diagnosis-image.png';
import autoFeelImg from '../../../Images/autofill.png';
import './GreatDocPatientDetails.css';
import { ToastContainer, toast } from 'react-toastify';
import MaterialTable from 'material-table';
import PrescriptionPatient from './PrescriptionPatient';
import { useReactToPrint } from 'react-to-print';
import { FlareSharp } from '@material-ui/icons';
import VoiceRecord from './VoiceRecord';
import PrescriptionDetails from './PrescriptionDetails';
import MedicationChart from './HistoryAndExamination/MedicationChart';
import JoditEditor from "jodit-react";
import PastHistory from './PastHistory';
import PathologyPopUp from './PathologyPopUp';
import { Tooltip } from '@material-ui/core';
import swal from 'sweetalert';
import ObstreaticHistory from './ObstreaticHistory';
import { Autocomplete, TextField } from '@mui/material';
import { Link } from 'react-router-dom';
import Swal from 'sweetalert2';
import Immunisation from './Immunisation';


const GreatDocPatientDetail = (props) => {

    const [smallMenu, setSmallMenu] = useState(false);
    const [modalIsOpen, setIsOpen] = useState(false);


    const [docMenuModalIsOpen, setDocMenuModalIsOpen] = useState(false);
    const [showLeftSidebar, setShowLeftSidebar] = useState(true);
    const [showRightSidebar, setShowRightSidebar] = useState(true);
    const [showPatientHistory, setShowPatientHistory] = useState(true);
    const [showFullScreen, setShowFullScreen] = useState(true);

    const [medicationChartModalIsOpen, setMedicationChartModalIsOpen] = useState(false);

    const [appModalIsOpen, setAppModalIsOpen] = useState(false);
    const [examModalIsOpen, setExamModalIsOpen] = useState(false);
    const [radiologyModalIsOpen, setRadiologyModalIsOpen] = useState(false);
    const [pathologyModalIsOpen, setPathologyModalIsOpen] = useState(false);

    const [procedureModalIsOpen, setProcedureModalIsOpen] = useState(false);

    // popover 
    const [anchorEl, setAnchorEl] = React.useState(null);
    const [anchorEl2, setAnchorEl2] = React.useState(null);
    const [anchorEl3, setAnchorEl3] = React.useState(null);

    const handleClick = (event) => {
        setAnchorEl(anchorEl ? null : event.currentTarget);
    };
    const handleClick2 = (event) => {
        setAnchorEl2(anchorEl2 ? null : event.currentTarget);
    };
    const handleClick3 = (event) => {
        setAnchorEl3(anchorEl3 ? null : event.currentTarget);
    };
    const open = Boolean(anchorEl);
    const open2 = Boolean(anchorEl2);
    const open3 = Boolean(anchorEl3);
    const id = open ? 'simple-popper' : undefined;
    const id2 = open2 ? 'simple-popper' : undefined;
    const id3 = open3 ? 'simple-popper' : undefined;
    // popover 

    const StyledTreeItem = styled((props) => (
        <TreeItem {...props} />
    ))(({ theme }) => ({
        [`& .${treeItemClasses.iconContainer}`]: {
            '& .close': {
                opacity: 0.3,
            },
        },
        [`& .${treeItemClasses.group}`]: {
            marginLeft: 15,
            paddingLeft: 18,
            borderLeft: `1px dashed ${alpha(theme.palette.text.primary, 0.4)}`,
        },
    }));
    const popover = (
        <Popover id="popover-basic" style={{ marginTop: "-6px" }}>
            <div className='g-doc-patient-contex-menu'>
                <span><i className="far fa-user me-1"></i> Profile </span>
            </div>
        </Popover>
    );

    //modal 
    function openModal() {
        setIsOpen(true);
    }
    function closeModal() {
        setIsOpen(false);
    }

    // Morshed

    const medicationChartModalOpen = () => {
        setMedicationChartModalIsOpen(true)
    }
    const medicationChartModalClose = () => {
        setMedicationChartModalIsOpen(false)
    }

    const docMenuModalOpen = () => {
        setDocMenuModalIsOpen(true)
    }
    const docMenuModalClose = () => {
        setDocMenuModalIsOpen(false)
    }
    const appModalOpen = () => {
        setAppModalIsOpen(true);
    }
    const appModaClose = () => {
        setAppModalIsOpen(false)
    }
    const examModalOpen = () => {
        setExamModalIsOpen(true);
    }
    const examModalClose = () => {
        setExamModalIsOpen(false)
    }
    const radiologyModalOpen = () => {
        setRadiologyModalIsOpen(true)
    }
    const radiologyModalClose = () => {
        setRadiologyModalIsOpen(false)
    }
    const pathologyModalOpen = () => {
        setPathologyModalIsOpen(true)
    }
    const pathologyModalClose = () => {
        setPathologyModalIsOpen(false)
    }

    // modal
    const myTheme = createTheme({
        // Set up your custom MUI theme here
    })


    const { patient_hn_number, patient_first_name, ethnicity, patient_last_name, patient_hcc_no, blood_group, patient_birth_sex, religion, patient_images, patient_dob, usual_provider, patient_nid, lactation } = props.patientPropsValue;

    const storageData = JSON.parse(localStorage.getItem('userData'))

    //  useEffect(() => {
    //   axios.get(`patient-search-by-id/${patient_id}`).then(res => {
    //     setpatientDetails(res.data.patient);
    //   })
    //  }, []);

    const { StartTime, EndTime } = props.appointmentTime


    const [allsavedMedicen, setallsavedMedicen] = useState([])

    const [alcoholHistory, setalcoholHistory] = useState()
    const [tobacoHistory, settobacoHistory] = useState()

    useEffect(() => {
        if (props.patientPropsValue.id) {
            axios.get(`get-pescriped-dugs/${props.patientPropsValue.id}`).then(res => {
                setallsavedMedicen(res.data.drugs)
            })

            axios.get(`patients-family-social/${props.patientPropsValue.id}`).then(res => {
                setalcoholHistory(res.data.alcohols)
                settobacoHistory(res.data.social_tobacco)

            })
        }

    }, [props.patientPropsValue.id, props.saveMedicen])

    // modal2

    const customStyles = {
        content: {
            top: '30%',
            left: '27%',
            height: '60vh',
            width: '75%',
            transform: 'translate(-50%, -50%)',
            backgroundColor: 'rgb(243, 242, 239)'
        },
    };

    let subtitle;
    const [procedureModelShow, setprocedureModelShow] = React.useState(false);
    const [modalIssOpen, setIssOpen] = React.useState(false);

    function openProcedureModal() {
        setprocedureModelShow(true);
    }


    function closeProcedurModal() {
        setprocedureModelShow(false);
    }





    // diagnosis data
    const [diagonis, setdiagonis] = useState([]);
    const [diagnosisFor, setDiagnosisFor] = useState([]);
    const [diagnosisAction, setDiagnosisAction] = useState([]);

    //  procedure data
    const [procedure, setProcedure] = useState([]);
    const [procedureFor, setProcedureFor] = useState([]);
    const [procedureAction, setProcedureAction] = useState([]);

    //reason for visit data
    const [reson, setReson] = useState([]);
    const [resonFor, setResonFor] = useState([]);
    const [resonForAction, setResonForAction] = useState([]);

    //review all data get
    const [allReviewName, setAllReviewName] = useState([]);




    //all auto fill
    const [autoFill, setAutoFill] = useState([]);



    const [submitted, setSubmitted] = useState(false);

    useEffect(() => {
        axios.get(`/diagnosis-procedure-reason/diagnosis`)
            .then(res => {
                setdiagonis(res.data.data)
            })
        axios.get(`/diagnosis-procedure-reason-for/diagnosis`)
            .then(res => {
                setDiagnosisFor(res.data.data);
            })
        axios.get(`/diagnosis-procedure-reason-action/diagnosis`)
            .then(res => {
                setDiagnosisAction(res.data.data);
            })
        axios.get(`/diagnosis-procedure-reason/procedure`)
            .then(res => {
                setProcedure(res.data.data);
            })
        axios.get(`/diagnosis-procedure-reason-for/procedure`)
            .then(res => {
                setProcedureFor(res.data.data);
            })
        axios.get(`/diagnosis-procedure-reason-action/procedure`)
            .then(res => {
                setProcedureAction(res.data.data);
            })
        axios.get(`/diagnosis-procedure-reason/ResonForVisit`)
            .then(res => {
                setReson(res.data.data);
            })
        axios.get(`/diagnosis-procedure-reason-for/ResonForVisit`)
            .then(res => {
                setResonFor(res.data.data);
            })
        axios.get(`/diagnosis-procedure-reason-action/ResonForVisit`)
            .then(res => {
                setResonForAction(res.data.data);
            })
        axios.get(`/auto-fill`)
            .then(res => {
                setAutoFill(res.data.autoFill);
            })
        axios.get(`/review-name`).then(res => {
            setAllReviewName(res.data.review_name);
        })

    }, []);

    // diagnosis_onchange_submit


    const [diagnosis, setDiagnosis] = useState({
        diagnosis_name: "",
        diagnosis_for_name: "",
        diagnosis_further_details: "",
        diagnosis_action_name: "",
    })


    const [diagnosisChecked, setdiagnosisChecked] = useState(false);

    //view table get data diagnosis
    const [getAllDiagnosis, setGetAllDiagnosis] = useState([]);
    const [diagnosisList, setDiagnosisList] = useState([]);
    // useEffect(() => {
    //     axios.get(`/great-doc-dignosis`).then(res => {
    //         if (res.data.status == 200) {
    //             setGetAllDiagnosis(res.data.all_diagnosis);
    //         }
    //     })
    // }, [modalIsOpen, submitted])

    function handleDiagnosisChecbox(e) {
        setdiagnosisChecked(e.target.checked);

    }

    function handleDiagnosisInput(e) {
        setDiagnosis({ ...diagnosis, [e.target.name]: e.target.value })

    }
    const [diagnosisSearchInput, setDiagnosisSearchInput] = useState('');
    const handleDiagnosisSearch = (e) => {
        setDiagnosisSearchInput(e.target.value);
    }

    const resetDiagnosis = (e) => {
        e.preventDefault();
        setDiagnosisList([]);
    }
    const diagnosisData = {};
    diagnosisData.diagnosis_name = diagnosis.diagnosis_name;
    diagnosisData.diagnosis_for_name = diagnosis.diagnosis_for_name;
    diagnosisData.diagnosis_further_details = diagnosis.diagnosis_further_details;
    diagnosisData.diagnosis_action_name = diagnosis.diagnosis_action_name;
    diagnosisData.diagnosis_provitional_status = diagnosisChecked;

    const deleteDiagnnosis = (id) => {
        var filtered = diagnosisList.filter(function (value, index) {
            return index !== id;
        });
        setDiagnosisList(filtered);
    }

    function addDiagnosisList(e) {
        e.preventDefault();

        if (diagnosis.diagnosis_name === '') {
            toast.error("please provide all input Data");
        }
        else {
            setDiagnosisList([...diagnosisList, diagnosisData]);
            setDiagnosis({
                diagnosis_name: "",
                diagnosis_for_name: "",
                diagnosis_further_details: "",
                diagnosis_action_name: "",
            })
            setdiagnosisChecked(false);
        }

    }
    const submitDiagnosis = () => {
        diagnosisList.map((item) => {
            const alldDiagnosisData = {};
            alldDiagnosisData.diagnosis_name = item.diagnosis_name;
            alldDiagnosisData.diagnosis_for_name = item.diagnosis_for_name;
            alldDiagnosisData.diagnosis_further_details = item.diagnosis_further_details;
            alldDiagnosisData.diagnosis_action_name = item.diagnosis_action_name;
            alldDiagnosisData.diagnosis_provitional_status = item.diagnosis_provitional_status;

            axios.post(`/save-great-doc-dignosis`, alldDiagnosisData).then(res => {
                if (res.data.status == 200) {
                    setDiagnosisList([]);
                }
                else if (res.data.status == 400) {
                    // setdiagnosisError(res.data.errors);
                    toast.error("Please input all valid field ");

                }

            })
        });
        toast.success("Diagnosis added sucessfully");

    }

    //procedure functional start
    const [procedureData, setProcedureData] = useState({
        procedure_name: "",
        procedure_for_name: "",
        procedure_further_details: "",
        procedure_action_name: "",
    })
    const [procedureList, setProcedureList] = useState([]);

    function handleProcedureInput(e) {
        setProcedureData({ ...procedureData, [e.target.name]: e.target.value })

    }
    const [procedureSearchInput, setProcedureSearchInput] = useState('');
    const handleProcedureSearch = (e) => {
        setProcedureSearchInput(e.target.value);
    }

    //view table get data procedure
    // const [getAllProcedure, setGetAllProcedure] = useState([]);

    const deleteProcedure = (id) => {
        var filtered = procedureList.filter(function (value, index) {
            return index !== id;
        });
        setProcedureList(filtered);
    }


    // useEffect(() => {
    //     axios.get(`/great-doc-procedure`).then(res => {
    //         if (res.data.status == 200) {
    //             setGetAllProcedure(res.data.all_procedure);
    //         }
    //     })
    // }, [modalIsOpen, submitted])

    function addProcedureList(e) {
        e.preventDefault();
        if (procedureData.procedure_name === '') {
            toast.error("please provide all input Data");
        }
        else {
            setProcedureList([...procedureList, procedureData]);
            setProcedureData({
                procedure_name: "",
                procedure_for_name: "",
                procedure_further_details: "",
                procedure_action_name: "",
            })
        }

    }
    const resetProcedure = (e) => {
        e.preventDefault();
        setProcedureList([]);
    }
    function submitProcedure(e) {
        e.preventDefault();
        procedureList.map((item) => {
            const alldProcedureData = {};
            alldProcedureData.procedure_name = item.procedure_name;
            alldProcedureData.procedure_for_name = item.procedure_for_name;
            alldProcedureData.procedure_further_details = item.procedure_further_details;
            alldProcedureData.procedure_action_name = item.procedure_action_name;

            axios.post(`/save-great-doc-procedure`, alldProcedureData).then(res => {
                if (res.data.status == 200) {
                    setProcedureList([])
                    setProcedureData({
                        procedure_name: "",
                        procedure_for_name: "",
                        procedure_further_details: "",
                        procedure_action_name: "",
                    })

                    setSubmitted(!submitted);

                }
                else if (res.data.status == 400) {
                    toast.error("Please input all valid field ");

                }

            })
        });
        toast.success("Procedure added sucessfully");

    }

    ////////////////////////////////////    Reason for visit     ///////////////////////////
    const [resonForVisitData, setresonForVisitData] = useState({
        reson_name: "",
        reson_for_name: "",
        reson_further_details: "",
        code: ""
    })
    const handleResonInput = (e) => {
        setresonForVisitData({ ...resonForVisitData, [e.target.name]: e.target.value })

    }
    const [resonList, setResonList] = useState([]);
    const [newValue, setnewValue] = useState()
    function addResonList(e) {
        e.preventDefault();
        if (resonForVisitData.reson_name === '') {
            toast.error("please provide all input Data");
        }
        else {
            setResonList([...resonList, resonForVisitData]);
            setresonForVisitData({
                reson_name: "",
                reson_for_name: "",
                reson_further_details: "",
                code: ""
            })
            setnewValue()

        }

    }
    const deleteReson = (id) => {
        var filtered = resonList.filter(function (value, index) {
            return index !== id;
        });
        setResonList(filtered);
    }
    const resetReson = (e) => {
        e.preventDefault();
        setResonList([]);
    }
    function submitReson(e) {
        e.preventDefault();

        resonList.map((item) => {
            const allResonData = {};
            allResonData.patient_id = props.patientPropsValue.id;
            allResonData.reson_name = item.reson_name;
            allResonData.code = item.code;
            allResonData.reson_for_name = item.reson_for_name;
            allResonData.reson_further_details = item.reson_further_details;

            axios.post(`/save-great-doc-reson`, allResonData).then(res => {
                if (res.data.status == 200) {
                    setResonList([])
                    resonForVisitData({
                        reson_name: "",
                        reson_for_name: "",
                        reson_further_details: "",
                    })

                    setSubmitted(!submitted);
                }
                else if (res.data.status == 400) {
                    toast.error("Please input all valid field ");

                }

            })

        });
        toast.success("Reason For Visit added");

    }
    ///// review functionality start ////

    const [review, setReview] = useState({
        review_name_id: "",
        review_limit: "",
        review_type: "",
        review_date: "",
        review_other: ''
    })


    const [reminderStatus, setReminderStatus] = useState('');
    const handleReminderCheckBox = (e) => {
        if (e.target.checked == true) {
            setReminderStatus(1)
        }
        else {
            setReminderStatus(0)

        }
    }
    const handleReviewInput = (e) => {
        setReview({
            ...review, [e.target.name]: e.target.value
        })
    }
    const reviewData = {
        review_name_id: review.review_name_id,
        review_limit: review.review_limit,
        review_type: review.review_type,
        review_date: review.review_date,
        review_other: review.review_other,
        reminder_status: reminderStatus,
    }

    const submitReview = (e) => {
        e.preventDefault();
        if (review.review_name_id === '' || review.review_limit == '' || review.review_type == '') {
            toast.error("please provide all input Data");
        }
        else {
            axios.post(`/save-great-doc-review`, reviewData).then(res => {
                if (res.data.status == 200) {
                    setReview({
                        review_name_id: "",
                        review_limit: "",
                        review_type: "",
                        review_date: "",
                        review_other: ''
                    })
                    document.getElementById('reminderCheckbox').checked = false;
                    setSubmitted(!submitted);
                    toast.success("Review added Successfully");


                }

                else if (res.data.status == 400) {
                    // setAutoFillError([res.data.errors])
                    toast.error("Please input all valid field ");

                }


            })
        }
    }




    ////////////////////////////////////    Auto fill functionality start      ///////////////////////////
    const [autoFillData, setAutoFillData] = useState({
        auto_fill_id: "",

    })
    const [autoFillDependent, setAutoFillDependent] = useState({
        autofillText: '',
        autofillHistory: '',
    });

    const autoFillAllData = {
        auto_fill_id: autoFillData.auto_fill_id,
        auto_fill_text: autoFillDependent.autofillText,
        auto_fill_history: autoFillDependent.autofillHistory,
    }

    useEffect(() => {
        if (autoFillData.auto_fill_id) {
            axios.get(`/autofill/${autoFillData.auto_fill_id}`).then(res => {
                if (res.data.status == 200) {
                    setAutoFillDependent({
                        autofillText: res.data.autoFill.autoFill_text,
                        autofillHistory: res.data.autoFill.autoFill_history


                    })
                }

            })
        }
    }, [autoFillData.auto_fill_id])

    const handleAutoFillInput = (e) => {
        setAutoFillData({
            ...autoFillData, [e.target.name]: e.target.value
        })

    }
    const handleDisableValueChange = (e) => {
        setAutoFillDependent({
            ...autoFillDependent, [e.target.name]: e.target.value
        })
    }
    const disabledElement1 = useRef();
    const disabledElement2 = useRef();

    const editHandleAutoFillChange = () => {
        disabledElement1.current.removeAttribute("disabled");
        disabledElement2.current.removeAttribute("disabled");

    }

    function submitAutoFill(e) {
        e.preventDefault();
        if (autoFillData.auto_fill_id === '' || autoFillDependent.autofillHistory === '' || autoFillDependent.autofillText === '') {
            toast.error("please provide all input Data");
        }
        else {

            axios.post(`/save-great-doc-autofill`, autoFillAllData).then(res => {
                if (res.data.status == 200) {
                    setAutoFillDependent({
                        autofillText: '',
                        autofillHistory: '',
                    })
                    setAutoFillData({ auto_fill_id: "", })

                    setSubmitted(!submitted);
                    toast.success("AutoFill added Successfully");


                }

                else if (res.data.status == 400) {
                    // setAutoFillError([res.data.errors])
                    toast.error("Please input all valid field ");

                }


            })
        }


    }
    const componentRef = useRef();
    const [prescriptionSaveDB, setPrescriptionSaveDB] = useState(false)

    const handlePrintPrescription = useReactToPrint({
        content: () => componentRef.current,
    });

    const [selectedMedicen, setselectedMedicen] = useState([])

    const [navMenuActiveClass, setnavMenuActiveClass] = useState()

    const [activeClassForHistory, setactiveClassForHistory] = useState()

    const [vRmodelshow, setvRmodelshow] = useState(false)

    const [curestPres, setcurestPres] = useState([])
    const [pastPres, setpastPres] = useState([])
    const [preDetails, setpreDetails] = useState([])
    const [doctorsNotesShow, setdoctorsNotesShow] = useState()

    const [preDetailModelShow, setpreDetailModelShow] = useState(false)

    useEffect(() => {
        if (props.patientPropsValue.id) {
            axios.get(`get-prescription-name/${props.patientPropsValue.id}`).then(res => {
                let data1 = res.data.prescription.slice(0, 1)
                setcurestPres(data1)
                let data2 = res.data.prescription.slice(1, res.data.prescription.length)
                setpastPres(data2)
            })
        }
    }, [props.patientPropsValue.id, prescriptionSaveDB])


    const [generalPropsValue, setgeneralPropsValue] = useState()
    const [cardivascularPropsValue, setcardivascularPropsValue] = useState()
    const [reasonForVisitValue, setreasonForVisitValue] = useState([])

    // useEffect(() => {

    //     axios.get(`get-cardivascular/${props.patientPropsValue.id}`).then(res => {
    //         setcardivascularValue(res.data.history)
    //     })
    //     axios.get(`get-general/${props.patientPropsValue.id}`).then(res => {
    //         setgeneralValue(res.data.history)
    //     })

    //     // const exmiDataNew = Object.assign(generalValue,cardivascularValue)

    // }, [updateuseEffect])


    const [manageModalIsOpen, setManageModalIsOpen] = useState(false);
    const customStylesManage = {
        content: {
            top: '32%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "60%",
            height: "400px",
            padding: "10px",
            zIndex: "3000"

        },

    };

    const [resonData, setresonData] = useState([])
    useEffect(() => {
        if (props.patientPropsValue.id) {
            axios.get(`get-great-doc-reson-for-visit/${props.patientPropsValue.id}`).then(res => {
                setresonData(res.data.allReasons)
            })
        }

    }, [props.patientPropsValue.id])


    useEffect(() => {
        const exmiDataNew = {
            ...generalPropsValue,
            ...cardivascularPropsValue
        }


        Object.keys(exmiDataNew).filter(key => {
            delete exmiDataNew['id']
            delete exmiDataNew['patient_id']
            delete exmiDataNew['created_at']
            delete exmiDataNew['updated_at']
            if (exmiDataNew[key] == 0) {
                delete exmiDataNew[key]
            }
        })
        var str = Object.keys(exmiDataNew).filter(key => exmiDataNew[key] != null).map(function (key) {

            return `<li>${key} = ${exmiDataNew[key] == 1 ? "Positive" : exmiDataNew[key]} </li>`; // line break for wrapping only

        }).join("");


        if (str) {
            setDoctrosNote(`<p><strong style="font-size: 15px;">Reson For Visit :</strong></p>
            <ul>
            ${resonData.length > 0 ?
                    resonData.map(item => {
                        return (
                            `<li>${item.reson_name}</li>`
                        )
                    }).join('') : ''
                }    
            </ul>
            <p><strong style="font-size: 15px;">History :&nbsp;</strong></p>
            <ul>
               ${str}
            </ul>`)

        }


    }, [generalPropsValue, cardivascularPropsValue, reasonForVisitValue])






    //For text Editor

    const editor = useRef(null);
    // const editor = Jodit.make("#editor", {
    //     "disablePlugins": "iframe,xpath,wrap-nodes,video,table-keyboard-navigation,table,color,copy-format,drag-and-drop,drag-and-drop-element,enter,error-messages,file,focus,font,format-block,fullsize,hotkeys,hr,about,image,image-processor,tooltip,tab,symbols,sticky,stat,spellcheck,speech-recognize,source,size,select-cells,select,search,resizer,resize-handler,resize-cells,redo-undo,image-properties,indent,inline-popup,justify,key-arrow-outside,limit,line-height,link,media,mobile,ordered-list,paste,paste-from-word,paste-storage,placeholder,powered-by-jodit,preview,print,backspace,add-new-line,clipboard",
    //     "inline": true,
    //     "toolbarInlineForSelection": true,
    //     "showPlaceholder": false
    //   });
    const [doctorsNote, setDoctrosNote] = useState(`<p><span style="font-family: Georgia, serif; color: rgb(183, 183, 183); font-size: 14px;">Start writing...</span></p><br><br>`);
    // useEffect(
    //     () => {

    //         setDoctrosNote(
    //             `Start writing... <br><br></p><br><br></p>`
    //         )
    //     }
    //     ,
    //     []
    // );

    const config = {
        // removeButtons: ["source","iframe","xpath","wrap-nodes","video","table-keyboard-navigation","color","copy-format","drag-and-drop",'drag-and-drop-element',"enter","error-messages","file","focus","font","format-block","fullsize","hotkeys","hr","about","key-arrow-outside","limit","line-height","link","media","mobile","ordered-list","paste","paste-from-word","paste-storage","placeholder","powered-by-jodit","preview","print","backspace","add-new-line","clipboard"],
        readonly: false, // all options from https://xdsoft.net/jodit/doc/,
        removeButtons: ["source", "strikethrough", "eraser", "copyformat", "link", "showall"],
        // inline: true,
        // toolbarInlineForSelection: true,
        // showPlaceholder: false,
        // disablePlugins: ["iframe,xpath,wrap-nodes,video,table-keyboard-navigation,table,color,copy-format,drag-and-drop,drag-and-drop-element,enter,error-messages,file,focus,font,format-block,fullsize,hotkeys,hr,about,image,image-processor,tooltip,tab,symbols,sticky,stat,spellcheck,speech-recognize,source,size,select-cells,select,search,resizer,resize-handler,resize-cells,redo-undo,image-properties,indent,inline-popup,justify,key-arrow-outside,limit,line-height,link,media,mobile,ordered-list,paste,paste-from-word,paste-storage,placeholder,powered-by-jodit,preview,print,backspace,add-new-line,clipboard"],
    };
    const [managementNote, setMangementNote] = useState(`<p><span style="font-family: Georgia, serif; color: rgb(102, 102, 102);">Managment ....</span></p>`)
    const saveMangement = () => {
        console.log("ddf", managementNote)
    }

    useEffect(() => {
        if (lactation === 1) {
            setlactationValue(true)
        } else {
            setlactationValue(false)
        }
    }, [props.patientPropsValue.id])


    const [lactationValue, setlactationValue] = useState(false)
    const [lactationUpdate, setlactationUpdate] = useState()
    const [lacValUpdate, setlacValUpdate] = useState()

    useEffect(() => {
        const data = {
            lactation: lactationValue
        }
        if (props.patientPropsValue.id) {
            axios.post(`update-patients-lactation/${props.patientPropsValue.id}`, data).then(res => {
                toast.success(res.data.message)
                setlactationUpdate(Math.random())
            })
        }

    }, [lacValUpdate])





    return (
        <>  <div>
            <div className="g-doc-middle-content custom-card p-1 ms-1">
                <div className="row g-doc-patient-details border-bottom pb-1">
                    <div className="col-1">
                        {
                            patient_images !== '' ? <img src={`${global.img_url}/images/files/${patient_images}`} alt="" className="img-fluid g-doc-patient-img" /> : <img src={icon} alt="" className="img-fluid" />
                        }

                    </div>
                    <div className="col-3">
                        <div className="d-flex">
                            <span className="me-1">Medical No : </span>
                            <p>{patient_hn_number}</p>
                        </div>
                        <div className="d-flex">
                            <span className="me-1">Name : </span>
                            <p>{patient_first_name === '' ? '' : patient_first_name}  {patient_last_name === '' ? '' : patient_last_name}</p>
                        </div>
                        <div className="d-flex">
                            <span className="me-1">Religion : </span>
                            <p>{religion == null ? '' : religion.religion_name}</p>
                        </div>

                    </div>
                    <div className="col-3">
                        <div className="d-flex">
                            <span className='me-1'>Health ID : </span>
                            <p>{patient_hcc_no === "" ? " " : patient_hcc_no}</p>
                        </div>
                        <div className="d-flex">
                            <span className='me-1'>Age : </span>
                            <p>{patient_dob === '' ? '' : moment().diff(patient_dob, 'years')}</p>
                        </div>
                        {/* <div className="d-flex">
                            <span className='me-1'>Ethnicity : </span>
                            <p>{ethnicity?.ethnicity_name}</p>
                        </div> */}
                        {
                            patient_birth_sex.birth_sex_name === 'Female' ?
                                <div className="d-flex">
                                    <span className='me-1'>Lactation : </span>
                                    <input onChange={() => {
                                        setlactationValue(!lactationValue)
                                        setlacValUpdate(Math.random())
                                    }} checked={lactationValue} type="checkbox" className='lactationCheckbox' />
                                </div>
                                :
                                <div className="d-flex">
                                    <span className='me-1'>Ethnicity : </span>
                                    <p>{ethnicity?.ethnicity_name}</p>
                                </div>
                        }


                    </div>
                    <div className="col-3">
                        <div className="d-flex">
                            <span className='me-1'>Natioal ID : </span>
                            <p>{patient_nid}</p>
                        </div>
                        <div className="d-flex">
                            <span className='me-1'>D.O.B : </span>
                            <p>{patient_dob === '' ? "" : moment(patient_dob).format("MMM Do YY")}</p>
                        </div>
                        <div className="d-flex">
                            <span className='me-1'>Alcohol : </span>
                            {
                                props.patientPropsValue.id &&
                                <p>{alcoholHistory ? alcoholHistory.is_drinker : "No"}</p>
                            }
                        </div>
                    </div>
                    <div className="col-2">
                        <div className="d-flex">
                            <span className='me-1'>Blood Group : </span>
                            <p>{blood_group === '' ? '' : blood_group.blood_group_name}</p>
                        </div>
                        <div className="d-flex">
                            <span className='me-1'>Gender : </span>
                            <p>{patient_birth_sex === '' ? '' : patient_birth_sex.birth_sex_name}</p>
                        </div>
                        <div className="d-flex">
                            <span className='me-1'>Smoking : </span>
                            {
                                props.patientPropsValue.id &&
                                <p>{tobacoHistory ? tobacoHistory.amount_per_day && "Yes" : "No"}</p>
                            }

                        </div>
                    </div>
                </div>
                {/* <div className="row"> */}
                {/* <div className="col-10 g-doc-patient-details">
                        
                    </div> */}
                {/* <div className="col-2">
                        <div className="g-doc-patient-sign clearfix">
                            <div className="g-doc-patient-blood-pressure d-flex    text-center justify-content-around">
                                <img src={heartIcon} alt="" className="me-3 mt-1" />
                                <div className=''>
                                    <span>Blood Pressure</span> <br />
                                    <span className="rate">120/80</span>
                                </div>
                            </div>
                            <span onClick={openModal} className='float-end mt-1 see-all-sign'>See All vital Signs</span>
                            <VitalSignModal vitalSign={props.vitalSign} closeModal={closeModal} modalIsOpen={modalIsOpen}></VitalSignModal>
                        </div>
                    </div> */}
                {/* </div> */}

                <div className="row mt-2">
                    <div className="row">
                        <div className="col-12 doctor-menu-container clearfix">
                            <nav>
                                {
                                    props.patientPropsValue.id ?
                                        <ul>
                                            {/* <li className='me-4'> <img src={docMenu1} alt="" className='me-3' /> Appointment </li> */}

                                            <li onClick={medicationChartModalOpen} className='me-4'><img src={docMenu2} alt="" className='me-2' />Medication Chart </li>
                                            <MedicationChart patient_id={props.patientPropsValue.id} closeModal={medicationChartModalClose} modalIsOpen={medicationChartModalIsOpen} />
                                            <li onClick={radiologyModalOpen} className='me-4'><img src={docMenu3} alt="" className='me-2' />Radiology </li>
                                            <RadiologyPopUp patient_id={props.patientPropsValue.id} closeModal={radiologyModalClose} modalIsOpen={radiologyModalIsOpen} />
                                            <li onClick={pathologyModalOpen} className='me-2'><img src={docMenu5} alt="" className='me-2' />Pathology</li>
                                            <PathologyPopUp patient_id={props.patientPropsValue.id} closeModal={pathologyModalClose} modalIsOpen={pathologyModalIsOpen} />
                                            {
                                                patient_birth_sex.birth_sex_name === 'Female' &&
                                                <li onClick={() => props.setElement("obstreaticHistory")} className='me-4'> <img src={docMenu7} alt="" className='me-2' /> Pregnancy </li>
                                            }

                                            {/* <li className='me-4'><img src={docMenu4} alt="" className='me-2' />MIMS</li> */}
                                            <li onClick={docMenuModalOpen} className=''><img src={docMenu6} alt="" className='me-2' /> </li>
                                            <DoctorMenuModal patient_id={props.patientPropsValue.id} patient={props.patientPropsValue} closeModal={docMenuModalClose} modalIsOpen={docMenuModalIsOpen} ></DoctorMenuModal>
                                        </ul> :

                                        <ul>
                                            {/* <li className='me-4'> <img src={docMenu1} alt="" className='me-3' /> Appointment </li> */}

                                            <li style={{ color: "#c9c9c9" }} className='me-4'><img src={docMenu2} alt="" className='me-2' />Medication Chart </li>
                                            <li style={{ color: "#c9c9c9" }} className='me-4'><img src={docMenu3} alt="" className='me-2' />Radiology </li>

                                            <li style={{ color: "#c9c9c9" }} className='me-2'><img src={docMenu5} alt="" className='me-2' />Pathology</li>
                                            <li style={{ color: "#c9c9c9" }} className='me-4'> <img src={docMenu7} alt="" className='me-2' /> Pregnancy </li>

                                            {/* <li style={{color:"#c9c9c9"}} className='me-4'><img src={docMenu4} alt="" className='me-2' />MIMS</li> */}
                                            <li style={{ color: "#c9c9c9" }} className=''><img src={docMenu6} alt="" className='me-2' /> </li>

                                        </ul>
                                }

                            </nav>
                        </div>
                        <div className={`"prescription" ${showRightSidebar ? "col-9" : "col-11"}`}>
                            <div className="doctor-prescription-menu">
                                <nav>
                                    <ul>
                                        {
                                            props.patientPropsValue.id === '' ?
                                                <li className='me-2'> <button className="printDisabledbtn"><img src={pMenu1} alt="" className='me-2' />Add Prescription</button> </li>
                                                :
                                                <li onClick={appModalOpen} className='me-2'> <button><img src={pMenu1} alt="" className='me-2' />Add Prescription</button> </li>
                                        }
                                        {
                                            appModalIsOpen &&
                                            <NewRx lactationUpdate={lactationUpdate} reson={reson} saveMedicen={props.saveMedicen} setsaveMedicen={props.setsaveMedicen} patient_id={props.patientPropsValue.id} closeModal={appModaClose} modalIsOpen={appModalIsOpen}></NewRx>
                                        }
                                        {/* <li className='me-2'> <button><img src={pMenu2} alt="" className='me-2' />Edit</button> </li> */}
                                        {/* <li className='me-2'> <button><img src={pMenu3} alt="" className='me-2' />Delete</button> </li> */}
                                        {
                                            selectedMedicen.length > 0 ?
                                                <li onClick={() => {
                                                    handlePrintPrescription()
                                                    setPrescriptionSaveDB(true)
                                                }
                                                } className='me-2'> <button><img src={pMenu4} alt="" className='me-2' />Print</button> </li>
                                                :
                                                <li className='me-2' > <button className='printDisabledbtn'><img src={pMenu4} alt="" className='me-2' />Print</button> </li>


                                        }

                                        <li className='me-2'> <button className='printDisabledbtn'><img src={pMenu5} alt="" className='me-2' />eScript</button> </li>
                                        {
                                            props.patientPropsValue.id === '' ?
                                                <li className='me-2' > <button className='printDisabledbtn'><img src={vitalSign} alt="" className='me-2' />Vital Sign</button> </li>
                                                :
                                                <li className='me-2' onClick={openModal} > <button><img src={vitalSign} alt="" className='me-2' />Vital Sign</button> </li>
                                        }

                                        <VitalSignModal vitalSign={props.vitalSign} closeModal={closeModal} modalIsOpen={modalIsOpen}></VitalSignModal>
                                    </ul>
                                </nav>
                            </div>
                            <div ref={componentRef}>
                                <PrescriptionPatient doctorsNote={doctorsNote} setPrescriptionSaveDB={setPrescriptionSaveDB} prescriptionSaveDB={prescriptionSaveDB} patientDetails={props.patientPropsValue} selectedMedicen={selectedMedicen} />
                            </div>
                            <div className="g-doc-patient-history mb-2">
                                {
                                    showPatientHistory ?
                                        <div className="g-doc-patient-history-small p-2">
                                            <div className="row">
                                                <div className="col-3 d-flex">
                                                    <h6 className=''>Care by : </h6>
                                                    <p className="ms-1">{usual_provider?.usual_provider_name}</p>
                                                </div>
                                                <div className="col-3 d-flex">
                                                    <h6 className=''>Seen by : </h6>
                                                    <p className="ms-1">{storageData.name}</p>
                                                </div>
                                                <div className="col-6">
                                                    <div className="row">
                                                        <div className="col-2">
                                                            <h6 className=''>History</h6>
                                                        </div>
                                                        <div className="col-5 d-flex">

                                                            <div className="form-check">
                                                                <input defaultChecked className="form-check-input mt-1" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                                <label className="form-check-label" for="flexRadioDefault1">
                                                                    Free Text
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div className="col-5 d-flex justify-content-between">
                                                            <div className="form-check">
                                                                <input onChange={() => setvRmodelshow(true)} className="form-check-input " type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                                <label className="form-check-label" for="flexRadioDefault1">
                                                                    Voice
                                                                </label>
                                                            </div>
                                                            <img onClick={() => setShowPatientHistory(!showPatientHistory)} src={accIcon} alt="" className='' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        :
                                        <div className="g-doc-patient-history-large p-2">
                                            <div className="row">
                                                <div className="col-3">
                                                    <div className="d-flex">
                                                        <h6>Care by : </h6>
                                                        <p className='ms-1'>Dr. Terry Bergson</p>
                                                    </div>
                                                    <div className="d-flex">
                                                        <h6>Date : </h6>
                                                        <p>{moment(StartTime).format("MMM Do YY")}</p>
                                                    </div>
                                                </div>
                                                <div className="col-3">
                                                    <div className="d-flex">
                                                        <h6>Seen by : </h6>
                                                        <p className='ms-1'>Dr. Terry Bergson</p>
                                                    </div>
                                                    <div className="d-flex">
                                                        <h6>Time : </h6>
                                                        <p className='ms-1'>{moment(StartTime).format('LT')}</p>
                                                    </div>

                                                </div>
                                                <div className="col-6">
                                                    <div className="row">
                                                        <div className="col-2">
                                                            <h6>History</h6>
                                                        </div>
                                                        <div className="col-5">
                                                            <div className="form-check">
                                                                <input className="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                                <label className="form-check-label" for="flexRadioDefault1">
                                                                    Free Text
                                                                </label>
                                                            </div>
                                                            <div className="d-flex">
                                                                <h6>Duration : </h6>
                                                                <p className='ms-1'>30 Minutes</p>
                                                            </div>
                                                        </div>
                                                        <div className="col-5 d-flex justify-content-between">
                                                            <div className="form-check">
                                                                <input className="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                                <label className="form-check-label" for="flexRadioDefault1">
                                                                    Voice
                                                                </label>
                                                            </div>
                                                            <img onClick={() => setShowPatientHistory(!showPatientHistory)} src={accIcon} alt="" className='float-end' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                }

                            </div>
                            <VoiceRecord vRmodelshow={vRmodelshow} setvRmodelshow={setvRmodelshow} />
                            {
                                props.element === "CurrentRx" &&
                                <div className='rx'>
                                    <div className="accordion" id="accordionExample">
                                        <div className="accordion-item">
                                            <h2 className="accordion-header" id="panelsStayOpen-headingTwo">
                                                <button className="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                                    Current Rx
                                                </button>
                                            </h2>
                                            <div id="panelsStayOpen-collapseTwo" className="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                                                <div className="accordion-body">
                                                    {props.prescribedDrugs.length > 0 ?
                                                        <div>
                                                            <MaterialTable
                                                                columns={[
                                                                    {
                                                                        title: 'Drug', field: 'drug_name',
                                                                        cellStyle: {
                                                                            width: "31%"
                                                                        }

                                                                    },
                                                                    { title: 'Dose', field: 'dose' },
                                                                    {
                                                                        title: 'Qty', field: 'quantity',

                                                                    },

                                                                    {
                                                                        title: 'Prescribed', field: 'prescribedAs'
                                                                    },
                                                                    {
                                                                        title: 'Time', field: 'drugsTimeLimit',

                                                                    },

                                                                    {
                                                                        title: "", render: (row) => <div onClick={() => {

                                                                            Swal.fire({
                                                                                title: 'Rx Update (Current to Past)',
                                                                                text: "Are you sure?",
                                                                                icon: 'warning',
                                                                                showCancelButton: true,
                                                                                confirmButtonColor: '#3085d6',
                                                                                cancelButtonColor: '#d33',
                                                                                confirmButtonText: 'Yes, update it!'
                                                                            }).then((result) => {
                                                                                if (result.isConfirmed) {
                                                                                    axios.put(`current-to-past-rx/${row.id}`).then(res => {
                                                                                        if (res.status == 200) {
                                                                                            props.setupdateState(Math.random())
                                                                                        }
                                                                                    })
                                                                                    Swal.fire(
                                                                                        'Update!',
                                                                                        'Patient data has been updated.',
                                                                                        'success'
                                                                                    )
                                                                                }
                                                                            })




                                                                        }} className='PrescribedRxDelete'> <i className="fas fa-trash"></i></div>

                                                                    },

                                                                ]}
                                                                data={props.prescribedDrugs}
                                                                options={{
                                                                    selection: true,
                                                                    emptyRowsWhenPaging: false,
                                                                    showTitle: false,
                                                                    headerStyle: {
                                                                        backgroundColor: '#EEE',
                                                                        zIndex: -1
                                                                    },
                                                                    rowStyle: {
                                                                        fontSize: "12px",
                                                                        width: "5%"
                                                                    },

                                                                    searchFieldStyle: {
                                                                        marginLeft: "-24px"
                                                                    }
                                                                }}
                                                                onSelectionChange={(rows) =>
                                                                    setselectedMedicen(rows)
                                                                }

                                                            />
                                                        </div>
                                                        :
                                                        <>
                                                            {
                                                                props.nodatafoundPrescribedDrugs ? <p style={{ fontSize: "13px", marginLeft: "2%", marginTop: "2%", color: "red" }}>No Data Found</p> :
                                                                    <i style={{ fontSize: "26px", marginLeft: "40%" }} className="fas fa-spinner fa-spin"></i>

                                                            }

                                                        </>


                                                    }
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div className="g-doc-text-editor mt-2">
                                        <JoditEditor style={{ height: "100%" }}
                                            ref={editor}
                                            value={doctorsNote}
                                            config={config}
                                            tabIndex={1} // tabIndex of textarea
                                            onBlur={(newContent) => setDoctrosNote(newContent)} // preferred to use only this option to update the content for performance reasons
                                            onChange={(newContent) => {
                                                console.log("Data for Text editor", newContent)
                                            }}

                                        />

                                    </div>
                                </div>


                            }
                            {
                                props.element === "pastRx" &&
                                <div className='rx'>
                                    <div className="accordion" id="accordionExample">
                                        <div className="accordion-item">
                                            <h2 className="accordion-header" id="panelsStayOpen-headingTwo">
                                                <button className="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
                                                    Past Rx
                                                </button>
                                            </h2>
                                            <div id="panelsStayOpen-collapseTwo" className="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
                                                <div className="accordion-body">
                                                    {props.PastPrescribedDrugs.length > 0 ?
                                                        <div>
                                                            <MaterialTable
                                                                columns={[
                                                                    {
                                                                        title: 'Drug', field: 'drug_name',
                                                                        cellStyle: {
                                                                            width: "31%"
                                                                            // backgroundColor: 'rgb(237 237 237 / 64%)'

                                                                        }
                                                                    },
                                                                    { title: 'Dose', field: 'dose' },
                                                                    {
                                                                        title: 'Qty', field: 'quantity',
                                                                        cellStyle: {
                                                                            // backgroundColor: 'rgb(237 237 237 / 64%)'                
                                                                        },
                                                                    },

                                                                    { title: 'Prescribed', field: 'prescribedAs' },
                                                                    {
                                                                        title: 'Time', field: 'drugsTimeLimit',
                                                                        cellStyle: {
                                                                            // backgroundColor: 'rgb(237 237 237 / 64%)'                
                                                                        },

                                                                    },
                                                                    {
                                                                        title: "", render: (row) => <div onClick={() => {

                                                                            Swal.fire({
                                                                                title: 'Rx Update (Past to Current)',
                                                                                text: "Are you sure?",
                                                                                icon: 'warning',
                                                                                showCancelButton: true,
                                                                                confirmButtonColor: '#3085d6',
                                                                                cancelButtonColor: '#d33',
                                                                                confirmButtonText: 'Yes, update it!'
                                                                            }).then((result) => {
                                                                                if (result.isConfirmed) {
                                                                                    axios.put(`past-to-current-rx/${row.id}`).then(res => {
                                                                                        if (res.status == 200) {
                                                                                            props.setupdateState(Math.random())
                                                                                        }
                                                                                    })
                                                                                    Swal.fire(
                                                                                        'Update!',
                                                                                        'Patient data has been updated.',
                                                                                        'success'
                                                                                    )
                                                                                }
                                                                            })




                                                                        }} className='PrescribedRxDelete'> <i className="fa-solid fa-prescription"></i></div>

                                                                    },

                                                                ]}
                                                                data={props.PastPrescribedDrugs}
                                                                options={{
                                                                    selection: true,
                                                                    emptyRowsWhenPaging: false,
                                                                    showTitle: false,
                                                                    headerStyle: {
                                                                        backgroundColor: '#EEE',
                                                                        zIndex: -1
                                                                    },
                                                                    rowStyle: {
                                                                        fontSize: "12px",
                                                                        width: "5%"
                                                                    },
                                                                    searchFieldStyle: {
                                                                        marginLeft: "-24px"
                                                                    }
                                                                }}
                                                                onSelectionChange={(rows) =>
                                                                    setselectedMedicen(rows)
                                                                }

                                                            />
                                                        </div>
                                                        :
                                                        <i style={{ fontSize: "26px", marginLeft: "40%", marginTop: "2%" }} className="fas fa-spinner fa-spin"></i>

                                                    }
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div className="g-doc-text-editor mt-2">

                                        <JoditEditor
                                            ref={editor}
                                            value={doctorsNote}
                                            config={config}
                                            tabIndex={1} // tabIndex of textarea
                                            onBlur={(newContent) => setDoctrosNote(newContent)} // preferred to use only this option to update the content for performance reasons
                                            onChange={(newContent) => {
                                                console.log("Data for Text editor", newContent)
                                            }}
                                        />

                                    </div>
                                </div>


                            }
                            {
                                props.element === "pastHistory" &&
                                <PastHistory patient_id={props.patientPropsValue.id} />
                            }
                            {
                                props.element === "obstreaticHistory" &&
                                <ObstreaticHistory patient_id={props.patientPropsValue.id} />
                            }
                            {
                                props.element === "immunisation" &&
                                <Immunisation patient_id={props.patientPropsValue.id} />
                            }
                            <div className="bottom-menu mt-1">
                                <nav>
                                    <ul>
                                        <li onClick={() => {
                                            openProcedureModal()
                                            setnavMenuActiveClass("Diagnosis")
                                        }} className='me-1'> <button>Diagnosis</button> </li>
                                        <li onClick={() => {
                                            openProcedureModal()
                                            setnavMenuActiveClass("Procedure")
                                        }} className='me-1'> <button>Procedure</button> </li>
                                        <li className='me-1'> <button onClick={() => setManageModalIsOpen(true)}>Management</button> </li>

                                        <li onClick={() => {
                                            openProcedureModal()
                                            setnavMenuActiveClass("Reason for Visit")
                                        }} className='me-1'> <button>Reason for Visit</button> </li>
                                        <li onClick={() => {
                                            openProcedureModal()
                                            setnavMenuActiveClass("Review")
                                        }} className='me-1'> <button>Review</button> </li>
                                        <li onClick={() => {
                                            openProcedureModal()
                                            setnavMenuActiveClass("Auto Fill")
                                        }} className='me-1'> <button>Auto Fill</button> </li>

                                        {/* <li className='me-1'> <button>Past Visit </button> </li> */}


                                        <li onClick={() => {
                                            handlePrintPrescription()
                                            setPrescriptionSaveDB(true)
                                        }} className='me-1'> <button>End visit</button> </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>

                        <div className={`g-doc-right-sidebar mt-4 ${showRightSidebar ? "col-3" : "col-1"}`}>
                            <div className="clearfix">
                                {showRightSidebar ?
                                    <>
                                        <span className='ms-1 sidebar-collapse-Icon'><i onClick={() => setShowRightSidebar(!showRightSidebar)} className="fal fa-chevron-circle-right"></i></span>
                                    </>

                                    :
                                    <>
                                        <span className='ms-1 sidebar-collapse-Icon'><i onClick={() => setShowRightSidebar(!showRightSidebar)} className="fal fa-chevron-circle-left"></i></span>
                                    </>
                                }
                            </div>
                            <div className={`${showRightSidebar ? 'g-doc-right-exam g-doc-scroll' : "g-doc-right-exam-hide"} mb-3`}>

                                <Accordion1 defaultActiveKey="1">
                                    <Accordion1.Item eventKey="0">
                                        {
                                            !showRightSidebar ?
                                                <Tooltip title="Today Notes" placement="top">
                                                    <Accordion1.Header onClick={() => setShowRightSidebar(true)}>  <img src={clinic} alt="" className="alergy-head-img me-2" /> </Accordion1.Header>
                                                </Tooltip>
                                                :
                                                <Accordion1.Header><img src={clinic} alt="" className="alergy-head-img me-2" /> Today Notes</Accordion1.Header>

                                        }
                                        <Accordion1.Body >
                                            <input type="text" placeholder='Search' className='form-control form-control-sm mb-2' />
                                            <TreeView className='g-doc-scroll'
                                                aria-label="file system navigator"
                                                defaultCollapseIcon={<ViewInArRoundedIcon />}
                                                defaultExpandIcon={<ViewInArRoundedIcon />}
                                                defaultEndIcon={<InsertDriveFileOutlinedIcon />}
                                                sx={{ height: 400, flexGrow: 1, maxWidth: 400, overflowY: 'auto' }}
                                            >
                                                <StyledTreeItem nodeId="treat240" label="Current Tretment">
                                                    {

                                                        curestPres.length > 0 ?
                                                            curestPres.map((item, i) => {
                                                                return (
                                                                    <StyledTreeItem
                                                                        onClick={() => {
                                                                            axios.get(`get-prescription-details/${item.prescription_name}`).then(res => {
                                                                                setpreDetails(res.data.prescription)
                                                                            })
                                                                            setpreDetailModelShow(true)
                                                                            setdoctorsNotesShow(item.doctors_note)

                                                                        }}
                                                                        key={i} nodeId={`pressItem${item.id}`} label={`press${item.prescription_name}`} />
                                                                )
                                                            }) :

                                                            <StyledTreeItem nodeId="pres28" label="Loding......" />
                                                    }
                                                    <PrescriptionDetails preDetailModelShow={preDetailModelShow} doctorsNotesShow={doctorsNotesShow} setpreDetailModelShow={setpreDetailModelShow} preDetails={preDetails} />

                                                </StyledTreeItem>
                                                <StyledTreeItem nodeId="treat270" label="Past Prescription">

                                                    {
                                                        pastPres.length > 0 ?
                                                            pastPres.map((item, i) => {
                                                                return (
                                                                    <StyledTreeItem
                                                                        onClick={() => {
                                                                            setpreDetailModelShow(true)
                                                                            setdoctorsNotesShow(item.doctors_note)
                                                                            axios.get(`get-prescription-details/${item.prescription_name}`).then(res => {
                                                                                setpreDetails(res.data.prescription)
                                                                            })

                                                                        }}
                                                                        key={i} nodeId={`press${item.id}`} label={`press${item.prescription_name}`} />
                                                                )
                                                            }) :

                                                            <StyledTreeItem nodeId="pres29" label="Loding......" />
                                                    }

                                                    <PrescriptionDetails preDetailModelShow={preDetailModelShow} doctorsNotesShow={doctorsNotesShow} setpreDetailModelShow={setpreDetailModelShow} preDetails={preDetails} />

                                                </StyledTreeItem>
                                            </TreeView>
                                        </Accordion1.Body>
                                    </Accordion1.Item>
                                    <Accordion1.Item eventKey="1">
                                        {
                                            !showRightSidebar ?
                                                <Tooltip title="Clinical Examination" placement="top">
                                                    <Accordion1.Header onClick={() => setShowRightSidebar(true)}>  <img src={notes1} alt="" className="alergy-head-img me-2" /> </Accordion1.Header>
                                                </Tooltip>
                                                :
                                                <Accordion1.Header><img src={notes1} alt="" className="alergy-head-img me-2" /> Clinical Examination</Accordion1.Header>

                                        }
                                        <Accordion1.Body>
                                            <div className=''>
                                                <input type="text" placeholder='Search' className='form-control form-control-sm mb-2' />
                                                <div className="clinical-exam-list">
                                                    <ul>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("General")
                                                        }}><img src={clinic1} alt="" /> General</li>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("Cardiovascular")
                                                        }}><img src={clinic2} alt="" /> Cardiovascular</li>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("Respiratory")
                                                        }}><img src={clinic3} alt="" /> Respiratory</li>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("Gestro Int")
                                                        }}><img src={clinic4} alt="" /> Gestro Int</li>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("CNS")
                                                        }}><img src={clinic5} alt="" /> Cranial Nerves</li>
                                                        <li style={{ cursor: "pointer" }}
                                                            onClick={() => {
                                                                examModalOpen()
                                                                setactiveClassForHistory("Genito Urinary")
                                                            }}
                                                        ><img src={clinic6} alt="" /> Genito Urinary</li>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("ENT")
                                                        }}><img src={clinic7} alt="" /> ENT</li>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("EYE")
                                                        }}><img src={clinic8} alt="" /> EYE</li>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("Skin")
                                                        }}><img src={clinic9} alt="" /> Skin</li>
                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("Masculo Skel")
                                                        }}><img src={clinic10} alt="" /> Musculo Skeletal</li>

                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("Mental Health")
                                                        }}><img src={clinic11} alt="" /> Mental Health</li>


                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("Neurological")
                                                        }}><img src={clinic12} alt="" /> Neurological</li>

                                                        <li style={{ cursor: "pointer" }} onClick={() => {
                                                            examModalOpen()
                                                            setactiveClassForHistory("Women’s Health")
                                                        }}><img src={clinic13} alt="" /> Women’s Health</li>

                                                    </ul>
                                                    <HistoryAndExamination
                                                        setgeneralPropsValue={setgeneralPropsValue}
                                                        setcardivascularPropsValue={setcardivascularPropsValue}
                                                        setactiveClassForHistory={setactiveClassForHistory}
                                                        activeClassForHistory={activeClassForHistory}
                                                        patient_id={props.patientPropsValue.id}
                                                        modalIsOpen={examModalIsOpen}
                                                        closeModal={examModalClose}></HistoryAndExamination>
                                                </div>
                                            </div>
                                        </Accordion1.Body>
                                    </Accordion1.Item>
                                </Accordion1>
                            </div>
                            {/* <div className={`${showRightSidebar ? 'g-doc-right-exam g-doc-scroll' : "g-doc-right-exam-hide"} mb-3`}>

                                <Accordion1 >
                                    
                                </Accordion1>

                            </div> */}
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <div>
                <Modal
                    isOpen={procedureModelShow}
                    onRequestClose={closeProcedurModal}
                    style={customStyles}
                    contentLabel="Example Modal"
                >
                    <span className='float-end' onClick={closeProcedurModal}><i className="fal fa-times digonasisCloseModel"></i></span>
                    {/* <h6 style={{ fontSize: "14px" }}>{navMenuActiveClass}</h6>
                    <hr /> */}
                    <div className='procedure-container mt-2'>
                        <div className="d-flex align-items-start">
                            <div className="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                <button className={`${navMenuActiveClass === "Diagnosis" ? "nav-link active" : "nav-link"}`} id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Diagnosis</button>
                                <button className={`${navMenuActiveClass === "Procedure" ? "nav-link active" : "nav-link"}`} id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Procedure</button>
                                <button className={`${navMenuActiveClass === "Reason for Visit" ? "nav-link active" : "nav-link"}`} id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Reason For Visit</button>
                                <button className={`${navMenuActiveClass === "Review" ? "nav-link active" : "nav-link"}`} id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-autofeel" aria-selected="false">Review</button>
                                <button className={`${navMenuActiveClass === "Auto Fill" ? "nav-link active" : "nav-link"}`} id="v-pills-autofeel-tab" data-bs-toggle="pill" data-bs-target="#v-pills-autofeel" type="button" role="tab" aria-controls="v-pills-autofeel" aria-selected="false">Auto Fill</button>
                            </div>
                            <div className="tab-content w-100" id="v-pills-tabContent" style={{ border: 'none' }}>
                                <div className={`${navMenuActiveClass === "Diagnosis" ? "tab-pane fade show active" : "tab-pane fade"}`} id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">

                                    {/* ----------------------------------------!
          ------------------Diagnosis-------------- 
          -------------------------------------------*/}

                                    <div style={{
                                        display: 'flex',
                                        border: '1px solid rgba(0, 0, 0, 0.2)',
                                        justifyContent: 'space-between',
                                        padding: '5px 5px',
                                        marginTop: '0px',
                                        boxShadow: '1px 1px 2px #d2d2d2',
                                        borderRadius: '5px',
                                        paddingTop: '10px',
                                        background: '#FFFFFF'
                                    }}>
                                        <h6 style={{ fontSize: '14px' }}>Diagnosis</h6>
                                        <img src={diagnosisImg} alt="" style={{ height: '20px', width: '20px' }} />
                                    </div>

                                    <div className='row w-100 diagnosisBoxes'>
                                        <div className='col-md-6'>
                                            <div className='me-2' style={{
                                                border: '1px solid rgba(0, 0, 0, 0.2)',
                                                marginTop: '20px',
                                                padding: '10px',
                                                borderRadius: '5px',
                                                boxShadow: '1px 1px 2px #d2d2d2',
                                                background: '#FFFFFF'
                                            }}>
                                                <div className="row mt-2">
                                                    <div className="col-3">
                                                        <p style={{ paddingTop: '8px' }}>Diagnosis</p>
                                                    </div>
                                                    <div className="col-9">
                                                        <Autocomplete
                                                            disablePortal
                                                            id="combo-box-demo"
                                                            options={diagonis}
                                                            loadingText='loading...'
                                                            size="small"
                                                            name="diagnosis_name"
                                                            getOptionLabel={(option) => option.DiagnosisProcedure_name}
                                                            onChange={(e, value) => { setDiagnosis({ ...diagnosis, diagnosis_name: value.DiagnosisProcedure_name }) }}

                                                            renderInput={(params) => <TextField sx={{ width: "100%", height: 10 }} {...params} label="Diagnosis" />}
                                                        />
                                                    </div>
                                                </div>
                                                <div>
                                                    <input onChange={handleDiagnosisChecbox} type="checkbox" name="diagnosis_provitional_status" checked={diagnosisChecked} />
                                                    <label style={{ marginLeft: '15px', marginTop: '10px' }}>Provitional Diagnosis</label>
                                                </div>
                                                <div className="form-group purple-border">
                                                    <label for="exampleFormControlTextarea4">Further Details</label>
                                                    <textarea onChange={handleDiagnosisInput} value={diagnosis.diagnosis_further_details} name="diagnosis_further_details" id="exampleFormControlTextarea4" rows="3" placeholder='Write here' className='form-control'></textarea>
                                                </div>

                                            </div>
                                        </div>

                                        <div className='col-md-6' style={{
                                            border: 'none',
                                            borderRadius: '5px',
                                            marginTop: '22px',
                                            boxShadow: '1px 1px 2px #d2d2d2',
                                            background: '#FFFFFF'
                                        }}>
                                            <div className='ms-2'>
                                                <div>
                                                    <h6 style={{
                                                        fontSize: "14px",
                                                        marginLeft: '21px',
                                                        lineHeight: '20px'
                                                    }}>List</h6>
                                                    <hr />
                                                </div>
                                                <table className='diagnosis-table'>
                                                    <tr className='diagnosis-table-row diagnosis-head'>
                                                        <th>SL.</th>
                                                        <th>Diagnosis </th>
                                                        <th>Provitional <br /> Diagnosis</th>
                                                        <th>Further Details</th>
                                                        <th>Action</th>
                                                    </tr>


                                                    {diagnosisList.filter((allDiagnosisvalue) => {
                                                        if (diagnosisSearchInput == '') {
                                                            return allDiagnosisvalue;
                                                        }
                                                        else if (allDiagnosisvalue.diagnosis_for_name.toLocaleLowerCase().includes(diagnosisSearchInput) || allDiagnosisvalue.diagnosis_name.toLocaleLowerCase().includes(diagnosisSearchInput)) {
                                                            return allDiagnosisvalue;

                                                        }
                                                    }).map((item, i) => {
                                                        return (
                                                            <tr className='diagnosis-table-row' key={i}>
                                                                <td>{i + 1}</td>
                                                                <td>{item.diagnosis_name}</td>
                                                                <td>{item.diagnosis_provitional_status == 0 ? 'False' : 'True'}</td>
                                                                <td>{item.diagnosis_further_details}</td>
                                                                <td><i className="fa fa-trash" aria-hidden="true" style={{ color: 'red' }}
                                                                    onClick={() => { deleteDiagnnosis(i) }}></i>
                                                                </td>
                                                            </tr>
                                                        )

                                                    })}

                                                </table>
                                            </div>
                                        </div>
                                        <div className='row'>
                                            <div className='col-md-6'>
                                                <button onClick={addDiagnosisList} style={{
                                                    background: '#69B128', color: '#ffffff', border: 'none', borderRadius: '10px', marginTop: '30px', width: '100px', height: '30px', marginLeft: '75%', boxShadow: '1px 1px 2px #d2d2d2'
                                                }}>Add To List</button>
                                            </div>
                                            <div className='col-md-6'>
                                                <div>
                                                    <button onClick={submitDiagnosis} className='float-end ms-3' style={{
                                                        background: '#69B128',
                                                        width: '100px',
                                                        color: '#ffffff',
                                                        height: '30px',
                                                        border: 'none',
                                                        borderRadius: '10px',
                                                        marginTop: '30px',
                                                        boxShadow: '1px 1px 2px #d2d2d2'
                                                    }}>Save</button>
                                                    <button className='float-end' type="button" style={{
                                                        background: '#69B128',
                                                        width: '100px',
                                                        color: '#ffffff',
                                                        height: '30px',
                                                        border: 'none',
                                                        borderRadius: '10px',
                                                        marginTop: '30px',
                                                        boxShadow: '1px 1px 2px #d2d2d2'
                                                    }}
                                                        onClick={resetDiagnosis}
                                                    >
                                                        Reset
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                {/*!!!!!---------------------- Procedure-------------------!!!!! */}

                                <div className={`${navMenuActiveClass == "Procedure" ? "tab-pane fade show active" : "tab-pane fade"}`} id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                    <div style={{
                                        display: 'flex',
                                        border: '1px solid rgba(0, 0, 0, 0.2)',
                                        justifyContent: 'space-between',
                                        padding: '5px 5px',
                                        marginTop: '0px',
                                        boxShadow: '1px 1px 2px #d2d2d2',
                                        borderRadius: '5px',
                                        paddingTop: '10px',
                                        background: '#FFFFFF'
                                    }}>
                                        <h6 style={{ fontSize: '14px' }}>Procedure</h6>
                                        <img src={procedureImg} alt="" style={{ height: '20px', width: '20px' }} />
                                    </div>

                                    <div className='row w-100 mt-2'>
                                        <div className='col-md-5'>
                                            <div className='me-2' style={{
                                                border: '1px solid rgba(0, 0, 0, 0.2)',
                                                padding: '10px',
                                                borderRadius: '5px',
                                                boxShadow: '1px 1px 2px #d2d2d2',
                                                background: '#FFFFFF'
                                            }}>
                                                <div className="row mt-2">
                                                    <div className="col-3">
                                                        <p style={{
                                                            paddingTop: '2px',
                                                            fontSize: '14px'
                                                        }}>Procedure</p>
                                                    </div>
                                                    <div className="col-9">
                                                        <Autocomplete
                                                            disablePortal
                                                            id="combo-box-demo"
                                                            options={procedure}
                                                            loadingText='loading...'
                                                            size="small"
                                                            getOptionLabel={(option) => option.DiagnosisProcedure_name}
                                                            onChange={(e, value) => { setProcedureData({ ...procedureData, procedure_name: value.DiagnosisProcedure_name }) }}

                                                            renderInput={(params) => <TextField sx={{ width: "100%", height: 10 }} {...params} label="Procedure" />}
                                                        />
                                                    </div>
                                                </div>



                                                <div className="form-group purple-border">
                                                    <label for="exampleFormControlTextarea4">Further Details</label>
                                                    <textarea className="form-control" id="exampleFormControlTextarea4" rows="3" placeholder='Write Here' onChange={handleProcedureInput} value={procedureData.procedure_further_details} name="procedure_further_details"></textarea>
                                                </div>

                                            </div>
                                        </div>
                                        <div className='col-md-7' style={{
                                            border: 'none',
                                            borderRadius: '5px',
                                            boxShadow: '1px 1px 2px #d2d2d2',
                                            background: '#FFFFFF'
                                        }}>
                                            <div className='ms-2'>
                                                <div>
                                                    <h6 style={{
                                                        fontSize: "14px",
                                                        marginLeft: '21px',
                                                        lineHeight: '20px'
                                                    }}>List</h6>
                                                    <hr />
                                                </div>

                                                <table className='diagnosis-table' >
                                                    <tbody>
                                                        <tr className='procedure-table-row'>
                                                            <td>SL.</td>
                                                            <td>Procedure</td>
                                                            <td>Further Details</td>
                                                            <td>Action</td>
                                                        </tr>
                                                        {procedureList.filter((allProcedurevalue) => {
                                                            if (procedureSearchInput == '') {
                                                                return allProcedurevalue;
                                                            }
                                                            else if (allProcedurevalue.procedure_name.toLocaleLowerCase().includes(procedureSearchInput) || allProcedurevalue.procedure_for_name.toLocaleLowerCase().includes(procedureSearchInput)) {
                                                                return allProcedurevalue;

                                                            }
                                                        }).map((item, i) => {
                                                            return (
                                                                <tr className='diagnosis-table-row' key={i}>
                                                                    <td>{i + 1}</td>
                                                                    <td>{item.procedure_name}</td>
                                                                    <td>{item.procedure_further_details}</td>
                                                                    <td><i className="fa fa-trash" aria-hidden="true" style={{ color: 'red' }}
                                                                        onClick={() => { deleteProcedure(i) }}></i>
                                                                    </td>
                                                                </tr>


                                                            )

                                                        })}
                                                    </tbody>
                                                </table>

                                            </div>
                                        </div>
                                        <div className='row'>
                                            <div className='col-md-6'>
                                                <button style={{
                                                    background: '#69B128',
                                                    color: '#ffffff',
                                                    border: 'none',
                                                    borderRadius: '10px',
                                                    marginTop: '30px',
                                                    width: '100px',
                                                    height: '30px',
                                                    marginLeft: '75%',
                                                    boxShadow: '1px 1px 2px #d2d2d2'
                                                }} onClick={addProcedureList}>Add To List</button>
                                            </div>
                                            <div className='col-md-6'>
                                                <div>
                                                    <button className='float-end ms-3' onClick={submitProcedure} style={{
                                                        background: '#69B128',
                                                        width: '100px',
                                                        color: '#ffffff',
                                                        height: '30px',
                                                        border: 'none',
                                                        borderRadius: '10px',
                                                        marginTop: '30px',
                                                        boxShadow: '1px 1px 2px #d2d2d2'
                                                    }}>Save</button>
                                                    <button onClick={resetProcedure} className='float-end' type="reset" style={{
                                                        background: '#69B128',
                                                        width: '100px',
                                                        color: '#ffffff',
                                                        height: '30px',
                                                        border: 'none',
                                                        borderRadius: '10px',
                                                        marginTop: '30px',
                                                        boxShadow: '1px 1px 2px #d2d2d2'
                                                    }}
                                                    >
                                                        Reset
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                {/*!!!!!---------------------- Reason For Visit -------------------!!!!! */}

                                <div className={`${navMenuActiveClass === "Reason for Visit" ? "tab-pane fade show active" : "tab-pane fade"}`} id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                    <div style={{
                                        display: 'flex',
                                        border: '1px solid rgba(0, 0, 0, 0.2)',
                                        justifyContent: 'space-between',
                                        padding: '5px 5px',
                                        marginTop: '0px',
                                        boxShadow: '1px 1px 2px #d2d2d2',
                                        borderRadius: '5px',
                                        paddingTop: '10px',
                                        background: '#FFFFFF'
                                    }}>
                                        <h6 style={{ fontSize: '14px' }}>Reason For Visit</h6>
                                        <img src={procedureImg} alt="" style={{ height: '20px', width: '20px' }} />
                                    </div>

                                    <div className='row w-100 mt-2'>
                                        <div className='col-md-5'>
                                            <div className='me-2' style={{
                                                border: '1px solid rgba(0, 0, 0, 0.2)',
                                                padding: '10px',
                                                borderRadius: '5px',
                                                boxShadow: '1px 1px 2px #d2d2d2',
                                                background: '#FFFFFF'
                                            }}>

                                                <div style={{
                                                    display: 'flex',
                                                    justifyContent: 'space-between',
                                                    marginTop: '10px'
                                                }}>
                                                    <p style={{ paddingTop: '10px', textAlign: "left" }}>Reason For Visit</p>
                                                    <div className="diagnosisSelectBox">
                                                        <Autocomplete
                                                            disablePortal
                                                            id="combo-box-demo"
                                                            size="small"
                                                            options={reson}
                                                            value={newValue}
                                                            loadingText='loading...'
                                                            getOptionLabel={(option) => option.DiagnosisProcedure_name}
                                                            onChange={(e, value) => {
                                                                if (value) {
                                                                    setresonForVisitData({ ...resonForVisitData, code: value.DiagnosisProcedure_code, reson_name: value.DiagnosisProcedure_name })

                                                                }
                                                                // setresonForVisitData({ ...resonForVisitData, reson_name: value.DiagnosisProcedure_name })


                                                            }}
                                                            renderInput={(params) => <TextField sx={{ height: 10 }} {...params} label="Reason For Visit" />}
                                                        />
                                                    </div>


                                                    {/* <select onChange={handleResonInput} name="reson_name" value={resonForVisitData.reson_name} className="form-select diagnosisSelectBox">
                                                        <option>Select</option>
                                                        {
                                                            reson.map((item, i) => {
                                                                return (
                                                                    <option key={i} value={item.DiagnosisProcedure_code}>{item.DiagnosisProcedure_name}</option>
                                                                )
                                                            })
                                                        }
                                                    </select> */}
                                                </div>
                                                <div style={{
                                                    display: 'flex',
                                                    justifyContent: 'space-between',
                                                    marginTop: '10px'
                                                }}>
                                                    <p style={{ paddingTop: '10px' }}>Visit Type</p>
                                                    <select onChange={handleResonInput} name="reson_for_name" value={resonForVisitData.reson_for_name} className="form-select diagnosisSelectBox">
                                                        <option>Select</option>
                                                        {
                                                            resonFor.map((item, i) => {
                                                                return (
                                                                    <option key={i} value={item.DiagnosisProcedureFor_name}>{item.DiagnosisProcedureFor_name}</option>
                                                                )
                                                            })
                                                        }
                                                    </select>
                                                </div>
                                                <div className="form-group purple-border">
                                                    <label for="exampleFormControlTextarea4">Further Details</label>
                                                    <textarea className="form-control" id="exampleFormControlTextarea4" rows="3" placeholder='Write Here' name="reson_further_details" value={resonForVisitData.reson_further_details} onChange={handleResonInput}></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div className='col-md-7' style={{
                                            border: 'none',
                                            borderRadius: '5px',
                                            boxShadow: '1px 1px 2px #d2d2d2',
                                            background: '#FFFFFF'
                                        }}>
                                            <div className='ms-2'>
                                                <div>
                                                    <h6 style={{
                                                        fontSize: "14px",
                                                        marginLeft: '21px',
                                                        lineHeight: '20px'
                                                    }}>List</h6>
                                                    <hr />
                                                </div>

                                                <Table bordered responsive >
                                                    <tbody>
                                                        <tr className='procedure-table-row'>
                                                            <td>SL.</td>
                                                            <td>Reason For</td>
                                                            <td>code</td>
                                                            <td>Visit Type</td>
                                                            <td>Further Details</td>
                                                            <td>Action</td>
                                                        </tr>
                                                        {resonList.filter((allResonvalue) => {
                                                            if (diagnosisSearchInput === '') {
                                                                return allResonvalue;
                                                            }
                                                            else if (allResonvalue.reson_name.toLocaleLowerCase().includes(diagnosisSearchInput) || allResonvalue.reson_for_name.toLocaleLowerCase().includes(diagnosisSearchInput)) {
                                                                return allResonvalue;

                                                            }
                                                        }).map((item, i) => {
                                                            return (
                                                                <tr className='diagnosis-table-row' key={i}>
                                                                    <td>{i + 1}</td>
                                                                    <td>{item.reson_name}</td>
                                                                    <td>{item.code}</td>
                                                                    <td>{item.reson_for_name}</td>
                                                                    <td>{item.reson_further_details}</td>
                                                                    <td><i className="fa fa-trash" aria-hidden="true" style={{ color: 'red' }}
                                                                        onClick={() => { deleteReson(i) }}></i>
                                                                    </td>
                                                                </tr>
                                                            )

                                                        })}
                                                    </tbody>
                                                </Table>
                                            </div>
                                        </div>
                                        <div className='row'>
                                            <div className='col-md-6'>
                                                <button onClick={addResonList} style={{
                                                    background: '#69B128',
                                                    color: '#ffffff',
                                                    border: 'none',
                                                    borderRadius: '10px',
                                                    marginTop: '30px',
                                                    width: '100px',
                                                    height: '30px',
                                                    marginLeft: '75%',
                                                    boxShadow: '1px 1px 2px #d2d2d2'
                                                }}>Add To List</button>
                                            </div>
                                            <div className='col-md-6'>
                                                <div>
                                                    <button className='float-end ms-3' onClick={submitReson} style={{
                                                        background: '#69B128',
                                                        width: '100px',
                                                        color: '#ffffff',
                                                        height: '30px',
                                                        border: 'none',
                                                        borderRadius: '10px',
                                                        marginTop: '30px',
                                                        boxShadow: '1px 1px 2px #d2d2d2'
                                                    }}>Save</button>
                                                    <button onClick={resetReson} className='float-end' type="reset" style={{
                                                        background: '#69B128',
                                                        width: '100px',
                                                        color: '#ffffff',
                                                        height: '30px',
                                                        border: 'none',
                                                        borderRadius: '10px',
                                                        marginTop: '30px',
                                                        boxShadow: '1px 1px 2px #d2d2d2'
                                                    }}
                                                    >
                                                        Reset
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                {/* !!!!!!!!!-----------------------Review------------------!!!!!!!!!!!! */}

                                <div className={`${navMenuActiveClass === "Review" ? "tab-pane fade show active" : "tab-pane fade"}`} id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                    <div style={{
                                        display: 'flex',
                                        border: '1px solid rgba(0, 0, 0, 0.2)',
                                        justifyContent: 'space-between',
                                        padding: '5px 5px',
                                        marginTop: '0px',
                                        boxShadow: '1px 1px 2px #d2d2d2',
                                        borderRadius: '5px',
                                        paddingTop: '10px',
                                        background: '#FFFFFF'
                                    }}>
                                        <h6 style={{ fontSize: '14px' }}>Review</h6>
                                        <img src={procedureImg} alt="" style={{ height: '20px', width: '20px' }} />
                                    </div>
                                    <div className='reviewContainer'>
                                        <div className="row">
                                            <div className="col-6">
                                                <div className="row mb-3">
                                                    <label for="colFormLabelSm" className="col-sm-2 col-form-label col-form-label-sm">Review</label>
                                                    <div className="col-sm-10">
                                                        <select className="form-select form-select-sm" name="review_name_id" value={review.review_name_id} onChange={handleReviewInput}>
                                                            <option>Select</option>
                                                            {allReviewName.map((item, i) => {
                                                                return (
                                                                    <option value={item.id} key={i}>{item.review_name}</option>
                                                                )
                                                            })}

                                                        </select>
                                                    </div>
                                                </div>
                                                <div className="row">
                                                    <div className="col-7">
                                                        <div className="row mb-3">
                                                            <label className="col-sm-3 col-form-label col-form-label-sm">Duration</label>
                                                            <div className="col-9">
                                                                <input id="" name="review_limit" type="text" value={review.review_limit} placeholder='Write here' className='form-control form-control-sm' onChange={handleReviewInput} />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div className="col-5">
                                                        <select className="form-select form-select-sm" value={review.review_type} onChange={handleReviewInput} name="review_type">
                                                            <option>Select</option>
                                                            <option value="days">Days</option>
                                                            <option value="weeks">Weeks</option>
                                                            <option value="months">Months</option>
                                                            <option value="years">Years</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div className="col-6">
                                                <div className="row mb-3">
                                                    <label className="col-sm-2 col-form-label col-form-label-sm">On Date</label>
                                                    <div className="col-10">
                                                        <input type="date" name="review_date" className='form-control form-control-sm' value={review.review_date} onChange={handleReviewInput} />
                                                        <input type="checkbox" id="reminderCheckbox" name="reminderStatus" value={reminderStatus} className='me-3 ms-1 mt-2 form-check-input' onChange={handleReminderCheckBox} />
                                                        <label for="1" className='form-check-label ms-4 mt-1'>Send me reminder</label>
                                                    </div>
                                                </div>
                                                <div className="row mb-3">
                                                    <label className="col-sm-2 col-form-label col-form-label-sm">Other</label>
                                                    <div className="col-10">
                                                        <textarea id="" name="review_other" rows="2" value={review.review_other} placeholder='Write here' className='form-control' onChange={handleReviewInput} />
                                                    </div>
                                                </div>
                                            </div>
                                            <div className='review-btn'>
                                                <button className='review-btn-right'>Cancel</button>
                                                <button className='review-btn-left' onClick={submitReview}>Save</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                {/* !!!!!!!!!-----------------------AutoFeel------------------!!!!!!!!!!!! */}
                                <div className={`${navMenuActiveClass === "Auto Fill" ? "tab-pane fade show active" : "tab-pane fade"}`} id="v-pills-autofeel" role="tabpanel" aria-labelledby="v-pills-autofeel-tab">
                                    <div style={{
                                        display: 'flex',
                                        border: '1px solid rgba(0, 0, 0, 0.2)',
                                        justifyContent: 'space-between',
                                        padding: '5px 5px',
                                        marginTop: '0px',
                                        boxShadow: '1px 1px 2px #d2d2d2',
                                        borderRadius: '5px',
                                        paddingTop: '10px',
                                        background: '#FFFFFF'
                                    }}>
                                        <h6 style={{ fontSize: '14px' }}>Auto Fill</h6>
                                        <img src={autoFeelImg} alt="" style={{ height: '20px', width: '20px' }} />
                                    </div>
                                    <div>
                                        <div className='autofeelContainer mt-2'>
                                            <div className='row' >
                                                <div className='col-md-9'>
                                                    <div>
                                                        <div style={{
                                                            display: 'flex',
                                                            justifyContent: 'space-between',
                                                            marginTop: '10px'
                                                        }}>
                                                            <p style={{ paddingTop: '10px' }}>Auto Fill Entries</p>
                                                            <select onChange={handleAutoFillInput} name="auto_fill_id" value={autoFillData.auto_fill_id} className="form-select diagnosisSelectBox">
                                                                <option>Select</option>
                                                                {
                                                                    autoFill.map((item, i) => {
                                                                        return (
                                                                            <option key={i} value={item.id}>{item.autoFill_name}</option>
                                                                        )
                                                                    })
                                                                }
                                                            </select>
                                                        </div>
                                                        <div className="form-group purple-border">
                                                            <label for="exampleFormControlTextarea4">Text</label>
                                                            <div className='autoFeelTextArea'>
                                                                <textarea className="form-control " ref={disabledElement2} id="exampleFormControlTextarea4 disableRef1" rows="3" placeholder='Text' value={autoFillDependent.autofillText} name="autofillText" onChange={handleDisableValueChange} disabled></textarea>
                                                            </div>
                                                        </div>
                                                        <div className="form-group purple-border">
                                                            <label for="exampleFormControlTextarea4">History</label>
                                                            <div className='autoFeelTextArea' style={{ marginTop: '-40px' }}>
                                                                <textarea className="form-control " ref={disabledElement1} id="exampleFormControlTextarea4 disableRef2" rows="3" placeholder='History' value={autoFillDependent.autofillHistory} name="autofillHistory" onChange={handleDisableValueChange} disabled></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div className='col-md-3'>
                                                    <div className='autofeelButton'>
                                                        <button>Add</button> <br />
                                                        <button onClick={editHandleAutoFillChange}>Edit</button> <br />
                                                        <button>Delete</button> <br />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className='autofeelSaveCancelBtn'>
                                        <button className='float-end ms-3'>Cancel</button>
                                        <button className='float-end' onClick={submitAutoFill}>Save</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </Modal>
                <Modal
                    isOpen={manageModalIsOpen}
                    onRequestClose={true}
                    style={customStylesManage}
                    contentLabel="Example Modal"

                >
                    <span className='float-end' style={{ fontSize: "15px", cursor: "pointer" }} onClick={() => setManageModalIsOpen(false)}><i class="fal fa-times"></i></span>
                    <h6 className="card-title">Management</h6>
                    <JoditEditor style={{ height: "100%" }}
                        ref={editor}
                        value={managementNote}
                        config={config}
                        tabIndex={1} // tabIndex of textarea
                        onBlur={(newContent) => setMangementNote(newContent)} // preferred to use only this option to update the content for performance reasons
                        onChange={(newContent) => {
                            console.log("Data for Text editor", newContent)
                        }}

                    />

                    <div className="rx-one-button-group d-flex justify-content-end mt-3">
                        <button onClick={saveMangement} className="btn">Save</button>
                    </div>
                </Modal>
            </div>
        </>
    );
};

export default GreatDocPatientDetail;