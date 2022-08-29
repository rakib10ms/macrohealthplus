import React, { useEffect, useRef, useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import swal from 'sweetalert';
import MaterialTable, { MTableToolbar } from 'material-table';
import { Checkbox, Select, MenuItem, Grid, Tooltip } from '@material-ui/core';
import PrintIcon from '@mui/icons-material/Print';
import GetAppIcon from '@mui/icons-material/GetApp';
import jsPDF from 'jspdf';
import 'jspdf-autotable';
// import ReactExport from "react-export-excel";
import moment from 'moment';
import Swal from "sweetalert2";
import { useReactToPrint } from "react-to-print";
import InvoicePreview from "./InvoicePreview";
import ExistingInvoPreview from "./ExistingInvoPreview";
import Modal from 'react-modal';

function AllPatients() {

    const [loading, setLoading] = useState(true);
    const [allpatients, setAllpatients] = useState([]);
    const [savedBillng, setsavedBillng] = useState([])
    const [patientList, setpatientList] = useState([])


    useEffect(() => {

        axios.get(`/billingPatient`).then(res => {
            console.log('appointment patients', res.data.billingPatients);

            if (res.data.status === 200) {
                setAllpatients(res.data.billingPatients);
                setLoading(false);
            }
        });

        axios.get(`/get-all-billing`).then(res => {
            console.log('billings', res.data.invoice);
            setsavedBillng(res.data.invoice)
            setLoading(false)
        });

        axios.get(`/patients`).then(res => {
            setpatientList(res.data.patients);
        });

    }, []);


    const columns = [
        {
            title: "Name", field: "patient_first_name", render: (row) => <div>{row.patient_images !== "" ? <img className="me-2" src={`${global.img_url}/images/files/${row.patient_images}`} width="20px" alt="No Image" /> : <img className="me-2" src={`https://static.thenounproject.com/png/363640-200.png`} width="20px" alt="No Image" />}{row.patient_first_name == null ? '' : row.patient_first_name} {row.patient_middle_name == null ? '' : row.patient_middle_name} {row.patient_last_name == null ? '' : row.patient_last_name}</div>
            , cellStyle: {
                width: 300
            },
        },
        {
            title: "HI No", field: "patient_hn_number", render: (row) => <div>{row.patient_hn_number == null ? '' : row.patient_hn_number}</div>, cellStyle: {
                width: 150
            },
        },
        { title: "Mobile", field: "patient_mobile_phone", render: (row) => <div>{row.patient_mobile_phone == null ? '' : row.patient_mobile_phone}</div> },
        { title: "Email", field: "patient_email", render: (row) => <div>{row.patient_email == null ? '' : row.patient_email}</div> },
        { title: "DOB", field: "patient_dob", render: (row) => <div>{row.patient_dob == null ? '' : moment(row.patient_dob).format('MM/DD/YYYY')}</div> },

        { title: "Sex", field: "patient_birth_sex_id", render: (row) => <div>{row.patient_birth_sex_id == null ? '' : row.birth_sex_name}</div> },

        {
            title: "Action", field: "patient", render: (row) => <div><Link to={`/billing/${row.patient_id}`} className="btn" data-bs-toggle="tooltip" title="Edit Patients"><i style={{ fontSize: "20px" }} className="fa-regular fa-circle-right"></i></Link>&nbsp;

            </div>
        },
    ];

    const columnsPatents = [
        {
            title: "Name", field: "patient_first_name", render: (row) => <div>{row.patient_images !== "" ? <img className="me-2" src={`${global.img_url}/images/files/${row.patient_images}`} width="20px" alt="No Image" /> : <img className="me-2" src={`https://static.thenounproject.com/png/363640-200.png`} width="20px" alt="No Image" />}{row.patient_title_id == null ? '' : row.title.title_name} {row.patient_first_name == null ? '' : row.patient_first_name} {row.patient_middle_name == null ? '' : row.patient_middle_name} {row.patient_last_name == null ? '' : row.patient_last_name}</div>
            , cellStyle: {
                width: 300
            },
        },
        {
            title: "HI No", field: "patient_hn_number", render: (row) => <div>{row.patient_hn_number == null ? '' : row.patient_hn_number}</div>, cellStyle: {
                width: 150
            },
        },
        { title: "Mobile", field: "patient_mobile_phone", render: (row) => <div>{row.patient_mobile_phone == null ? '' : row.patient_mobile_phone}</div> },
        { title: "Email", field: "patient_email", render: (row) => <div>{row.patient_email == null ? '' : row.patient_email}</div> },
        { title: "DOB", field: "patient_dob", render: (row) => <div>{row.patient_dob == null ? '' : moment(row.patient_dob).format('MM/DD/YYYY')}</div> },

        { title: "Sex", field: "patient_birth_sex_id", render: (row) => <div>{row.patient_birth_sex_id == null ? '' : row.birth_sex_name}</div> },

        {
            title: "Action", field: "patient", render: (row) => <div><Link to={`/billing/${row.id}`} className="btn" data-bs-toggle="tooltip" title="Edit Patients"><i style={{ fontSize: "20px" }} className="fa-regular fa-circle-right"></i></Link>&nbsp;

            </div>
        },
    ];

    const [patientInvoiceData, setpatientInvoiceData] = useState()
    const [invoiceBilling, setinvoiceBilling] = useState([])
    const [printLoding, setprintLoding] = useState(false)
    const columnsForBillng = [
        {
            title: "Name", field: "patient_id", render: (row) => <div> {row.patient_id == null ? "" : row.patient_id.patient_images !== "" ? <img className="me-2" src={`${global.img_url}/images/files/${row.patient_id.patient_images}`} width="20px" alt="No Image" /> : <img className="me-2" src={`https://static.thenounproject.com/png/363640-200.png`} width="20px" alt="No Image" />} {row.patient_id == null ? '' : row.patient_id.patient_first_name} {row.patient_id == null ? '' : row.patient_id.patient_middle_name} {row.patient_id == null ? '' : row.patient_id.patient_last_name}</div>, cellStyle: {
                width: 100
            },
        },
        {
            title: "HI No", field: "patient_id", render: (row) => <div>{row.patient_id == null ? "" : row.patient_id.patient_hn_number}</div>
        },
        { title: "Invoice Number", field: "invoice_number" },
        { title: "Email", render: (row) => <div>{row.patient_id == null ? '' : row.patient_id.patient_email}</div> },

        { title: "Issued Date", field: "issued_date" },
        // {
        //     title: "Total Amount", field: "total_bill_amount"
        // },
        // {
        //     title: "Payment Amount", field: "payment_amount"

        // },
        {
            title: "Preview", render: (row) => <div><span onClick={() => {
                setprintLoding(true)
                axios.get(`/get-billing-invoice/${row.invoice_number}`).then(res => {
                    setpatientInvoiceData(res.data.invoice)
                    axios.get(`getBilling/${res.data.invoice.patient_id.id}/${res.data.invoice.invoice_number}`).then(res => {
                        setinvoiceBilling(res.data.allbilling)
                        handlePeview()
                    });

                });


            }} className="btn" data-bs-toggle="tooltip" title="Invoice Preview"><i style={{ fontSize: "20px" }} className="fa fa-eye invoPreview"></i></span>&nbsp;

            </div>
        },
    ];


    const componentRef = useRef();
    const handlePeview = useReactToPrint({
        content: () => componentRef.current,
    });

    const [modelShowForPatient, setmodelShowForPatient] = useState(false)

    const customStyles = {
        content: {
            top: '30%',
            left: '21%',
            height: '55vh',
            width: '60%',
            transform: 'translate(-50%, -50%)',
            backgroundColor: 'white'
        },
    };
    return (
        <>
            {
                patientInvoiceData && invoiceBilling.length > 0 &&

                <div className='invoicePreviw' ref={componentRef}>
                    <ExistingInvoPreview setprintLoding={setprintLoding} invoiceBilling={invoiceBilling} patientInvoiceData={patientInvoiceData} />
                </div>
            }

            <Modal
                isOpen={modelShowForPatient}
                onRequestClose={modelShowForPatient}
                style={customStyles}
                appElement={document.getElementById('root')}

            >
                <span className='float-end' style={{ fontSize: "15px", cursor: "pointer" }} onClick={() => setmodelShowForPatient(false)}><i className="fal fa-times"></i></span>
                <h6 style={{ fontSize: "14px" }}>Register Patient List</h6>
                <hr />

                <MaterialTable
                    columns={columnsPatents}
                    data={patientList}
                    isLoading={loading == true ? true : false}
                    options={{
                        search: true,
                        showTitle: false,
                        searchFieldAlignment: "left",
                        searchFieldStyle: { borderRadius: 16 },
                        pageSize: 10,
                        emptyRowsWhenPaging: false,
                        pageSizeOptions: [5, 10, 20, 50, 100],
                        // exportButton: true,
                    }}
                />
            </Modal>

            <div className="ms-2 mt-2 all-patients ">
                <div className="ms-1 row cns-container">
                    <div className="custom-card flex-grow-1">
                        <h5 className="fw-normal  text-start py-2 px-1 mb-2 text-login">Billing && Invoice</h5>
                    </div>
                    <div className="billing custom-card mt-2">
                        <div className="BillingHeader">
                            <ul className="nav nav-pills" id="pills-tab" role="tablist">
                                <li className="nav-item" role="presentation">
                                    <button className="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Todays App. Patients</button>
                                </li>
                                <li className="nav-item" role="presentation">
                                    <button className="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Existing Invoice</button>
                                </li>
                            </ul>
                            <i onClick={() => setmodelShowForPatient(true)} className="fa-solid fa-circle-plus addBilling"> Add Billing</i>
                        </div>
                        <div className="tab-content" id="pills-tabContent">
                            <div className="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                                <div className="card-body patient-table">
                                    <MaterialTable
                                        columns={columns}
                                        data={allpatients}
                                        isLoading={loading == true ? true : false}
                                        options={{
                                            search: true,
                                            showTitle: false,
                                            searchFieldAlignment: "left",
                                            searchFieldStyle: { borderRadius: 16 },
                                            pageSize: 10,
                                            emptyRowsWhenPaging: false,
                                            pageSizeOptions: [5, 10, 20, 50, 100],
                                            // exportButton: true,
                                        }}
                                    />
                                </div>
                            </div>
                            <div className="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                                <div className="card-body patient-table">
                                    {
                                        printLoding ?
                                            <div className="divLoaderBilling">
                                                <svg className="svgLoader" viewBox="0 0 100 100" width="10em" height="10em">
                                                    <path ng-attr-d="{{config.pathCmd}}" ng-attr-fill="{{config.color}}" stroke="none" d="M10 50A40 40 0 0 0 90 50A40 42 0 0 1 10 50" fill="#51CACC" transform="rotate(179.719 50 51)"><animateTransform attributeName="transform" type="rotate" calcMode="linear" values="0 50 51;360 50 51" keyTimes="0;1" dur="1s" begin="0s" repeatCount="indefinite"></animateTransform></path>
                                                </svg>
                                            </div>
                                            :
                                            <MaterialTable
                                                columns={columnsForBillng}
                                                data={savedBillng}
                                                isLoading={loading == true ? true : false}
                                                options={{
                                                    search: true,
                                                    showTitle: false,
                                                    searchFieldAlignment: "left",
                                                    searchFieldStyle: { borderRadius: 16 },
                                                    pageSize: 10,
                                                    emptyRowsWhenPaging: false,
                                                    pageSizeOptions: [5, 10, 20, 50, 100],
                                                    // exportButton: true,
                                                }}
                                            />
                                    }
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </>


    )
}

export default AllPatients;
