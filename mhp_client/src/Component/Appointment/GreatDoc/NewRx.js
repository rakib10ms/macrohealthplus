import React, { useEffect, useState } from 'react';
import './NewRx.css';
import Modal from 'react-modal';
import FilterListIcon from '@mui/icons-material/FilterList';
import mims from '../../../../src/Images/mims.png';
import mhplogo from '../../../../src/Images/MHP.png'
import swal from 'sweetalert';
import { Autocomplete, TextField } from '@mui/material';
import axios from 'axios';
import { toast } from 'react-toastify';
import MimsProductDetails from './MimsProductDetails';
import { SortByAlpha } from '@material-ui/icons';
import { Link } from 'react-router-dom';
import moment from 'moment';

toast.configure();

const NewRx = (props) => {
    const customStyles1 = {
        content: {
            top: '35%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "20%",
            height: "200px",
            background: "#ffffff",
        },
        overlay: { zIndex: 1000 }

    };
    useEffect(() => {
        Modal.setAppElement('body');
    }, []);

    const [modalDuplicateIsOpen, setmodalDuplicateIsOpen] = React.useState(false);
    function openModalDuplicate(e) {
        e.preventDefault();
        setmodalDuplicateIsOpen(true);
    }
    function closeModalDuplicate() {
        setmodalDuplicateIsOpen(false);

    }
    const [generalNote, setGeneralNote] = useState([]);

    useEffect(() => {

        axios.get('dose-name').then(res => {
            setdoseName(res.data.dosesName)
        })

        axios.get('frequency-name').then(res => {
            // setdoseName(res.data.dosesName)
            setfrequencyName(res.data.frequencyName)
        })

        axios.get('others-name').then(res => {
            // setfrequencyName(res.data.frequencyName)
            setothers(res.data.othersName)
        })

        axios.get('food-name').then(res => {
            setfoodName(res.data.foodsName)


        })

        axios.get('route-name').then(res => {
            setRoute(res.data.routesName)

        })

        axios.get('generic-name').then(res => {
            setGenericName(res.data.drugGeneric)
        })
        axios.get(`/general-note`).then(res => {
            console.log("general", res.data.notes)
            if (res.data.status === 200) {
                setGeneralNote(res.data.notes);
            }

        });

    }, []);

    const [reasonForVisit, setreasonForVisit] = useState([])
    const [patientInfo, setpatientInfo] = useState([])
    const [pregnancyOutcome, setpregnancyOutcome] = useState([])

    console.log("lactationUpdate",props.lactationUpdate)

    useEffect(() => {
        if (props.patient_id ) {
            axios.get(`get-great-doc-reson-for-visit/${props.patient_id}`).then(res => {
                console.log("reason", res.data.allReasons)
                setreasonForVisit(res.data.allReasons)
            })
            axios.get(`patient-search-by-id/${props.patient_id}`).then(res => {
                console.log("patients", res.data.patient)
                setpatientInfo(res.data.patient)
            })
            axios.get(`/pregnancy-history/${props.patient_id}`)
            .then(res => {
                setpregnancyOutcome(res.data.pregnancy)
            });
        }

    }, [props.patient_id])

    useEffect(() => {
        if (props.patient_id ) {
            axios.get(`patient-search-by-id/${props.patient_id}`).then(res => {
                console.log("patients lactation 1", res.data.patient)
                setpatientInfo(res.data.patient)
            })
        }
    }, [props.lactationUpdate])
    


    const [doseName, setdoseName] = useState([]);
    const [frequencyName, setfrequencyName] = useState([]);
    const [others, setothers] = useState([]);
    const [Route, setRoute] = useState([]);
    const [foodName, setfoodName] = useState([]);
    const [existingCondition, setExistingCondition] = useState(true)

    const [medicine, setMedicine] = useState({
        drug_name: "",
        generic_name: {
            name: ''
        },
        iSAllergyCheck: false
    });

    const [doseInfo, setDoseInfo] = useState({
        dose: "-",
        frequency: "- ",
        food: "- ",
        others: " -",
        route: "- ",
        is_FVDose: false,
        tabs_inistraction: '',
        Complex_instruction: '',
        extra_instruction: '',
        is_Regulation: false,
        drugsTimeLimit: '',
        prescribedAs: '',
        is_print_brand_name: false,
        is_print_generic_name: false,
        is_urgent_supply: false,
        is_allow_brand_substitution: false,
        general_note: '',
        pbs_listing: '',
        is_save_dose: false,
        quantity: 30,
        repeats: 5,
        condition: '',
        is_condition_status_right: false,
        is_condition_status_left: false,
        is_condition_status_bilateral: false,
        is_condition_status_acute: false,
        is_condition_status_chronic: false,
        is_condition_status_mild: false,
        is_condition_status_moderate: false,
        is_condition_status_severe: false,
        is_add_to_past_history: false,
        is_add_to_reason_for_visit: false,
        is_mark_as_confidential: false,
        further_details: ''

    });

    const handleDoseInfo = (e) => {
        const { name, value } = e.target;
        setDoseInfo({ ...doseInfo, [name]: value });

    }

    const customStyles = {
        content: {
            top: '37%',
            left: '21%',
            right: 'auto',
            bottom: 'auto',
            transform: 'translate(-50%, -50%)',
            width: "80%",
            height: "490px",
            padding: "10px",
            marginLeft: "38%"
        }


    };
    const ingredientStyles = {
        content: {
            top: '35%',
            left: '21%',
            right: 'auto',
            bottom: 'auto',
            transform: 'translate(-50%, -50%)',
            width: "40%",
            height: "250px",
            padding: "10px",
            marginLeft: "38%"
        }


    };
    const customStylesAleart = {
        content: {
            top: '37%',
            left: '22%',
            right: 'auto',
            bottom: 'auto',
            transform: 'translate(-50%, -50%)',
            width: "50%",
            height: "47%",
            // background: "#F3F2EF",
            padding: "10px",
            marginLeft: "38%"
        },

    };
    const [drgsInfo, setdrgsInfo] = useState([
        {
            id: '',
            drug_name: '',
            qty: '',
            rpts: '',
            restriction: '',
            bpp: '',
            tgp: '',
            generic_name: {
                name: ''
            },
            iSAllergyCheck: false
        }
    ]);



    const [GenericName, setGenericName] = useState([]);
    const [reson, setReson] = useState([
        { reson: "Diabetes" },
        { reson: "Diabetes Clinic" },
        { reson: "Diabetes Cycle of care completion" },
        { reson: "Diabetes educator referral" },
    ])
    const [duplicateDrugStateDuplicate, setDuplicateDrugStateDuplicate] = useState(false);
    const [duplicateDrugStateAllergy, setDuplicateDrugStateAllergy] = useState(false);

    const nextForStep2 = (e) => {
        e.preventDefault();
        document.getElementById("v-pills-profile-tab").click();
        closeModalAlert()
    }

    const nextForStep3 = (e) => {
        e.preventDefault();
        document.getElementById("v-pills-messages-tab").click();
    }
    const backForStep2 = (e) => {
        e.preventDefault();
        document.getElementById("v-pills-home-tab").click();
    }
    const nextForStep4 = (e) => {
        e.preventDefault();
        document.getElementById("v-pills-settings-tab").click();
    }
    const backForStep3 = (e) => {
        e.preventDefault();
        document.getElementById("v-pills-profile-tab").click();
    }
    const backForStep4 = (e) => {
        e.preventDefault();
        document.getElementById("v-pills-messages-tab").click();
    }
    const saveDrugsInfo = () => {
        const patient_id = props.patient_id
        const drugData = { medicine, doseInfo, patient_id }
        console.log("drug", drugData)
        axios.post('/save-dugs-details', drugData).then(res => {
            props.setsaveMedicen(res.data.drugs)
            props.closeModal()
            toast.success("Medicien add sucessfully")

        })
    }


    const [mimsData, setmimsData] = useState();
    const [modalIsOpenMimsProduct, setmodalIsOpenMimsProduct] = useState(false)
    const closeModalMimsProduct = () => {
        setmodalIsOpenMimsProduct(false)
        // setmimsData()
    }

    const [mimsPicShow, setmimsPicShow] = useState()
    const closeModelRx = () => {
        props.closeModal()
        setGenericName([])
        setdrgsInfo([])
        setmimsData()
        setmimsPicShow()
        setMedicine(
            {
                drug_name: "",
                generic_name: {
                    name: ''
                },
                iSAllergyCheck: false
            }
        )
    }


    //patients allergy reaction data
    const [reactionTableData, setReactionTableData] = useState([]);
    useEffect(() => {
        if (props.patient_id) {
            axios.get(`/added-reaction/${props.patient_id}`).then(res => setReactionTableData(res.data.reaction));
        }
    }, [props.patient_id])


    const [allsavedMedicen, setallsavedMedicen] = useState([])
    useEffect(() => {
        if (props.patient_id != null) {
            axios.get(`get-pescriped-dugs/${props.patient_id}`).then(res => {
                setallsavedMedicen(res.data.drugs)
            })
        }

    }, [props.patient_id])



    const [mimsAlert, setmimsAlert] = useState(false)
    const [alertmodelShow, setalertmodelShow] = useState(false)

    const [alertboxArray, setalertboxArray] = useState([])
    const handleSelect = (item) => {
        console.log("patientInfo", patientInfo)

        console.log("pregnancyOutcome",moment(pregnancyOutcome[0].finish_date).format(),moment().format())
        console.log("pregnancyOutcome 1",moment(pregnancyOutcome[0].finish_date).format()>moment().format())


        setMedicine(item)
        axios.get(`http://34.87.35.161:5000/generic/${item.guid}`).then(res => {
            setmimsData(res.data.Result.Content.GGPI)
        })
        const newArryAlert = [];


        const mimsNewData = [{ Guid: item.guid }]
        allsavedMedicen.map(mediItem => {
            return (
                mimsNewData.push({ Guid: mediItem.guid })
            )
        })

        var xmlData = `<Request>
                            <Interaction>
                            <Prescribing>
                            ${mimsNewData.map((item) => {
            return (
                `<GGPI reference="{${item.Guid}}"/>`
            )
        }).join('')
            }
                            </Prescribing> 
                            <References/>
                         <HealthIssueCodes>
                            ${reasonForVisit.length > 0 ?
                reasonForVisit.map(item => {
                    return (
                        `<HealthIssueCode code="${item.code}" codeType="ICD10"/>`
                    )
                }).join('') : ''
            }
                            
                                </HealthIssueCodes>
                            </Interaction>
                       </Request>
            `;
        axios.post(`http://34.87.35.161:5000/drugtodrug-rawdata`, xmlData, {
            method: "POST",
            headers: { 'Content-Type': 'text/xml' },
        }).then(res => {
            console.log("mims", res.data)

            res.data.Result.Interaction.GGPI.map((item, i) => {
                // setmimsAlert(false)

                console.log("Route", item.Route, i)

                if (item.Route !== undefined) {
                    if (item.Route.GGPI !== undefined) {
                        console.log("GGPI", item.Route.GGPI, i)
                        // newArryAlert.push({ name: "drugs to drug Interaction!", description: `${item.Route.GGPI[0].Route.ClassInteraction.Interaction.Professional}` })
                       
                       if (Array.isArray(item.Route.GGPI)) {
                        item.Route.GGPI.map(val => {
                            console.log("name", val.name)
                            console.log("Interction", val.Route.ClassInteraction.Interaction.Professional)

                            newArryAlert.push({ name: `Drug interaction (${val.name})`, description: `${val.Route.ClassInteraction.Interaction.Professional}` })
                            setalertmodelShow(true)

                        })
                       }
                       
                    }
                    if (item.Route.HealthIssueCode !== undefined) {
                        console.log("HealthIssueCode", item.Route.HealthIssueCode, i)
                        newArryAlert.push({ name: `Health Condition (${item.Route.HealthIssueCode.name})`, description: `${item.Route.HealthIssueCode.ClassInteraction.Interaction.Abbreviated}` })
                        setalertmodelShow(true)
                    }

                }


            })

        })

        allsavedMedicen.map((items) => {
            if (items.drug_name === item.drug_name) {
                console.log("allsavedMedicen", items.drug_name)
                setModalIsOpenAlert(true);
                setDuplicateDrugStateDuplicate(true)
                newArryAlert.push({ name: "Duplicate Drug Class!", description: `The patient is already taking ${medicine.generic_name.name} , which has an ingredient in the same class as ${medicine.drug_name}` })
            }

        })
        reactionTableData.map((values) => {
            if (values.drug_name === item.drug_name) {
                console.log("reactionTableData", values.drug_name)
                setModalIsOpenAlert(true);
                setDuplicateDrugStateAllergy(true)
                newArryAlert.push({ name: "Allergy!", description: `This patient is noted to be allergic to ${item.drug_name}` })
            }
        })

        
        setalertboxArray(newArryAlert)
        if (newArryAlert.length > 0) {
            setalertmodelShow(true)
        }


        var pMonth = Math.abs(moment(new Date(), 'YYYY/MM/DD').format('M') - moment(patientInfo.patient_dob, 'YYYY/MM/DD').format('M'));
        var pDay = Math.abs(moment(new Date(), 'YYYY/MM/DD').format('D') - moment(patientInfo.patient_dob, 'YYYY/MM/DD').format('D'));
        var pYear = Math.abs(moment(new Date(), 'YYYY/MM/DD').format('YYYY') - moment(patientInfo.patient_dob, 'YYYY/MM/DD').format('YYYY'));

        if (patientInfo.patient_birth_sex.birth_sex_name === "Female" && 15 <= pYear <= 44) {
            //Difference in number of days
            console.log("dob", patientInfo.patient_dob)

            const womensHealth = `<Request>
            <Interaction>
            <Prescribing>
            <GGPI reference="{${item.guid}}">
            </GGPI>
            </Prescribing>
            <HealthIssueCodes>
            ${reasonForVisit.length > 0 ?
                    reasonForVisit.map(item => {
                        return (
                            `<HealthIssueCode code="${item.code}" codeType="ICD10"/>`
                        )
                    }).join('') : ''
                }
            
                </HealthIssueCodes>
            </Interaction>
            <PatientProfile>
            <Gender>F</Gender>
            <Age>
            <Day>${pDay}</Day>
            <Month>${pMonth}</Month>
            <Year>${pYear}</Year>
            </Age>
          
            </PatientProfile>
            </Request>`

            axios.post(`http://34.87.35.161:5000/womens-wocba`, womensHealth, {
                method: "POST",
                headers: { 'Content-Type': 'text/xml' },
            }).then(res => {
                console.log("womens", res.data.Result)
                console.log("womens type", Array.isArray(res.data.Result.Interaction.GGPI.Route))

                if (Array.isArray(res.data.Result.Interaction.GGPI.Route)) {
                    res.data.Result.Interaction.GGPI.Route.map(wom => {
                        console.log("womens arr 1", wom)
                        if (wom.WOCBA !== undefined) {
                            console.log("womens arr 2", wom.WOCBA.Category)
                            wom.WOCBA.Category.map((wom) => {
                                if (wom.Source === "MIMS") {
                                    console.log("womens arr Source", wom.Comment)
                                    newArryAlert.push({ name: `${res.data.Result.Interaction.GGPI.name} [WOMAN OF CHILD BEARING AGE (WOCBA)]`, description: `${wom.Comment}` })
                                    setalertmodelShow(true)
                                }
                            })
                        }
                    })
                } else {

                    if (Array.isArray(res.data.Result.Interaction.GGPI.Route.WOCBA.Category)) {
                        res.data.Result.Interaction.GGPI.Route.WOCBA.Category.map((wom) => {
                            if (wom.Source === "MIMS") {
                                console.log("womens obj arr Source", wom.Comment)
                                newArryAlert.push({ name: `${res.data.Result.Interaction.GGPI.name} [WOMAN OF CHILD BEARING AGE (WOCBA)]`, description: `${wom.Comment}` })
                                setalertmodelShow(true)
                            }
                        })
                    } else {
                        console.log("womens obj", res.data.Result.Interaction.GGPI.Route.WOCBA.Category.Comment)
                        newArryAlert.push({ name: `${res.data.Result.Interaction.GGPI.name} [WOMAN OF CHILD BEARING AGE (WOCBA)]`, description: `${res.data.Result.Interaction.GGPI.Route.WOCBA.Category.Comment}` })
                        setalertmodelShow(true)

                    }

                }



            })
        }

        if (pregnancyOutcome.length > 0 && moment(pregnancyOutcome[0].finish_date).format()>moment().format()) {
            const womensHealth = `<Request>
            <Interaction>
            <Prescribing>
            <GGPI reference="{${item.guid}}">
            </GGPI>
            </Prescribing>
            <HealthIssueCodes>
            ${reasonForVisit.length > 0 ?
                    reasonForVisit.map(item => {
                        return (
                            `<HealthIssueCode code="${item.code}" codeType="ICD10"/>`
                        )
                    }).join('') : ''
                }
            
                </HealthIssueCodes>
            </Interaction>
            <PatientProfile>
            <Gender>F</Gender>
            <Age>
            <Day>${pDay}</Day>
            <Month>${pMonth}</Month>
            <Year>${pYear}</Year>
            </Age>
            <Pregnancy><Week>${pregnancyOutcome[0].scan_weeks}</Week></Pregnancy>
            </PatientProfile>
            </Request>`

            axios.post(`http://34.87.35.161:5000/womens-pregnanecy`, womensHealth, {
                method: "POST",
                headers: { 'Content-Type': 'text/xml' },
            }).then(res => {
                console.log("Pregnancy",res.data.Result)

                if (Array.isArray(res.data.Result.Interaction.GGPI.Route)) {
                    res.data.Result.Interaction.GGPI.Route.map(wom => {
                        console.log("Pregnancy 1", wom)
                        if (wom.Pregnancy !== undefined) {
                            console.log("Pregnancy 2", wom.Pregnancy.Category)
                            wom.Pregnancy.Category.map((wom) => {
                                if (wom.Source === "MIMS") {
                                    console.log("Pregnancy Source", wom.Comment)
                                    newArryAlert.push({ name: `${res.data.Result.Interaction.GGPI.name} [Pregnancy][${wom.Trimester} Trimester]`, description: `${wom.Comment}` })
                                    setalertmodelShow(true)
                                }
                            })
                        }
                    })
                } else {

                    if (Array.isArray(res.data.Result.Interaction.GGPI.Route.Pregnancy.Category)) {
                        res.data.Result.Interaction.GGPI.Route.Pregnancy.Category.map((wom) => {
                            if (wom.Source === "MIMS") {
                                console.log("womens obj arr Source", wom.Comment)
                                newArryAlert.push({ name: `${res.data.Result.Interaction.GGPI.name} [Pregnancy][${wom.Trimester} Trimester]`, description: `${wom.Comment}` })
                                setalertmodelShow(true)
                            }
                        })
                    } else {
                        console.log("womens obj", res.data.Result.Interaction.GGPI.Route.Pregnancy.Category.Comment)
                        newArryAlert.push({ name: `${res.data.Result.Interaction.GGPI.name} [Pregnancy][${res.data.Result.Interaction.GGPI.Route.Pregnancy.Category.Trimester} Trimester]`, description: `${res.data.Result.Interaction.GGPI.Route.WOCBA.Category.Comment}` })
                        setalertmodelShow(true)

                    }

                }
            })
        }
        if(patientInfo.patient_birth_sex.birth_sex_name === "Female" && patientInfo.lactation === 1){
            console.log("patientInfo.lactation",patientInfo.lactation)
        }

    }


    console.log("alertboxArray", alertboxArray)
    const [indexNumber, setindexNumber] = useState(0)
    const [modalIsOpenAlert, setModalIsOpenAlert] = useState(false);
    function closeModalAlert() {
        setModalIsOpenAlert(false)
        setDuplicateDrugStateAllergy(false);
        setDuplicateDrugStateDuplicate(false);

        setindexNumber(0)
        setalertmodelShow(false)
        setalertboxArray([])
    }
    const [selection, setSelection] = useState('genericName');
    const [ingredient, setingredient] = useState([])
    const [ingredientModelShow, setingredientModelShow] = useState(false)


    return (
        <>

            <Modal
                isOpen={props.modalIsOpen}
                onRequestClose={closeModelRx}
                style={customStyles}
                contentLabel="Example Modal"
            >
                <span className='float-end' style={{ fontSize: "15px", cursor: "pointer", marginTop: "-5px" }} onClick={() => closeModelRx()}><i className="fal fa-times"></i></span>
                <h6 style={{ fontSize: "14px" }}>New Rx</h6>
                <hr className='top-hr' />
                <div className="row new-rx-container">
                    <div className="col-1">
                        <div className="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <button className="nav-link mb-2 active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Step 1</button>
                            <button className="nav-link mb-2" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Step 2</button>
                            <button className="nav-link mb-2" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Step 3</button>
                            <button className="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Step 4</button>
                        </div>
                    </div>
                    <div className="col-11">
                        <div className="tab-content" id="v-pills-tabContent">
                            <div className="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                <div className="row">
                                    <div className="col-2">
                                        <div className="rx-bg-white p-1">
                                            <div className="text-center">
                                                <h6>Selection</h6>
                                                <hr />
                                            </div>
                                            <div className="form-check">
                                                <input
                                                    onChange={(e) => {
                                                        axios.get('/drug-name').then(res => {
                                                            setGenericName(res.data.drugs)
                                                            setdrgsInfo(res.data.drugs)
                                                            setmimsData()
                                                            setmimsPicShow()
                                                            setSelection("productName")
                                                            // setdrgsInfo(res.data.drugs)
                                                        })
                                                    }}
                                                    className="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                <label className="form-check-label" for="flexRadioDefault1">
                                                    Product Name
                                                </label>
                                            </div>
                                            <div className="form-check">
                                                <input
                                                    onChange={(e) => {
                                                        axios.get('/drug-name').then(res => {
                                                            setGenericName(res.data.drugs)
                                                            setdrgsInfo(res.data.drugs)
                                                            setmimsData()
                                                            setmimsPicShow()
                                                            setSelection("nonMims")

                                                        })
                                                    }}

                                                    className="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                <label className="form-check-label" for="flexRadioDefault1">
                                                    Non MIMS
                                                </label>
                                            </div>
                                            <div className="form-check">
                                                <input
                                                    onChange={(e) => {

                                                        axios.get('/drugs-of-mims').then(res => {
                                                            setSelection("mims")
                                                            setGenericName(res.data.drugs)
                                                            setdrgsInfo(res.data.drugs)
                                                            setmimsData()
                                                            setmimsPicShow("mims")
                                                        })

                                                    }}
                                                    className="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                <label className="form-check-label" for="flexRadioDefault1">
                                                    MIMS
                                                </label>

                                            </div>
                                            <div className="form-check">
                                                <input
                                                    onChange={(e) => {
                                                        axios.get(`/custom-medicine-for-rx`).then(res => {
                                                            if (res.data.status === 200) {
                                                                console.log("custom", res.data.all_custom_medicine)
                                                                setdrgsInfo(res.data.all_custom_medicine);
                                                            }

                                                        });
                                                        setGenericName([])
                                                        setmimsData()
                                                        setmimsPicShow()
                                                        setSelection("custom")
                                                    }}
                                                    className="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                <label className="form-check-label" for="flexRadioDefault1">
                                                    Custom
                                                </label>
                                            </div>
                                            <div className="form-check">
                                                <input
                                                    onChange={(e) => {
                                                        axios.get('/fav-drug').then(res => {
                                                            setGenericName(res.data.drugs)
                                                            setdrgsInfo(res.data.drugs)
                                                            setmimsData()
                                                            setmimsPicShow()
                                                            setSelection("favourites")
                                                        })

                                                    }}
                                                    className="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                <label className="form-check-label" for="flexRadioDefault1">
                                                    Favourites
                                                </label>
                                            </div>
                                            <div className="form-check">
                                                <input defaultChecked
                                                    onChange={(e) => {
                                                        axios.get('generic-name').then(res => {
                                                            setGenericName(res.data.drugGeneric)
                                                            setdrgsInfo([])
                                                            setmimsData()
                                                            setmimsPicShow()
                                                            setSelection("genericName")
                                                        })
                                                    }}
                                                    className="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
                                                <label className="form-check-label" for="flexRadioDefault1">
                                                    Generic Name
                                                </label>
                                            </div>
                                        </div>
                                        <button onClick={() => {
                                            axios.post(`/fav-dug-update/${medicine.id}`).then(res => {
                                                toast("Favourite medicien add sucessfully")

                                            })

                                        }} className="btn rx-fav-btn mt-3 w-100">Add To Favourite</button>
                                    </div>
                                    <div className="col-8">
                                        <div className="rx-search-container rx-bg-white row p-2">
                                            <div className="col-5">
                                                {
                                                    selection !== "genericName" && selection !== "custom" &&
                                                    <input placeholder='Search Drugs Name'
                                                        onChange={(e) => {
                                                            if (e.target.value) {
                                                                axios.get(`search-drug/${e.target.value}`).then(res => {
                                                                    setdrgsInfo(res.data)
                                                                })
                                                            }else{
                                                                axios.get('/drug-name').then(res => {
                                                                    setdrgsInfo(res.data.drugs)
                                                                })
                                                            }
                                                           
                                                        }}
                                                        type="text" className="form-control form-control-sm mb-2" />
                                                }
                                                {
                                                    selection === "genericName" &&
                                                    <Autocomplete
                                                        disablePortal
                                                        id="combo-box-demo"
                                                        options={GenericName}
                                                        size="small"
                                                        loadingText='loading...'
                                                        getOptionLabel={(option) => option.name || option.drug_name}
                                                        onChange={(e, value) => {

                                                            if (value.name) {
                                                                axios.get(`drugs-by-generic/${value.id}`).then(res => {
                                                                    setdrgsInfo(res.data.drugs)
                                                                })

                                                            }
                                                            else if (value.drug_name) {

                                                                axios.get(`search-drug/${value.drug_name}`).then(res => {
                                                                    setdrgsInfo(res.data)
                                                                })
                                                            }
                                                            else {
                                                                setGenericName([false])
                                                                setdrgsInfo({
                                                                    id: '',
                                                                    drug_name: '',
                                                                    qty: '',
                                                                    rpts: '',
                                                                    restriction: '',
                                                                    bpp: '',
                                                                    tgp: '',
                                                                    name: '',
                                                                    generic_name: {
                                                                        name: ''
                                                                    }
                                                                })

                                                            }
                                                        }
                                                        }

                                                        renderInput={(params) => <TextField sx={{ width: "100%", height: 20 }} {...params} label="Search" />}
                                                    />
                                                }


                                            </div>
                                            <div className="col-7 row">
                                                <div className="col-6">
                                                    <div className="btn-group">
                                                        <button className="btn rx-fav-btn btn-sm dropdown-toggle w-100" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                                            <FilterListIcon />  Sort By
                                                        </button>
                                                        <ul className="dropdown-menu">
                                                            <li onClick={() => {
                                                                axios.get(`/search-drug-asc/Asc`).then(res => setdrgsInfo(res.data))
                                                            }} className='p-1 rx-sort-list'>
                                                                <i className="fas fa-sort-amount-up-alt me-1"></i> Sort by Ascending
                                                            </li>
                                                            <hr />
                                                            <li onClick={() => {
                                                                axios.get(`/search-drug-asc/Desc`).then(res => setdrgsInfo(res.data))
                                                            }} className='p-1 rx-sort-list'>
                                                                <i className="fas fa-sort-amount-down me-1"></i> Sort by Decending
                                                            </li>

                                                        </ul>
                                                    </div>
                                                </div>
                                                <div className="col-6">
                                                    <Link to="/add-custom-medicine">
                                                        <button className="btn rx-fav-btn w-100">Drug Combination</button>
                                                    </Link>
                                                </div>
                                            </div>
                                        </div>
                                        {
                                            selection !== 'custom' ?
                                                <div className="rx-bg-white  p-2 mt-1">
                                                    <div className="formulation-header row">
                                                        <div className="col-7">
                                                            <h6>Available Formulation</h6>
                                                        </div>
                                                        <div className="col-5">
                                                            <input placeholder='Search'
                                                                onChange={(e) => {
                                                                    if (e.target.value) {
                                                                        axios.get(`search-drug/${e.target.value}`).then(res => {
                                                                            setdrgsInfo(res.data)
                                                                        })
                                                                    }else{
                                                                        axios.get('/drug-name').then(res => {
                                                                            setdrgsInfo(res.data.drugs)
                                                                            
                                                                        })
                                                                    }
                                                                   
                                                                }}
                                                                type="text" className="form-control form-control-sm mb-2" />
                                                        </div>
                                                    </div>
                                                    <div className="formulation-table g-doc-scroll">
                                                        <table className="">
                                                            <tbody>
                                                                <tr className='rx-table-first-row'>
                                                                    <td width="60%">Product Name</td>
                                                                    <td>Qty.</td>
                                                                    <td>RPTS</td>
                                                                    {/* <td>Restriction</td> */}
                                                                    <td>BPP</td>
                                                                    <td>TGP/SPC</td>
                                                                    {/* <td>Generic Name</td> */}
                                                                </tr>
                                                                {
                                                                    drgsInfo.length > 0 ?
                                                                        drgsInfo.map((item, i) =>
                                                                            <tr key={i} onClick={
                                                                                () => {


                                                                                    handleSelect(item)
                                                                                }
                                                                            } className={`${medicine.id === item.id ? "rx-table-active" : ""}`}>
                                                                                <td>{item.drug_name}</td>
                                                                                <td>{item.qty}</td>
                                                                                <td>{item.rpts}</td>
                                                                                {/* <td>{item.restriction}</td> */}
                                                                                <td>{item.bpp}</td>
                                                                                <td>{item.tgp}</td>
                                                                                {/* <td>{item.generic_name.name}</td> */}
                                                                            </tr>
                                                                        )
                                                                        :
                                                                        <tr>
                                                                            <td> <i style={{ fontSize: "26px", marginLeft: "10%", marginTop: "10%" }} class="fas fa-spinner fa-spin"></i></td>
                                                                        </tr>

                                                                }

                                                            </tbody>
                                                        </table>
                                                    </div>

                                                    {/* <Modal
                                            isOpen={modalDuplicateIsOpen}
                                            style={customStyles1}
                                            onRequestClose={closeModalDuplicate}
                                            contentLabel="Example Modal"
                                        >
                                            <h3>Duplicate Drug Selectted</h3>
                                        </Modal> */}
                                                </div>
                                                :

                                                <div className="rx-bg-white  p-2 mt-1">
                                                    <div className="formulation-header row">
                                                        <div className="col-7">
                                                            <h6>Custom Formulation</h6>
                                                        </div>
                                                        <div className="col-5">
                                                            <input placeholder='Search'
                                                                onChange={(e) => {
                                                                    axios.get(`custom-medicine-search/${e.target.value}`).then(res => {
                                                                        setdrgsInfo(res.data.all_custom_medicine)
                                                                    })
                                                                }}
                                                                type="text" className="form-control form-control-sm mb-2" />
                                                        </div>
                                                    </div>
                                                    <div className="formulation-table g-doc-scroll">
                                                        <table className="">
                                                            <tbody>
                                                                <tr className='rx-table-first-row'>
                                                                    <td width="40%">Product Name</td>
                                                                    <td width="8%">Qty.</td>
                                                                    <td>strength</td>
                                                                    <td>other_details</td>
                                                                    <td style={{ textAlign: "center" }}>Ingredient</td>
                                                                </tr>
                                                                {
                                                                    drgsInfo.length > 0 ?
                                                                        drgsInfo.map((item, i) =>
                                                                            <tr key={i} onClick={
                                                                                () => {
                                                                                    setMedicine({
                                                                                        id: item.id,
                                                                                        drug_name: item.custom_medicine_name,
                                                                                        guid: "",
                                                                                        generic_name: {
                                                                                            name: ""
                                                                                        },
                                                                                    })


                                                                                }
                                                                            } className={`${medicine.id === item.id ? "rx-table-active" : ""}`}>
                                                                                <td>{item.custom_medicine_name}</td>
                                                                                <td>{item.qty}</td>
                                                                                <td>{item.strength}</td>

                                                                                <td>{item.other_details}</td>
                                                                                <td
                                                                                    onClick={() => {
                                                                                        axios.get(`/find-ingredient/${item.id}`).then(res => {
                                                                                            console.log("ingre", res.data.medicine_ingredient)
                                                                                            setingredient(res.data.medicine_ingredient)
                                                                                            setingredientModelShow(true)
                                                                                        })
                                                                                    }}
                                                                                    style={{ textAlign: "center" }}><i class="fas fa-info-circle"></i></td>

                                                                            </tr>
                                                                        )
                                                                        :
                                                                        <tr>
                                                                            <td> <i style={{ fontSize: "26px", marginLeft: "10%", marginTop: "10%" }} class="fas fa-spinner fa-spin"></i></td>
                                                                        </tr>

                                                                }

                                                            </tbody>
                                                        </table>
                                                    </div>
                                                    <Modal
                                                        isOpen={ingredientModelShow}
                                                        onRequestClose={ingredientModelShow}
                                                        style={ingredientStyles}
                                                    >

                                                        <span className='float-end' style={{ fontSize: "15px", cursor: "pointer", marginTop: "-5px" }} onClick={() => setingredientModelShow(false)}><i className="fal fa-times"></i></span>
                                                        <h6 style={{ fontSize: "14px" }}>Ingredient Details</h6>
                                                        <hr className='top-hr' />
                                                        <div className="formulation-table g-doc-scroll">
                                                            <table className="">
                                                                <tbody>
                                                                    <tr className='rx-table-first-row'>
                                                                        <td width="60%">Ingredient name</td>
                                                                        <td >unit</td>
                                                                        <td>strength</td>
                                                                    </tr>
                                                                    {
                                                                        ingredient.length > 0 ?
                                                                            ingredient.map((item, i) =>
                                                                                <tr key={i} className={`${medicine.id === item.id ? "rx-table-active" : ""}`}>
                                                                                    <td>{item.mhp_ingredient !== null && item.mhp_ingredient.ingredient_name}</td>
                                                                                    <td>{item.ingredient_unit}</td>
                                                                                    <td>{item.ingredient_strength}</td>



                                                                                </tr>
                                                                            )
                                                                            :
                                                                            <tr>
                                                                                <td> <i style={{ fontSize: "26px", marginLeft: "10%", marginTop: "10%" }} class="fas fa-spinner fa-spin"></i></td>
                                                                            </tr>

                                                                    }

                                                                </tbody>
                                                            </table>
                                                        </div>

                                                    </Modal>
                                                </div>
                                        }


                                        <div className="rx-bg-white p-2 mt-1">
                                            <div className="rx-medicine-detail-header">
                                                <h6>Product Details</h6>
                                                <hr />
                                            </div>
                                            {
                                                mimsData != null &&
                                                <div className="rx-medicine-detail g-doc-scroll">

                                                    <h6 style={{ fontWeight: "bold" }}>{mimsData.name}</h6>
                                                    <p>Generic Name : {medicine.generic_name?.name}</p>
                                                    <p>Schedule : </p>
                                                    <p>PBS Listing : </p>
                                                    <p>Notes : </p>
                                                    {/* <div dangerouslySetInnerHTML={{__html: mimsData.MONOGRAPH.GACTION}} >
                                              
                                            </div> */}
                                                </div>
                                            }

                                            {/* <div className="rx-medicine-detail g-doc-scroll">
                                            <h6>{medicine.drug_name}</h6>
                                            <p>Description : {medicine.drug_description}</p>
                                            <p>Restriction : {medicine.restriction}</p>
                                        </div> */}
                                        </div>
                                        <div className="rx-one-button-group mt-1">
                                            <div className="row">
                                                <div className="col-5">
                                                    <div className="form-check">
                                                        <input onChange={e => setMedicine({ ...medicine, iSAllergyCheck: !medicine.iSAllergyCheck })} className="form-check-input" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Allergy/Drug reaction has been checked
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-7">
                                                    <button onClick={() => closeModelRx()} className="btn float-end">Cancel</button>
                                                    {
                                                        medicine.drug_name !== "" ?
                                                            <button onClick={nextForStep2} className="btn float-end me-2">Next <i className="fas fa-angle-right ms-2"></i></button>
                                                            :
                                                            <button onClick={() => { swal("Please select a medicine!", "", "info") }} className="btn float-end me-2">Next <i className="fas fa-angle-right ms-2"></i></button>
                                                    }

                                                    <button className="btn float-end me-2"><i className="fas fa-angle-left me-2"></i>Back</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-2 rx-first-step-right">
                                        <div className="rx-bg-white mb-2">
                                            <button onClick={() => {
                                                axios.get('/drugs-of-mims').then(res => {
                                                    setSelection("mims")
                                                    setGenericName(res.data.drugs)
                                                    setdrgsInfo(res.data.drugs)
                                                    setmimsData()
                                                    setmimsPicShow("mims")
                                                })
                                            }} className="btn btn-sm w-100">Same drug class</button>
                                        </div>
                                        <div className="rx-bg-white mb-2">
                                            <button onClick={() => {
                                                axios.get('generic-name').then(res => {
                                                    setGenericName(res.data.drugGeneric)
                                                    setdrgsInfo([])
                                                    setmimsData()
                                                    setmimsPicShow()
                                                    setSelection("genericName")
                                                })
                                            }} className="btn btn-sm w-100">Equivalent product</button>
                                        </div>
                                        <div className="rx-bg-white mb-2">
                                            <button onClick={() => setmodalIsOpenMimsProduct(true)} className="btn btn-sm w-100">Product information</button>
                                            <MimsProductDetails modalIsOpenMimsProduct={modalIsOpenMimsProduct} mimsData={mimsData} closeModalMimsProduct={closeModalMimsProduct}></MimsProductDetails>
                                        </div>
                                        {/* <div className="rx-bg-white mb-2">
                                            <button className="btn btn-sm w-100">Allergies/Reactions</button>
                                        </div> */}
                                        <div className="rx-bg-white mb-2">
                                            <button id='mimsProductInfo' onClick={() => setmodalIsOpenMimsProduct(true)} className="btn btn-sm w-100">MIMS</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                <div className="row">
                                    <div className="col-3">
                                        <div className="rx-bg-white p-2">
                                            <div className="step2-img text-center">
                                                <img src={mimsPicShow != null ? mims : mhplogo} alt="" className='img-fluid m-1' />
                                            </div>
                                            <label >Dose</label>
                                            <select onChange={handleDoseInfo} name="dose" className="form-select form-select-sm mb-1" aria-label=".form-select-sm example">
                                                <option defaultValue="Select">Select</option>
                                                {
                                                    doseName.length > 0 &&
                                                    doseName.map((item, i) => {
                                                        return (
                                                            <option key={i} value={item.dose_name}>{item.dose_name}</option>
                                                        )
                                                    })
                                                }

                                            </select>
                                            <label >Frequency</label>
                                            <select onChange={handleDoseInfo} name="frequency" className="form-select form-select-sm mb-1" aria-label=".form-select-sm example">
                                                <option defaultValue="Select">Select</option>
                                                {
                                                    frequencyName.length > 0 &&
                                                    frequencyName.map((item, i) => {
                                                        return (
                                                            <option key={i} value={item.frequency_name}>{item.frequency_name}</option>
                                                        )
                                                    })
                                                }


                                            </select>
                                            <label >Food</label>
                                            <select onChange={handleDoseInfo} name="food" className="form-select form-select-sm mb-1" aria-label=".form-select-sm example">
                                                <option defaultValue="Select">Select</option>
                                                {
                                                    foodName.length > 0 &&
                                                    foodName.map((item, i) => {
                                                        return (
                                                            <option key={i} value={item.food_name}>{item.food_name}</option>
                                                        )
                                                    })
                                                }


                                            </select>
                                            <label >Others</label>
                                            <select onChange={handleDoseInfo} name="others" className="form-select form-select-sm mb-1" aria-label=".form-select-sm example">
                                                <option defaultValue="Select">Select</option>
                                                {
                                                    others.length > 0 &&
                                                    others.map((item, i) => {
                                                        return (
                                                            <option key={i} value={item.others_name}>{item.others_name}</option>

                                                        )
                                                    })
                                                }

                                            </select>
                                            <label >Route</label>
                                            <select onChange={handleDoseInfo} name="route" className="form-select form-select-sm mb-1" aria-label=".form-select-sm example">
                                                <option defaultValue="Select">Select</option>
                                                {
                                                    Route.length > 0 &&
                                                    Route.map((item, i) => {
                                                        return (
                                                            <option key={i} value={item.route_name}>{item.route_name}</option>
                                                        )
                                                    })
                                                }



                                            </select>
                                        </div>
                                    </div>
                                    <div className="col-7">
                                        <div className="rx-bg-white">
                                            <div className="rx-about-medicine g-doc-scroll p-1">
                                                <h6>About Medicine</h6>
                                                <hr />
                                                {/* <h6>MIMS Abbreviated Product Listing</h6> */}
                                                <p>{medicine.drug_name}</p>
                                                {/* <p>Generic Ingredients: {medicine.generic_name.name}</p> */}
                                                {/* <p>Company Aspen Pharmacare Australia Pty. Ltd</p> */}
                                            </div>
                                        </div>
                                        <div className="rx-bg-white mt-1">
                                            <div className="dose-detail row ms-1">

                                                <div className="col-2 p-2">
                                                    <p>Dose</p>
                                                    <p>Frequency</p>
                                                    <p>Food</p>

                                                </div>
                                                <div className="col-4 p-1">
                                                    <p className='dose-name'>{doseInfo.dose}</p>
                                                    <p className='dose-name'>{doseInfo.frequency}</p>
                                                    <p className='dose-name'>{doseInfo.food}</p>

                                                </div>
                                                <div className="col-2 p-2">
                                                    <p>Others</p>
                                                    <p>Route</p>
                                                </div>
                                                <div className="col-4 p-1">
                                                    <p className='dose-name'>{doseInfo.others}</p>
                                                    <p className='dose-name'>{doseInfo.route}</p>
                                                    <div >
                                                        <input className="form-check-input fvdInput" checked={doseInfo.is_FVDose} type="checkbox"
                                                            onChange={e => setDoseInfo({ ...doseInfo, is_FVDose: !doseInfo.is_FVDose })} id="flexCheckDefault" />
                                                        <label className="form-check-label mt-2 ml-1" for="flexCheckDefault">
                                                            Favourite Dose
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div className="rx-s2-radio-group rx-bg-white mt-1">
                                            <div className="row ms-1">
                                                <div className="col-4">
                                                    <div className="form-check">
                                                        <input name='tabs_inistraction' onChange={handleDoseInfo} className="form-check-input" value="Number of tabs per day" type="radio" id="flexRadioDefault1" />
                                                        <label className="form-check-label" for="flexRadioDefault1">
                                                            Number of tabs per day
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-4">
                                                    <div className="form-check">
                                                        <input name='tabs_inistraction' onChange={handleDoseInfo} className="form-check-input" value="Compliance checking" type="radio" id="flexRadioDefault1" />
                                                        <label className="form-check-label" for="flexRadioDefault1">
                                                            Compliance checking
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-4">
                                                    <div className="form-check">
                                                        <input name='tabs_inistraction' onChange={handleDoseInfo} className="form-check-input" value="No complance checking" type="radio" id="flexRadioDefault1" />
                                                        <label className="form-check-label" for="flexRadioDefault1">
                                                            No complance checking
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div className="instruction rx-bg-white mt-1 p-1">
                                            <h6>Complex Instruction</h6>
                                            <hr />
                                            <input onChange={e => setDoseInfo({ ...doseInfo, Complex_instruction: e.target.value })} type="text" className="form-control form-control-sm" />
                                        </div>
                                        <div className="instruction rx-bg-white mt-1 p-1">
                                            <h6>Extra Instruction</h6>
                                            <hr />
                                            <input onChange={e => setDoseInfo({ ...doseInfo, extra_instruction: e.target.value })} type="text" className="form-control form-control-sm" />
                                        </div>
                                        <div className="rx-one-button-group mt-1">
                                            <div className="row">
                                                <div className="col-7">
                                                    <div className="form-check">
                                                        <input className="form-check-input" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Save this dose as the default for this  preparation
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-5">
                                                    <button onClick={props.closeModal} className="btn float-end">Cancel</button>
                                                    {
                                                        doseInfo.dose !== '-' ?
                                                            <button onClick={nextForStep3} className="btn float-end me-2">Next <i className="fas fa-angle-right ms-2"></i></button>
                                                            : <button onClick={() => { swal("Please select dose!", "", "info") }} className="btn float-end me-2">Next <i className="fas fa-angle-right ms-2"></i></button>
                                                    }

                                                    <button onClick={backForStep2} className="btn float-end me-2"><i className="fas fa-angle-left me-2"></i>Back</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-2">
                                        <div className="rx-bg-white mb-2">
                                            <button className="btn btn-sm w-100 disabled">Dose Calculator</button>
                                        </div>
                                        <div className="rx-bg-white mb-2">
                                            <button onClick={() => setmodalIsOpenMimsProduct(true)} className="btn btn-sm w-100">Product Information</button>
                                        </div>
                                        <div className="rx-bg-white mb-2">
                                            <button className="btn btn-sm w-100 disabled">CMI</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <div className="row">
                                    <div className="col-10">
                                        <div className="rx-bg-white">
                                            <div className="formulation-table g-doc-scroll">
                                                <table className="table table-borderless ">
                                                    <tbody>
                                                        <tr className='rx-table-first-row'>
                                                            <td>Qty.</td>
                                                            <td>RPTS</td>
                                                            <td>Restriction</td>
                                                            <td>BPP</td>
                                                            <td>TGP/SPC</td>
                                                        </tr>
                                                        {
                                                            drgsInfo.length > 0 &&
                                                            drgsInfo.map((item, i) =>
                                                                <tr key={i} onClick={() => setMedicine(item)} className={`${medicine.id === item.id ? "rx-table-active" : ""}`}>
                                                                    <td>{item.qty}</td>
                                                                    <td>{item.rpts}</td>
                                                                    <td>{item.restriction}</td>
                                                                    <td>{item.bpp}</td>
                                                                    <td>{item.tgp}</td>
                                                                </tr>
                                                            )
                                                        }
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div className="row mt-2">
                                            <div className="col-8 rx-step3-info">
                                                <div className="rx-bg-white">
                                                    <div className="row">
                                                        <div className="col-4">
                                                            <label className='rx-label'>Quantity</label>
                                                            <input onChange={e => setDoseInfo({ ...doseInfo, quantity: e.target.value })} defaultValue={doseInfo.quantity} className="form-control form-control-sm ms-1" type="text" />

                                                        </div>
                                                        <div className="col-4">
                                                            <label className='rx-label'>Repeats</label>
                                                            <input onChange={e => setDoseInfo({ ...doseInfo, repeats: e.target.value })} defaultValue={doseInfo.repeats} className="form-control form-control-sm ms-1" type="text" aria-label=".form-control-sm example" />

                                                        </div>
                                                        <div className="col-4">
                                                            <div className="form-check rx-regulation ms-2">
                                                                <input onChange={e => setDoseInfo({ ...doseInfo, is_Regulation: !doseInfo.is_Regulation })} className="form-check-input" type="checkbox" id="flexCheckDefault" />
                                                                <label className="form-check-label" for="flexCheckDefault">
                                                                    Ragulation 24
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div className='row'>
                                                            <div className="col-8">
                                                                <div className="form-check form-check-inline ms-1">
                                                                    <input onChange={e => setDoseInfo({ ...doseInfo, drugsTimeLimit: "Long term medication" })} className="form-check-input mt-1" type="radio" name="dose" id="flexCheckDefault" />
                                                                    <label className="form-check-label" for="flexCheckDefault">
                                                                        Long term medication
                                                                    </label>
                                                                </div>
                                                                <div className="form-check form-check-inline">
                                                                    <input onChange={e => setDoseInfo({ ...doseInfo, drugsTimeLimit: "One time only" })} className="form-check-input mt-1" type="radio" name="dose" id="flexCheckDefault" />
                                                                    <label className="form-check-label" for="flexCheckDefault">
                                                                        One time only
                                                                    </label>
                                                                </div>
                                                                <div>
                                                                    <select onChange={e => setDoseInfo({ ...doseInfo, general_note: e.target.value })} className="form-select form-select-sm m-1 mb-1" aria-label=".form-select-sm example">
                                                                        <option value="General Note">General Note</option>
                                                                        {generalNote.length > 0 &&
                                                                            generalNote.map((item, i) => {
                                                                                return (
                                                                                    <option key={i} value={item.name}>{item.name}</option>

                                                                                )
                                                                            })
                                                                        }

                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div className="col-4">
                                                                <div className='ms-3 mt-2'>
                                                                    <label className='rx-label'>Prescribed as</label>
                                                                </div>
                                                                {/* <div className="form-check  form-check-inline ms-2">
                                                                <input className="form-check-input mt-1" type="radio" onChange={e => setDoseInfo({ ...doseInfo, prescribedAs: e.target.value })} value="PBS" name="prescribedAs" id="flexCheckDefault" />
                                                                <label className="form-check-label" for="flexCheckDefault">
                                                                    PBS
                                                                </label>
                                                            </div> */}
                                                                <div className="form-check  form-check-inline">
                                                                    <input className="form-check-input mt-1" type="radio" name="prescribedAs" onChange={e => setDoseInfo({ ...doseInfo, prescribedAs: e.target.value })} value="Private" id="flexCheckDefault" />
                                                                    <label className="form-check-label" for="flexCheckDefault">
                                                                        Private
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>
                                            <div className="col-4">
                                                <div className="rx-bg-white rx-s3-checkgroup ps-1">
                                                    <div className="form-check">
                                                        <input className="form-check-input" type="checkbox" onChange={e => setDoseInfo({ ...doseInfo, is_print_brand_name: !doseInfo.is_print_brand_name })} id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Print brand name on scripts
                                                        </label>
                                                    </div>
                                                    <div className="form-check">
                                                        <input className="form-check-input" type="checkbox" onChange={e => setDoseInfo({ ...doseInfo, is_print_generic_name: !doseInfo.is_print_generic_name })} id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Print generic name on scripts
                                                        </label>
                                                    </div>
                                                    <div className="form-check">
                                                        <input className="form-check-input" onChange={e => setDoseInfo({ ...doseInfo, is_urgent_supply: !doseInfo.is_urgent_supply })} type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Urgent supply (own script)
                                                        </label>
                                                    </div>
                                                    <div className="form-check">
                                                        <input className="form-check-input" onChange={e => setDoseInfo({ ...doseInfo, is_allow_brand_substitution: !doseInfo.is_allow_brand_substitution })} type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Allow brand substitution
                                                        </label>
                                                    </div>
                                                    {/* <div className="form-check">
                                                    <input className="form-check-input" type="checkbox"  id="flexCheckDefault" />
                                                    <label className="form-check-label" for="flexCheckDefault">
                                                        Brand substitution not allowed
                                                    </label>
                                                </div> */}
                                                </div>

                                            </div>
                                        </div>
                                        {/* <div className="rx-s3-text-area">
                                        <h6>PBS Listing</h6>
                                        <div className="rx-bg-white">
                                            <div class="form-floating">
                                                <textarea onChange={e => setDoseInfo({ ...doseInfo, pbs_listing: e.target.value })} class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style={{ height: "80px" }}></textarea>
                                                <label for="floatingTextarea2">PBS/RPBS General benefit</label>
                                            </div>
                                        </div>
                                    </div> */}
                                        <div className="rx-one-button-group mt-2">
                                            <div className="row">
                                                <div className="col-7">
                                                    <div className="form-check">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_save_dose: !doseInfo.is_save_dose })} className="form-check-input" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Save this dose as the default for this  preparation
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-5">
                                                    <button onClick={props.closeModal} className="btn float-end">Cancel</button>
                                                    <button onClick={nextForStep4} className="btn float-end me-2">Next <i className="fas fa-angle-right ms-2"></i></button>
                                                    <button onClick={backForStep3} className="btn float-end me-2"><i className="fas fa-angle-left me-2"></i>Back</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="col-2">
                                        <div className="rx-bg-white mb-2">
                                            <button onClick={() => setmodalIsOpenMimsProduct(true)} className="btn btn-sm w-100">Product Information</button>
                                        </div>
                                        <div className="rx-bg-white mb-2">
                                            <button className="btn btn-sm w-100">CMI</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div className="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                <div className="row">
                                    <div className="col-6">
                                        <div className="rx-bg-white d-flex ">
                                            <div className="form-check ms-2 me-5">
                                                <input className="form-check-input" onChange={() => setExistingCondition(!existingCondition)} type="radio" name="condition" id="flexRadioDefault1" defaultChecked />
                                                <label className="form-check-label" for="flexRadioDefault1">
                                                    Existing condition
                                                </label>
                                            </div>
                                            <div className="form-check ms-5">
                                                <input className="form-check-input" onChange={() => setExistingCondition(!existingCondition)} type="radio" name="condition" id="flexRadioDefault1" />
                                                <label className="form-check-label" for="flexRadioDefault1">
                                                    New condition
                                                </label>
                                            </div>
                                        </div>
                                        <div className=" mt-2  p-1">
                                            <h6>Reson</h6>
                                            {
                                                existingCondition ?
                                                    <>

                                                        <Autocomplete
                                                            disablePortal
                                                            id="combo-box-demo"
                                                            options={props.reson}
                                                            size="small"

                                                            getOptionLabel={(option) => option.DiagnosisProcedure_name}
                                                            onChange={
                                                                (e, value) => {
                                                                    setDoseInfo({ ...doseInfo, condition: value.DiagnosisProcedure_name })
                                                                }
                                                            }

                                                            renderInput={(params) => <TextField sx={{ width: "100%", height: 20 }} {...params} label="Existing condition" />}
                                                        />
                                                    </>
                                                    :
                                                    <div class="form-floating">
                                                        <textarea onChange={e => setDoseInfo({ ...doseInfo, condition: e.target.value })} class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style={{ height: "100px" }}></textarea>
                                                        <label for="floatingTextarea2">Write here</label>
                                                    </div>
                                            }

                                        </div>
                                    </div>
                                    <div className="col-6">
                                        <div className="rx-bg-white p-2">
                                            <div className="row ms-1">
                                                <div className="col-4">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_condition_status_right: !doseInfo.is_condition_status_right })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Right
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-4">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_condition_status_left: !doseInfo.is_condition_status_left })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            left
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-4">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_condition_status_bilateral: !doseInfo.is_condition_status_bilateral })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Bilateral
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div className='ms-1 row'>
                                                <div className="col-4">
                                                    <div className="form-check form-check-inline ">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_condition_status_acute: !doseInfo.is_condition_status_acute })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Acute
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-4">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_condition_status_chronic: !doseInfo.is_condition_status_chronic })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Chronic
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-4">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_condition_status_mild: !doseInfo.is_condition_status_mild })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Mild
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div className='row ms-1'>

                                                <div className="col-4">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_condition_status_moderate: !doseInfo.is_condition_status_moderate })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Moderate
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-4">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_condition_status_severe: !doseInfo.is_condition_status_severe })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Severe
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                        <div className="rx-bg-white rx-checkbox-group  p-2 mt-2">
                                            <div className="row ms-1">
                                                <div className="col-6">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_add_to_past_history: !doseInfo.is_add_to_past_history })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Add to past history
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-6">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_add_to_reason_for_visit: !doseInfo.is_add_to_reason_for_visit })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Add to reason for visit
                                                        </label>
                                                    </div>
                                                </div>
                                                <div className="col-6">
                                                    <div className="form-check form-check-inline">
                                                        <input onChange={e => setDoseInfo({ ...doseInfo, is_mark_as_confidential: !doseInfo.is_mark_as_confidential })} className="form-check-input mt-1" type="checkbox" id="flexCheckDefault" />
                                                        <label className="form-check-label" for="flexCheckDefault">
                                                            Mark as confidential
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="rx-bg-white rx-further-detail mt-2">
                                        <h6>Further Details</h6>
                                        <div class="form-floating m-1 mb-2">
                                            <textarea onChange={e => setDoseInfo({ ...doseInfo, further_details: e.target.value })} class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" style={{ height: "100px" }}></textarea>
                                            <label for="floatingTextarea2">Write here</label>
                                        </div>
                                    </div>
                                    <div className="rx-one-button-group mt-2">
                                        <div className="row">
                                            <div className="col-6">

                                            </div>
                                            <div className="col-6">
                                                <button onClick={props.closeModal} className="btn float-end">Cancel</button>
                                                <button onClick={saveDrugsInfo} className="btn float-end me-2">Save</button>
                                                <button onClick={backForStep4} className="btn float-end me-2"><i className="fas fa-angle-left me-1"> </i> Back</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <Modal
                    isOpen={alertmodelShow}
                    onRequestClose={closeModalAlert}
                    style={customStylesAleart}
                    contentLabel="Example Modal"
                >
                    <>
                        <span className='float-end' style={{ fontSize: "15px", cursor: "pointer", marginTop: "-5px" }} onClick={() => {
                            setalertmodelShow(false)
                            setalertboxArray([])
                            setindexNumber(0)
                        }}><i className="fal fa-times"></i></span>
                        <div className="alert-container text-center">
                            <div className="d-flex justify-content-center mb-4">
                                <h6 className="text-danger">{alertboxArray.length > 0 && alertboxArray[indexNumber].name}</h6>
                            </div>
                            <p className='alertDesc'>{alertboxArray.length > 0 && alertboxArray[indexNumber].description}</p>
                            <div className="rx-one-button-group">
                                <div className="mt-1">
                                    <button onClick={() => { setmodalIsOpenMimsProduct(true); closeModalAlert() }} className="btn float-end ">Product Information</button>

                                    <button onClick={() => {
                                        if (indexNumber + 1 < alertboxArray.length) {
                                            setindexNumber(indexNumber + 1)
                                        } else {
                                            document.getElementById("v-pills-profile-tab").click();
                                            closeModalAlert()
                                        }
                                    }} className="btn float-end me-2">Continue <i className="fas fa-angle-right ms-2"></i></button>

                                    {
                                        alertboxArray.length > 1 &&
                                        <button onClick={() => {
                                            if (indexNumber > 0) {
                                                setindexNumber(indexNumber - 1)
                                            } else {
                                                // document.getElementById("v-pills-profile-tab").click();
                                                closeModalAlert()
                                            }
                                        }} className="btn float-end me-2"><i className="fas fa-angle-left mr-2"></i> Back </button>
                                    }

                                    <button onClick={closeModalAlert} className="btn float-end me-2"><i className="fas fa-angle-left me-2 "></i>Chose again</button>
                                </div>
                            </div>
                        </div>
                    </>

                </Modal>

                {/* <Modal
                isOpen={modalIsOpenAlert}
                onRequestClose={closeModalAlert}
                style={customStylesAleart}
                contentLabel="Example Modal"
            >
                <div>
                    <span className='float-end' style={{ fontSize: "15px", cursor: "pointer", marginTop: "-5px" }} onClick={closeModalAlert}><i className="fal fa-times"></i></span>
                    {
                        duplicateDrugStateDuplicate && duplicateDrugStateAllergy &&
                        <>

                            {
                                firstAlert &&
                                <div className="alert-container text-center">
                                    <div className="d-flex justify-content-center mb-4">
                                        <h6 className="text-danger">Duplicate Drug Class!</h6>
                                    </div>
                                    <p>The patient is already taking {medicine.generic_name.name} , which has an ingredient in the same class as {medicine.drug_name}</p>
                                    <div className="rx-one-button-group mt-5 pt-5">
                                        <div className="mt-4">
                                            <button onClick={() => { setmodalIsOpenMimsProduct(true); closeModalAlert() }} className="btn float-end ">Product Information</button>
                                            <button onClick={() => { setNextAlert(true); setFirstAlert(false) }} className="btn float-end me-2">Continue <i className="fas fa-angle-right ms-2"></i></button>
                                            <button onClick={closeModalAlert} className="btn float-end me-2"><i className="fas fa-angle-left me-2 "></i>Chose again</button>
                                        </div>
                                    </div>
                                </div>
                            }

                            {
                                nextAlert &&
                                <div className="alert-container text-center">
                                    <div className="d-flex justify-content-center mb-4">
                                        <h6 className="text-danger">Allergy!</h6>
                                    </div>
                                    <p><span style={{ fontSize: "15px", color: "red" }}>Allergy: </span>This patient is noted to be allergic to Folate</p>
                                    <div className="rx-one-button-group mt-5 pt-5">
                                        <div className="mt-4">
                                            <button onClick={() => { setmodalIsOpenMimsProduct(true); closeModalAlert() }} className="btn float-end ">Product Information</button>
                                            <button onClick={nextForStep2} className="btn float-end me-2">Continue <i className="fas fa-angle-right ms-2"></i></button>
                                            <button onClick={closeModalAlert} className="btn float-end me-2"><i className="fas fa-angle-left me-2 "></i>Chose again</button>
                                        </div>
                                    </div>
                                </div>
                            }

                        </>
                    }
                    {
                        duplicateDrugStateDuplicate && !duplicateDrugStateAllergy &&
                        <div className="alert-container text-center">
                            <div className="d-flex justify-content-center mb-4">
                                <h6 className="text-danger">Duplicate Drug Class!</h6>
                            </div>
                            <p>The patient is already taking {medicine.generic_name.name} , which has an ingredient in the same class as {medicine.drug_name}</p>
                            <div className="rx-one-button-group mt-5 pt-5">
                                <div className="mt-4">
                                    <button onClick={() => { setmodalIsOpenMimsProduct(true); closeModalAlert() }} className="btn float-end ">Product Information</button>
                                    <button onClick={nextForStep2} className="btn float-end me-2">Continue <i className="fas fa-angle-right ms-2"></i></button>
                                    <button onClick={closeModalAlert} className="btn float-end me-2"><i className="fas fa-angle-left me-2 "></i>Chose again</button>
                                </div>
                            </div>
                        </div>
                    }
                    {
                        !duplicateDrugStateDuplicate && duplicateDrugStateAllergy &&
                        <div className="alert-container text-center">
                            <div className="d-flex justify-content-center mb-4">
                                <h6 className="text-danger">Allergy!</h6>
                            </div>
                            <p><span style={{ fontSize: "15px", color: "red" }}>Allergy: </span>This patient is noted to be allergic to Folate</p>
                            <div className="rx-one-button-group mt-5 pt-5">
                                <div className="mt-4 me-3">
                                    <button onClick={() => { setmodalIsOpenMimsProduct(true); closeModalAlert() }} className="btn float-end ">Product Information</button>
                                    <button onClick={nextForStep2} className="btn float-end me-2">Continue <i className="fas fa-angle-right ms-2"></i></button>
                                    <button onClick={closeModalAlert} className="btn float-end me-2"><i className="fas fa-angle-left me-2 "></i>Chose again</button>
                                </div>
                            </div>
                        </div>
                    }

                </div>
            </Modal> */}
            </Modal>
        </>

    );
};

export default NewRx;