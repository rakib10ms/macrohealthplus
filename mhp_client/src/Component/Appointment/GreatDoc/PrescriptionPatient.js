import React, { useEffect, useState } from 'react';
import './PrescriptionPatient.css';
import qr from '../../../Images/qr-code.png';
import logo from '../../../Images/plus-logo.png';
import sign from '../../../Images/signPres.png';
import bg from "../../../Images/medicine-bg.png";
import moment from 'moment';
import QRCode from "react-qr-code";
import { useBarcode } from 'react-barcodes';
import axios from 'axios';
import { toast } from 'react-toastify';

const PrescriptionPatient = (props) => {


    const { inputRef } = useBarcode({
        value: '32213115',
        options: {
            displayValue: false,
            width: 3,
            height: 70
        }
    });

    const [doctorData, setdoctorData] = useState([])
    const [script, setscript] = useState()
    useEffect(() => {
        const docData = JSON.parse(localStorage.getItem('userData'))

        if (docData.user_id) {
            axios.get(`/edit-doctors/${docData.user_id}`).then(res => {
                setdoctorData(res.data.doctors)
            })
        }


        const data = Math.ceil(Math.random() * 100000)
        setscript(data)



    }, [])

    const [selectedMedicen, setselectedMedicen] = useState()
    useEffect(() => {
        if (props.prescriptionSaveDB === true) {

            const data = {
                patient_id: props.patientDetails.id,
                prescription_name: `prescription_${moment(Date.now()).format('MMMM Do YYYY, h:mm:ss a')}`,
                doctors_note: props.doctorsNote,
                date: moment(Date.now()).format('MMMM Do YYYY, h:mm:ss a')
            }


            axios.post('/save-prescription-name', data).then((res) => {
                console.log("PrescriptionData", res.data)
            })


            props.selectedMedicen.map((item) => {
                // setselectedMedicen(...selectedMedicen,item.id)
                const data = {
                    patient_id: props.patientDetails.id,
                    doctor_id: doctorData.id,
                    medicen_id: item.id,
                    prescription_no: `prescription_${moment(Date.now()).format('MMMM Do YYYY, h:mm:ss a')}`,
                    prescription_date: moment(Date.now()).format('MMMM Do YYYY, h:mm:ss a')
                }
                axios.post('/save-prescription', data).then((res) => {
                    console.log("PrescriptionData", res.data)
                })
            })

            props.setPrescriptionSaveDB(false)
            toast.success("Prescription save successfully")


        }

    }, [props.prescriptionSaveDB])

    const { patient_hn_number, patient_first_name, patient_middle_name, patient_last_name, patient_address1, patient_hcc_no, blood_group, patient_birth_sex, religion, patient_images, patient_dob } = props.patientDetails;

    return (
        <div className='prescription-container'>
            <div className="prescription__doctor__info d-flex justify-content-between">
                <div className="prescription__doctor__info__name">
                    <h6>{doctorData.length < 0 ? "" : doctorData.dr_given_name}</h6>
                    <p>MBBS, FRACGP</p>
                    <span className='bmdc-no'>BMDC No.: {doctorData.length < 0 ? "" : doctorData.dr_bmdc_reg_no}</span>
                </div>
                <div className="prescription__doctor__info__address">
                    <span className='float-end font-weight-bold'>Chamber</span><br />
                    <span className='float-end'>{doctorData.length < 0 ? "" : doctorData.dr_address_line_1} </span ><br />
                    <span className='float-end'> Ph: {doctorData.length < 0 ? "" : doctorData.dr_mobile_phone}</span><br />
                    <span className='float-end'> Work Ph: {doctorData.length < 0 ? "" : doctorData.dr_work_phone} </span>
                </div>
            </div>
            <hr />
            <div className="prescription__patient__info d-flex justify-content-between">
                <div className="prescription__patient__info__name">
                    <h6>Patient HN    {patient_hn_number}</h6>
                    <p className="mt-2"> <span className='p-title'>Patient name </span>: <b>{`${patient_first_name == null ? "" : patient_first_name} ${patient_middle_name == null ? "" : patient_middle_name} ${patient_last_name == null ? "" : patient_last_name}`}</b></p>
                    <p className="mt-2"> <span className='p-title'>Address </span>: <b>{patient_address1}</b></p>
                    <span className="mt-2 patient-date">Date: {moment(Date.now()).format("ll")}</span>
                </div>
                <div className="prescription__patient__info__id">
                    <div className="prescription__patient__info__id__image__container text-center">
                        <div style={{ marginBottom: "5px" }}>
                            <QRCode size="60" value='https://macrohealthplus.org'></QRCode>
                        </div>


                        {/* <img className='qr-code-img' src={qr} alt="" /> */}
                        <img src={logo} alt="" />
                        <p>MHP Hospital</p>
                        <span>Script ID: {script}</span>
                    </div>
                </div>
            </div>
            <div className="prescription__medicine__info">
                <div class="form-check mt-3">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" />
                    <label class="form-check-label">
                        Brand substitution not permitted
                    </label>
                </div>
                <div className="prescription__medicine__container d-flex justify-content-center">
                    <img className='img-fluid' src={bg} alt="" />
                    <div className="prescription__medicine__details">
                        {
                            props.selectedMedicen.length > 0 ?
                                props.selectedMedicen.map((item, i) => <div key={i} className="prescription__medicine mt-3">
                                    <h6>{item.drug_name}</h6>
                                    <p>{`${item.dose}  ${item.frequency}`}</p>
                                    <p>Quantity: {`${item.quantity}  ${item.repeats}`}</p>
                                    <p>Quantity: {item.quantity}  Repeats: {item.repeats}</p>

                                </div>)
                                :
                                <i style={{ fontSize: "26px", marginLeft: "40%" }} class="fas fa-spinner fa-spin"></i>

                        }
                    </div>
                </div>
                <div className="prescription__doctor__sign mt-3">
                    <h6 className='mt-5'>{doctorData.dr_given_name}</h6>
                    {/* <img src={sign} alt="" /> */}
                </div>
                <h6 className="mt-2 float-end">Turn over for privacy notice</h6>
            </div>
            <div className="prescription__barcode__section">
                <br></br>
                <br></br>
                {/* <ReactBarcode format="CODE39" value="212121212121"/> */}
                {/* <img ref={inputRef} alt="" /> */}
                {/* <img ref={inputRef} alt=""/> */}
                <svg ref={inputRef} />
                <br></br>
                <p>Issued under : The Drugs (Control) Ordinance, 1982 <br /> (Ordinance NO. VIII OF 1982 ) Section 14A</p>
            </div>
        </div>
    );
};

export default PrescriptionPatient;