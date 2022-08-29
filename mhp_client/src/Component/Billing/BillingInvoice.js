import logo from '../../../src/Images/billing-logo.png';
import add from '../../../src/Images/p-menu-1.png';
import axios from "axios";
import React, { useEffect, useRef, useState } from "react";
import { Autocomplete, TextField } from '@mui/material';
// import ReactDOM from 'react-dom';
import Modal from 'react-modal';
import MaterialTable from 'material-table';
import './BillingInvoice.css';
import Swal from 'sweetalert2';
import { ConstructionOutlined } from '@mui/icons-material';
import { toast } from 'react-toastify';
import InvoicePreview from './InvoicePreview';
import { useReactToPrint } from 'react-to-print';
import moment from 'moment'
import swal from 'sweetalert';
import Tooltip from '@mui/material/Tooltip';

toast.configure();


const BillingInvoice = () => {

    const customStyles = {
        content: {
            top: '32%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "40%",
            height: "450px",
            background: "#ffffff"
        },

    };

    useEffect(() => {
        Modal.setAppElement('body');
    }, []);


    const [slectedDoctor, setslectedDoctor] = useState([])
    const [doctorsFee, setdoctorsFee] = useState({
        fee_name: "",
    })
    console.log("slectedDoctor", slectedDoctor)

    const [modalIsOpen, setIsOpen] = React.useState(false);
    const [editModalIsOpen, setEditIsOpen] = React.useState(false);
    const [editBillingModalId, setEditBillingModalId] = useState('');
    const [editBilling, setEditBilling] = useState('');
    const [editClick, setEditClick] = useState(false);


    function openEditBillingModal(billingId) {
        setEditBillingModalId(billingId)
        setEditIsOpen(true);
    }


    useEffect(() => {
        setEditClick(true);
        axios.get(`/edit-billing/${editBillingModalId}`).then(res => {
            if (res.data.status === 200) {
                setEditBilling(res.data.edit_Billing);
            }
        })

    }, [editBillingModalId])


    function closeEditModal() {
        setEditIsOpen(false);

    }

    function openModal() {
        setIsOpen(true);
    }


    function closeModal() {
        setIsOpen(false);

    }
    const [selection, setSelection] = useState(null);
    const [patientDetails, setPatientDetails] = useState('');

    //billing crud start
    // const [doctors, setdoctors] = useState([]);

    const [doctors, setdoctors] = useState([]);

    const [doctorProcedureValue, setDoctorProcedureValue] = useState('');
    //doctor individual id value

    const [doctorProcedureName, setDoctorProcedureName] = useState([]); //all doctor fees name

    const [doctorFeeName, setDoctorFeeName] = useState({
        fee_id: ""
    })
    const [doctorSubProcedure, setDoctorSubProcedure] = useState([]); //all doctor get and corresponding subprocedures

    const [itemCodeFeeName, setItemCodeFeeName] = useState();




    const [procedureFeeId, setProcedureFeeId] = useState('')
    const [procedure, setprocedure] = useState([]);
    const [procedureCode, setprocedureCode] = useState('');
    const [procedureValue, setprocedureValue] = useState('');

    const [procedureFee, setprocedureFee] = useState('');

    const [subProcedure, setSubProcedure] = useState([]);


    const [itemDetails, setItemDetails] = useState('');
    const [patientId, setPatientId] = useState('');
    const [Billings, setBillings] = useState([]);


    const [others, setOthers] = useState('');



    // console.log('doctor vaaluesssssssssss', doctorValue);

    //billing crud end

    const selectionHandle = (e) => {
        setSelection(e.target.value);

    }

    const handleDoctorBilling = (e) => {
        setDoctorFeeName({
            ...doctorFeeName, [e.target.name]: e.target.value
        })
    }

    useEffect(() => {

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }
        setPatientId(lastpart)


        axios.get(`/billingPatientSearch/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                // console.log('data',res.data.billing_patientDetails);
                setPatientDetails(res.data.billing_patientDetails);
            } else if (res.data.status === 404) {
                // setError(res.data.errors);

            }

        });


        axios.get(`/getBilling/${lastpart}`).then(res => {
            console.log("allbilling 1", res.data.procedureName);
            setBillings(res.data.allbilling);
        })

        axios.get(`/doctorFeeName`).then(res => {
            setDoctorProcedureName(res.data.doctorFeeName);
        })

        axios.get(`/paymentget/${lastpart}/${invoiceNumber}`).then(res => {
            console.log('alllllllllll', res.data)
            if (res.data.status === 200) {
                setAllPayment(res.data.allPayments);

            }
        })


        const invoNum = Math.ceil(Math.random() * 10000)
        setinvoiceNumber("INV-2022-" + invoNum)

        const issueDa = moment(Date.now()).format("Do MMMM YYYY hh:mm a")
        setissueDate(issueDa)


    }, []);


    const [invoiceNumber, setinvoiceNumber] = useState()
    const [issueDate, setissueDate] = useState()

    //all doctors get 
    useEffect(() => {
        axios.get(`/all-doctorList`).then(res => {
            if (res.data.status === 200) {
                setdoctors(res.data.allDoctors);
            }

            axios.get('/procedure-name').then(res => {
                setprocedure(res.data.procedureName);
            })


        })

    }, [])




    //doctor procedure and fee valuess and items get
    useEffect(() => {
        axios.get(`/doctorSubProcedureById/${doctorProcedureValue.id}`).then(res => {

            if (res.data.status === 200) {
                console.log('doctor sub vaulues', doctorSubProcedure);
                setDoctorSubProcedure(res.data.doctorFees);

            }
        })
    }, [doctorProcedureValue])

    //subprocedure valuess and items get
    // useEffect(() => {
    //     axios.get(`/subProcedureById/${procedureValue.id}`).then(res => {

    //         if (res.data.status === 200) {
    //             // console.log('subProceduressssssss', res.data.sub_procedure);
    //             console.log('subProceduressssssss', subProcedure);
    //             setSubProcedure(res.data.subProcedure);

    //         }
    //     })
    // }, [procedureValue])


    const [procedureQty, setprocedureQty] = useState("")
    const [selectedFeesDetails, setselectedFeesDetails] = useState({
        fee_name: "",
        item_code: "",
        doctor_id: {
            id: ""
        },
        procedure_id: ""
    })


    const [biliingRender, setbiliingRender] = useState()

    useEffect(() => {
        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }
        axios.get(`/getBilling/${lastpart}/${invoiceNumber}`).then(res => {
            console.log("allbilling 2", res.data.procedureName);
            setBillings(res.data.allbilling);

        })
    }, [biliingRender])

    const [feeDetails, setfeeDetails] = useState()

    console.log("patient_id", patientId)

    console.log("selectedFeesDetails", selectedFeesDetails)
    const feeSubmit = () => {
        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }
        const proTotal = procedureQty * selectedFeesDetails.fee_name

        const data = {
            invoice_number: invoiceNumber,
            rate: selectedFeesDetails.fee_name,
            item_code: selectedFeesDetails.item_code,
            qty: procedureQty,
            total: proTotal == "" ? selectedFeesDetails.fee_name : proTotal,
            item_details: feeDetails,
            patient_id: lastpart,
            vat: 0,
            tax: 0,
            doctor_id: selectedFeesDetails.doctor_id == undefined ? "" : selectedFeesDetails.doctor_id.id,
            procedure_id: selectedFeesDetails.procedure_id

        }

        axios.post(`/addBilling`, data).then(res => {
            console.log("addBilling", res.data)
            setbiliingRender(res.data)
            closeModal()
            toast.success("Bill added sucessfully")
            setselectedFeesDetails(
                {
                    fee_name: "",
                    item_code: "",
                    doctor_id: {
                        id: ""
                    },
                    procedure_id: ""
                }
            )
            setSelection('')
        })


    }
    //calculation 



    var totalSubtotal = Billings.reduce(function (tot, arr) {
        let subtotal = parseInt(tot) + parseInt(arr.total);
        return subtotal;

    }, 0);

    var totalDiscount = 0;

    var totalTax = Billings.reduce(function (tot, arr) {
        let Tax = parseInt(tot) + parseInt(arr.tax);
        return Tax;

    }, 0);

    let grandTotal = totalDiscount + totalSubtotal + totalTax;


    // console.log('grandTotal',grandTotal);

    // console.log(patientDetails);

    const handleOthers = (e) => {
        setOthers(e.target.value);
    }


    const deleteBilingHandeler = (e, id) => {
        e.preventDefault();
        const thisClicked = e.currentTarget;
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                axios.post(`/destroy-billing/${id}`).then(res => {
                    if (res.data.status === 200) {
                        setbiliingRender(Math.ceil(Math.random() * 10000))
                    }
                });
                Swal.fire(
                    'Deleted!',
                    'Your data has been deleted.',
                    'success'
                )
            }
        })

    }

    //edit billing start//

    const handleBillingEditChange = (e) => {
        setEditBilling({
            ...editBilling, [e.target.name]: e.target.value
        })
    }
    const updateBilling = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }
        axios.post(`/update-billing/${lastpart}`, editBilling).then(res => {
            console.log('updateBilling daata', editBilling);
            if (res.data.status == 200) {
                // Swal("Success", res.data.message, "success");
                setEditIsOpen(false);
                setEditBillingModalId('');
                setEditBilling('');
            }


        })

        // closeEditPaymentModal();


    }






    const [card, setCard] = useState('');
    const [cash, setCash] = useState('');
    const [bank, setBank] = useState('');
    const [digital, setDigital] = useState('');


    const [allCard, setAllCard] = useState([]);
    const [allDigital, setAllDigital] = useState([]);
    const [allBank, setAllBank] = useState([]);
    const [allBranch, setAllBranch] = useState([]);

    // console.log('cash data',cash);
    // console.log('card data',card);
    // console.log('bank data',bank);
    // console.log('digital payment data',digital);

    useEffect(() => {
        axios.get(`/card`).then(res => {

            if (res.data.status === 200) {
                // console.log('all cards', res.data.card);
                setAllCard(res.data.card);

            }
        })
    }, [card])

    useEffect(() => {
        axios.get(`/digital`).then(res => {

            if (res.data.status === 200) {
                // console.log('all digitals', res.data.digital);
                setAllDigital(res.data.digital);

            }
        })
    }, [digital])

    useEffect(() => {
        axios.get(`/bank`).then(res => {

            if (res.data.status === 200) {
                // console.log('all banks', res.data.bank);
                setAllBank(res.data.bank);

            }
        })
    }, [bank])


    useEffect(() => {
        axios.get(`/branch`).then(res => {

            if (res.data.status === 200) {
                // console.log('all branches', res.data.branch);
                setAllBranch(res.data.branch);

            }
        })
    }, [bank])

    const handlePayment = (e) => {
        console.log("hanndlePayment clicked", e.target.value);
        if (e.target.value !== null) {
            setPaymentIsOpen(true);
        }
        if (e.target.value == 'cash') {
            setCash('cash')
        }
        if (e.target.value == 'card') {
            setCard('card')

        }
        if (e.target.value == 'bank') {
            setBank('bank')

        }
        if (e.target.value == 'digital_payment') {
            setDigital('digital')

        }

    }

    const [paymentModalIsOpen, setPaymentIsOpen] = React.useState(false);


    //change and grab value from payment change

    const [cardPayment, setCardPayment] = useState({
        card_id: '',
        card_number: '',
        amount: '',
        payment_type: ''
    })
    // console.log('cardddddddd  cheeck', cardPayment);

    const [digitalPayment, setDigitalPayment] = useState({
        digital_id: '',
        transaction_number: '',
        amount: '',
        payment_type: ''

    })
    // console.log('digital payment  cheeck', digitalPayment);

    const [cashPayment, setCashPayment] = useState({
        amount: '',
        payment_type: '',
        error_list: [],

    })
    // console.log('cash payment  cheeck', cashPayment);

    const [bankPayment, setBankPayment] = useState({
        bank_id: '',
        branch_id: "",
        check_number: '',
        amount: "",
        payment_type: ''
    })
    // console.log('bank payment  cheeck', bankPayment);

    function closePaymentModal() {
        setPaymentIsOpen(false);
        setCard('');
        setCash('');
        setBank('');
        setDigital('');
        setCardPayment({
            card_id: '',
            card_number: '',
            amount: '',
            payment_type: ''
        });
        setCashPayment({
            amount: "",
            payment_type: ''
        });
        setDigitalPayment({
            digital_id: '',
            transaction_number: '',
            amount: '',
            payment_type: ''
        });
        setBankPayment({
            bank_id: '',
            branch_id: "",
            check_number: '',
            amount: "",
            payment_type: ''
        });
        // console.log('boooom check', cashPayment, cardPayment, bankPayment, digitalPayment)
    }


    const handleCardChange = (e) => {
        // console.log('changed');
        setCardPayment({
            ...cardPayment, [e.target.name]: e.target.value,
            payment_type: 'Card',
        })
    }

    const handleDigitalPaymentChange = (e) => {
        // console.log('digital payment changed');
        setDigitalPayment({
            ...digitalPayment, [e.target.name]: e.target.value,
            payment_type: 'Digital Payment',
        })
    }
    const handleCashPaymentChange = (e) => {
        // console.log('cash payment changed');
        setCashPayment({
            ...cashPayment, [e.target.name]: e.target.value,
            payment_type: 'Cash',
        })
    }

    const handleBankPaymentChange = (e) => {
        // console.log('bank payment changed');
        setBankPayment({
            ...bankPayment, [e.target.name]: e.target.value,
            payment_type: 'Bank',
        })
    }


    const submitPayment = (e) => {
        e.preventDefault();
        // console.log('data submitted', cardPayment || cashPayment || bankPayment || digitalPayment);

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        const data = {
            invoice_number: invoiceNumber,
            amount: cardPayment.amount || cashPayment.amount || bankPayment.amount || digitalPayment.amount,
            card_id: cardPayment.card_id,
            card_number: cardPayment.card_number,
            digital_id: digitalPayment.digital_id,
            transaction_number: digitalPayment.transaction_number,
            patient_id: lastpart,
            bank_id: bankPayment.bank_id,
            branch_id: bankPayment.branch_id,
            check_number: bankPayment.check_number,
            payment_type: cardPayment.payment_type || cashPayment.payment_type || bankPayment.payment_type || digitalPayment.payment_type,

        }
        console.log("Payment data", data);

        axios.post(`/addPayment`, data).then(res => {

            toast.success("Payment added sucessfully")
            setCard('');
            setCash('');
            setBank('');
            setDigital('');

            setpaymentRender(res.data)

            setCardPayment({
                card_id: '',
                card_number: '',
                amount: '',
                payment_type: ''
            });
            setCashPayment({
                amount: '',
                payment_type: ''
            });
            setDigitalPayment({
                digital_id: '',
                transaction_number: '',
                amount: '',
                payment_type: ''
            });
            setBankPayment({
                bank_id: '',
                branch_id: "",
                check_number: '',
                amount: "",
                payment_type: ''
            });
            setPaymentIsOpen(false);




        })

        // closePaymentModal();

        var totalAmount = cashPayment.amount == null ? '' : parseInt(grandTotal) - parseInt(cashPayment.amount) || bankPayment.amount == null ? '' : parseInt(grandTotal) - parseInt(bankPayment.amount) || digitalPayment.amount == null ? '' : parseInt(grandTotal) - parseInt(digitalPayment.amount) || cardPayment.amount == null ? '' : parseInt(grandTotal) - parseInt(cardPayment.amount);
        // console.log('grandTotaaaaaaaaaaal', totalAmount)

    }

    const [allPayment, setAllPayment] = useState([]);

    const [paymentRender, setpaymentRender] = useState()
    useEffect(() => {
        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        axios.get(`/paymentget/${lastpart}/${invoiceNumber}`).then(res => {
            console.log('p data', res.data)
            if (res.data.status === 200) {
                setAllPayment(res.data.allPayments);

            }
        })
    }, [paymentRender])



    const deletePayment = (e, id) => {
        e.preventDefault();
        const thisClicked = e.currentTarget;
        //  thisClicked.innerText = "Deleting";

        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                axios.post(`/destroy-payment/${id}`).then(res => {
                    if (res.data.status === 200) {
                        setallPaymentRender(Math.ceil(Math.random() * 10000))
                        thisClicked.closest("tr").remove();
                    }
                });
                Swal.fire(
                    'Deleted!',
                    'Your data has been deleted.',
                    'success'
                )
            }
        })


    }
    const [editPaymentModalId, setEditPaymentModalId] = useState('');

    const [editPaymentModalIsOpen, setEditPaymentIsOpen] = React.useState(false);
    const [editPayment, setEditPayment] = useState('');

    console.log('edit paymentCheck', editPayment.payment_type);
    console.log('edit paymentData', editPayment);



    function openEditPaymentModal(paymentId) {
        setEditPaymentModalId(paymentId)
        setEditPaymentIsOpen(true);
    }
    function closeEditPaymentModal() {
        setEditPaymentIsOpen(false);


    }
    useEffect(() => {
        axios.get(`/editPayment/${editPaymentModalId}`).then(res => {
            if (res.data.status === 200) {
                setEditPayment(res.data.edit_Payments);

            }
        })
    }, [editPaymentModalId])

    const handlePaymentEditChange = (e) => {
        setEditPayment({
            ...editPayment, [e.target.name]: e.target.value,

        })
    }

    console.log("editPayment", editPayment)

    const updatePayment = (e) => {
        axios.post(`/update-payment/${editPayment.id}`, editPayment).then(res => {
            console.log('update', res.data);
            setpaymentRender(res.data)
            setallPaymentRender(Math.ceil(Math.random() * 10000))
            closeEditPaymentModal();
        })
    }

    const [allPaymentAmount, setAllPaymentPayment] = useState([]);
    const [allPaymentRender, setallPaymentRender] = useState()

    useEffect(() => {
        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        axios.get(`/paymentget/${lastpart}/${invoiceNumber}`).then(res => {
            if (res.data.status === 200) {
                setAllPaymentPayment(res.data.allPayments);

            }
        })
    }, [modalIsOpen, editModalIsOpen, paymentModalIsOpen, editBillingModalId, allPaymentRender])

    var totalPaymentSum = allPaymentAmount.reduce(function (tot, arr) {
        let result = parseInt(tot) + parseInt(arr.amount);
        return result;

    }, 0);

    grandTotal = grandTotal - parseInt(totalPaymentSum);


    const take = totalPaymentSum - totalSubtotal

    const [serchDropdown, setserchDropdown] = useState()
    const [serchField, setserchField] = useState("")
    const [serchDocID, setserchDocID] = useState()
    const [serchProcedureID, setserchProcedureID] = useState()


    const componentRef = useRef();
    const handlePeview = useReactToPrint({
        content: () => componentRef.current,
    });


    const [invoLoding, setinvoLoding] = useState(false)
    const saveInvoice = () => {
        setinvoLoding(true)
        const data = {
            patient_id: patientId,
            invoice_number: invoiceNumber,
            issued_date: issueDate,
            due_date: issueDate,
            total_bill_amount: totalSubtotal,
            payment_amount: totalPaymentSum,
        }

        axios.post('/save-invoice', data).then(res => {
            console.log("inv", res.data)
            toast.success("Invoice save sucessfully")
            setinvoLoding(false)
        })
    }

    console.log("patientDetails", patientDetails)
    console.log("billing abcd", Billings)

    return (
        <div>
            <div className='invoicePreviw' ref={componentRef}>
                <InvoicePreview allPayment={allPayment} totalSubtotal={totalSubtotal} totalPaymentSum={totalPaymentSum} Billings={[Billings]} patientDetails={patientDetails} invoiceNumber={invoiceNumber} issueDate={issueDate} ></InvoicePreview>
            </div>
            <div className="ms-2 mt-2">
                <div className="custom-card flex-grow-1">
                    <h5 className="fw-normal  text-start py-2 px-1 mb-2 text-login">Billing & Invoice</h5>
                </div>
                <div className="invoice-container custom-card p-1">
                    <div className="row ">
                        <div className="col-md-7">
                            <div className="invoice-header clearfix m-3">
                                <div className="float-start">
                                    <div className="invoice-head-left d-flex">
                                        <img src={logo} alt="" className='billing-logo' />
                                        <div className='ms-4 mt-1 d-inline-block'>
                                            <h5>MacrohealthPlus</h5>
                                            <p>info@macrohealthplus.org</p>
                                        </div>
                                    </div>
                                </div>

                                <div className="invoice-head-right float-end">
                                    <p>9878 Laurel Street </p>
                                    <p>Baton Rouge, LA 70806 </p>
                                    <p>Sydney Australia</p>
                                </div>
                            </div>
                            <div className="invoice-details d-flex justify-content-between m-1 p-3 mt-4">
                                <div>
                                    <h6>Invoice Number</h6>
                                    <p>{invoiceNumber}</p>
                                    <p>Issued Date : {issueDate}</p>
                                    <p>Due Date : {issueDate}</p>
                                </div>
                                <div>
                                    <h6>Billed To</h6>
                                    <p>{`${patientDetails.patient_first_name != null && patientDetails.patient_first_name} ${patientDetails.patient_last_name != null && patientDetails.patient_last_name} ${patientDetails.patient_preferred_name != null && patientDetails.patient_preferred_name}`}</p>
                                    <p>{patientDetails.patient_address1}</p>

                                </div>
                            </div>
                            <div className='invoice-button-group clearfix mt-3 mb-4'>
                                <div className="float-end">
                                    <button className='me-2' onClick={openModal}><img src={add} alt="" /> Add</button>

                                    <Modal
                                        isOpen={modalIsOpen}
                                        onRequestClose={closeModal}
                                        style={customStyles}
                                        contentLabel="Example Modal"
                                    >
                                        <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeModal}><i class="fal fa-times"></i></span>

                                        <div className="card-body">
                                            <>


                                                <div className='row form-group d-flex'>
                                                    <label htmlFor="history_name" className="col-sm-4 form-check-label mt-2">Fee type :</label>
                                                    <div className='col-sm-8'>
                                                        <div class="form-check form-check-inline  ">
                                                            <input className="form-check-input mt-1" type="radio" name="selection" id="inlineRadio1" value="Doctor" onChange={e => {
                                                                setSelection(e.target.value)
                                                                // setslectedDoctor([])
                                                                // setprocedureQty("")
                                                            }

                                                            } />
                                                            <label className="form-check-label" for="inlineRadio1"> <span style={{ marginLeft: "-28px" }}>Doctor </span></label>
                                                        </div>
                                                        <div className="form-check form-check-inline">
                                                            <input className="form-check-input mt-1" type="radio" name="selection" id="inlineRadio2" value="Procedure" onChange={e => {
                                                                setSelection(e.target.value)

                                                                // setDoctorProcedureName([])
                                                                // setprocedureQty("")
                                                            }
                                                            } />
                                                            <label className="form-check-label" for="inlineRadio2"> <span style={{ marginLeft: "-28px" }}>Procedure </span></label>
                                                        </div>
                                                        <div className="form-check form-check-inline">
                                                            <input className="form-check-input mt-1" type="radio" name="selection" id="inlineRadio3" value="Others" onChange={e => {
                                                                setSelection(e.target.value)
                                                                // setslectedDoctor([])
                                                                // setprocedureQty("")
                                                            }
                                                            } />
                                                            <label className="form-check-label" for="inlineRadio3"> <span style={{ marginLeft: "-28px" }}>Others </span></label>
                                                        </div>
                                                    </div>
                                                </div>



                                                {
                                                    selection == 'Doctor' && <>



                                                        <div className="row  mb-3">
                                                            <label className="col-sm-4 col-form-label fw-bolder text-muted">Fee Selection:</label>
                                                            <div className="col-sm-6">
                                                                <Autocomplete
                                                                    disablePortal
                                                                    id="combo-box-demo"
                                                                    size='small'
                                                                    options={doctorProcedureName}
                                                                    getOptionLabel={(option) => option.fee_name}
                                                                    onChange={(e, v) => {

                                                                        setfeeDetails(v.fee_name)
                                                                        setserchDocID(v.id)
                                                                        console.log("New Value option.fee_name", v);

                                                                        axios.get(`/getdoctors-by-fee-name/${v.id}`).then(res => {
                                                                            console.log("getdoctors-by-fee-name", res.data.getdoctors)
                                                                            setslectedDoctor(res.data.getdoctors)
                                                                        })

                                                                    }}

                                                                    sx={{ width: 255, height: 50 }}
                                                                    renderInput={(params) => <TextField {...params} label="Fee Selection" />}
                                                                />
                                                            </div>
                                                        </div>

                                                        <div className='mt-3 mb-3 d-flex'>
                                                            <select className='mr-2 form-select form-select-sm w-50' onChange={e => {
                                                                setserchDropdown(e.target.value)
                                                                setserchField("")
                                                            }} name="select" id="cars">
                                                                <option selected>Select</option>
                                                                <option value="ItemCode">Item Code</option>
                                                                <option value="name">Name</option>
                                                            </select>
                                                            <input type="text" value={serchField} className='searchField form-control form-control-sm w-50' placeholder='Search' onChange={e => {
                                                                if (serchDropdown == "ItemCode") {
                                                                    setserchField(e.target.value)


                                                                    if (e.target.value.length > 0 && slectedDoctor.length > 0) {
                                                                        const objet = slectedDoctor.filter(item => item.item_code.toLowerCase().match(e.target.value.toLowerCase()))

                                                                        setslectedDoctor(objet)
                                                                    }
                                                                    else {
                                                                        axios.get(`/getdoctors-by-fee-name/${serchDocID}`).then(res => {
                                                                            setslectedDoctor(res.data.getdoctors)
                                                                        })
                                                                    }



                                                                } else {
                                                                    setserchField(e.target.value)
                                                                    console.log("serchDropdown", serchDropdown)


                                                                    if (e.target.value.length > 0 && slectedDoctor.length > 0) {
                                                                        const objet = slectedDoctor.filter(item => item.doctor_id.dr_given_name.toLowerCase().match(e.target.value.toLowerCase()))

                                                                        setslectedDoctor(objet)
                                                                    }
                                                                    else {
                                                                        axios.get(`/getdoctors-by-fee-name/${serchDocID}`).then(res => {
                                                                            setslectedDoctor(res.data.getdoctors)
                                                                        })
                                                                    }
                                                                }
                                                            }} />

                                                            {/* <i className="fa-solid fa-magnifying-glass" style={{ cursor: "pointer", border: "none" }}></i> */}

                                                        </div>
                                                        <div className={slectedDoctor.length > 3 ? `invoice-fee-table m-2 billingTable` : `invoice-fee-table m-2`}>
                                                            <table class="table table-borderless ">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">Item Code</th>
                                                                        <th scope="col">Name</th>
                                                                        <th scope="col">Fees</th>

                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    {
                                                                        slectedDoctor.length > 0 &&

                                                                        slectedDoctor.map((item, i) => {
                                                                            return (
                                                                                <tr key={i} className={selectedFeesDetails.id == item.id ? `tableRowHover tableRowActive` : `tableRowHover`} onClick={() => {
                                                                                    setselectedFeesDetails(item)
                                                                                    setprocedureQty("")
                                                                                }}>
                                                                                    <td >{item.item_code}</td>
                                                                                    <td className='table-item-details'>{item.doctor_id.dr_given_name}</td>
                                                                                    <td>{item.fee_name}</td>
                                                                                </tr>
                                                                            )
                                                                        })
                                                                    }


                                                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>
                                                        </div>
                                                        {/* {
                                                            slectedDoctor.length > 0 &&
                                                            <>
                                                                <div className="row  mb-3">
                                                                    <label className="col-sm-4 col-form-label fw-bolder text-muted">Doctors:</label>
                                                                    <div className="col-sm-6">
                                                                        <Autocomplete
                                                                            disablePortal
                                                                            id="combo-box-demo"
                                                                            options={slectedDoctor}
                                                                            getOptionLabel={(option) => option.doctor_id.dr_given_name}
                                                                            onChange={(e, newValue) => {

                                                                                console.log("doctors Fee", newValue)
                                                                                setdoctorsFee(newValue)
                                                                            }}

                                                                            sx={{ width: 255, height: 50 }}
                                                                            renderInput={(params) => <TextField {...params} label="Doctors" />}
                                                                        />
                                                                        <span className="text-danger">  </span>
                                                                    </div>
                                                                </div>

                                                                {
                                                                    doctorsFee.fee_name > 0 &&
                                                                    <div className="row  mb-3">
                                                                        <label className="col-sm-4 col-form-label fw-bolder text-muted">Doctors Fee:</label>
                                                                        <div className="col-sm-6">
                                                                            <h3>{doctorsFee.fee_name}tk</h3>
                                                                        </div>
                                                                    </div>
                                                                }


                                                            </>
                                                        } */}
                                                        {/* <div className="form-group  ">
                                                            <label className="col-sm-4 col-form-label fw-bolder text-muted col-md-4">All Doctors:</label>
                                                            <div className='w-100'>
                                                                <MaterialTable
                                                                    columns={doctorss}
                                                                    data={doctorSubProcedure}
                                                                    options={{
                                                                        search: true,
                                                                        // filtering: filter,
                                                                        showTitle: false,
                                                                        searchFieldAlignment: "left",
                                                                        pageSize: 5,
                                                                        emptyRowsWhenPaging: false,
                                                                        pageSizeOptions: [5, 10, 20, 50, 100]
                                                                    }}

                                                                />
                                                            </div>

                                                        </div> */}


                                                    </>
                                                }




                                                {selection == 'Procedure' &&

                                                    <>

                                                        <div className="row  mb-3">
                                                            <label className="col-sm-4 col-form-label fw-bolder text-muted">Procedure Category:</label>
                                                            <div className="col-sm-6">
                                                                <Autocomplete
                                                                    disablePortal
                                                                    id="combo-box-demo"
                                                                    size='small'
                                                                    options={procedure}
                                                                    getOptionLabel={(option) => option.procedure_name}
                                                                    onChange={(e, v) => {
                                                                        if (v != null) {

                                                                            setserchProcedureID(v.id)
                                                                            axios.get(`/subProcedureById/${v.id}`).then(res => {
                                                                                setSubProcedure(res.data.subProcedure);

                                                                            })
                                                                        } else {
                                                                            setSubProcedure("");
                                                                        }

                                                                    }}

                                                                    sx={{ width: 265, height: 50 }}
                                                                    renderInput={(params) => <TextField {...params} label="Procedure Name" />}
                                                                />
                                                                <span className="text-danger">  </span>
                                                            </div>
                                                        </div>
                                                        <div className='mt-3 d-flex mb-3'>
                                                            <select className='mr-2 form-select form-select-sm w-50' onChange={e => {
                                                                setserchDropdown(e.target.value)
                                                                setserchField("")
                                                            }} name="select" id="cars">
                                                                <option selected>Select</option>
                                                                <option value="ItemCode">Item Code</option>
                                                                <option value="name">Name</option>
                                                            </select>
                                                            <input type="text" value={serchField} placeholder="Search" className='form-control form-control-sm w-50' onChange={e => {
                                                                if (serchDropdown == "ItemCode") {
                                                                    setserchField(e.target.value)


                                                                    if (e.target.value.length > 0 && subProcedure.length > 0) {
                                                                        const objet = subProcedure.filter(item => item.item_code.toLowerCase().match(e.target.value.toLowerCase()))
                                                                        setSubProcedure(objet)

                                                                    }
                                                                    else {
                                                                        axios.get(`/subProcedureById/${serchProcedureID}`).then(res => {
                                                                            setSubProcedure(res.data.subProcedure);

                                                                        })
                                                                    }



                                                                } else {
                                                                    setserchField(e.target.value)


                                                                    if (e.target.value.length > 0 && subProcedure.length > 0) {
                                                                        const objet = subProcedure.filter(item => item.subProcedure_name.toLowerCase().match(e.target.value.toLowerCase()))

                                                                        setSubProcedure(objet)
                                                                    }
                                                                    else {
                                                                        axios.get(`/subProcedureById/${serchProcedureID}`).then(res => {
                                                                            setSubProcedure(res.data.subProcedure);

                                                                        })
                                                                    }


                                                                }
                                                            }} />

                                                            {/* <i className="fa-solid fa-magnifying-glass" style={{ cursor: "pointer", border: "none" }}></i> */}

                                                        </div>

                                                        <div className={subProcedure.length > 3 ? `invoice-fee-table m-2 billingTable` : `invoice-fee-table m-2`}>
                                                            <table class="table table-borderless">
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">Item Code</th>
                                                                        <th scope="col">Name</th>
                                                                        <th scope="col">Qty</th>
                                                                        <th scope="col">Rate</th>

                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    {
                                                                        subProcedure.length > 0 &&

                                                                        subProcedure.map((item, i) => {
                                                                            return (
                                                                                <tr key={i} className={selectedFeesDetails.id == item.id ? `tableRowHover tableRowActive` : `tableRowHover`} onClick={() => {
                                                                                    setselectedFeesDetails(item)
                                                                                    setfeeDetails(item.subProcedure_name)
                                                                                }}>
                                                                                    <td >{item.item_code}</td>
                                                                                    <Tooltip title={item.subProcedure_name}>
                                                                                        <td className='table-item-details'>{`${item.subProcedure_name.length > 21 ? `${item.subProcedure_name.slice(0, 21)}  ...` : item.subProcedure_name.slice(0, 21)}`}</td>
                                                                                    </Tooltip>
                                                                                    <td ><input onChange={e => setprocedureQty(e.target.value)} type="number" style={{ width: "40px", borderRadius: "5px" }}></input></td>
                                                                                    <td>{item.fee_name}</td>
                                                                                </tr>
                                                                            )
                                                                        })
                                                                    }


                                                                </tbody>
                                                                <tfoot>
                                                                    <tr>
                                                                    </tr>
                                                                </tfoot>
                                                            </table>
                                                        </div>

                                                        {/* <div className="form-group  ">
                                                            <label className="col-sm-4 col-form-label fw-bolder text-muted col-md-4">Procedures:</label>
                                                            <div className='w-100'>
                                                                <MaterialTable
                                                                    columns={columns}
                                                                    data={subProcedure}
                                                                    options={{
                                                                        search: true,
                                                                        // filtering: filter,
                                                                        showTitle: false,
                                                                        searchFieldAlignment: "left",
                                                                        pageSize: 5,
                                                                        emptyRowsWhenPaging: false,
                                                                        pageSizeOptions: [5, 10, 20, 50, 100]
                                                                    }}

                                                                />
                                                            </div>

                                                        </div> */}




                                                    </>
                                                }


                                                {
                                                    selection == 'Others' &&
                                                    <>
                                                        <div className="form-group d-flex ">
                                                            <label className="col-sm-4 me-2 col-form-label">Payment Details:</label>
                                                            <textarea onChange={e => setfeeDetails(e.target.value)} className="form-control col-md-7"></textarea>
                                                        </div>
                                                        <div className="form-group d-flex ">
                                                            <label className="col-sm-4 me-2 col-form-label">Amount :</label>
                                                            <input onChange={e => setselectedFeesDetails({ fee_name: e.target.value })} className="form-control col-md-7"></input>

                                                        </div>
                                                    </>
                                                }

                                            </>
                                            <div className='d-flex justify-content-end mr-5'>
                                                {
                                                    selectedFeesDetails.fee_name ?
                                                        <button className='btn btn-outline-secondary' onClick={feeSubmit}>Add</button> : ''

                                                }
                                            </div>
                                        </div>
                                    </Modal>

                                    {/* <button className='me-2'><img src={edit} alt="" /> Edit</button> */}

                                    {/* <button className=''><img src={del} alt="" /> Delete</button> */}


                                    <Modal
                                        isOpen={editModalIsOpen}
                                        onRequestClose={closeEditModal}
                                        style={customStyles}
                                        contentLabel="Example Modal"
                                    >

                                        <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeModal}><i class="fal fa-times"></i></span>
                                        <h5 className="card-title">Edit Billing</h5>
                                        <div className="card-body">

                                            {editBilling.doctor_id == null &&
                                                <>


                                                    <div className="form-group d-flex ">
                                                        <label className="col-sm-4 me-2 col-form-label fw-bolder text-muted col-md-4">Procedure Code:</label>
                                                        <input type="text" value={editBilling.item_code} className="form-control col-md-7 mt-2" name="item_code" disabled />

                                                    </div>

                                                    <div className="form-group d-flex ">
                                                        <label className="col-sm-4 me-2 col-form-label fw-bolder text-muted col-md-4">Procedure Fee:</label>
                                                        <input type="text" value={editBilling.rate} className="form-control col-md-7 mt-2" name="rate" onChange={handleBillingEditChange} disabled />

                                                    </div>

                                                    <div className="form-group d-flex ">
                                                        <label className="col-sm-4 me-2 col-form-label fw-bolder text-muted col-md-4">Qty:</label>
                                                        <input type="text" value={editBilling.qty} className="form-control col-md-7 mt-2" name="qty" onChange={handleBillingEditChange} />

                                                    </div>
                                                    <div className="form-group d-flex ">
                                                        <label className="col-sm-4 me-2 col-form-label fw-bolder text-muted col-md-4">Details:</label>
                                                        <textarea className="form-control col-md-7 mt-2" type="textarea" value={editBilling.item_details} name="item_details" onChange={handleBillingEditChange} > </textarea>


                                                    </div>
                                                </>

                                            }
                                            {editBilling.procedure_id == null &&
                                                <>
                                                    <div className="form-group d-flex ">
                                                        <label className="col-sm-4 me-2 col-form-label fw-bolder text-muted col-md-4">Doctor Code:</label>
                                                        <input type="text" value={editBilling.item_code} className="form-control col-md-7 mt-2" name="item_code" disabled />

                                                    </div>


                                                    <div className="form-group d-flex ">
                                                        <label className="col-sm-4 col-form-label fw-bolder text-muted col-md-4">Details:</label>
                                                        <textarea className="form-control col-md-7 mt-2" type="textarea" value={editBilling.item_details} name="item_details" onChange={handleBillingEditChange} > </textarea>


                                                    </div>
                                                </>

                                            }


                                            <button type='submit' className='btn btn-success' onClick={updateBilling}> Update</button>
                                        </div>

                                    </Modal>


                                </div>
                            </div>
                            <div className={Billings.length > 3 ? `invoice-fee-table m-2 billingTable` : `invoice-fee-table m-2`}>
                                <table className="table table-borderless">
                                    {
                                        Billings.length > 0 &&
                                        <thead>
                                            <tr>
                                                <th scope="col">Item Code</th>
                                                <th scope="col">Item Details</th>
                                                <th scope="col">Rate</th>
                                                <th scope="col">Qty</th>
                                                <th scope="col">Vat</th>
                                                <th scope="col">Tax</th>
                                                <th scope="col">Total</th>
                                                <th scope="col">Action</th>
                                            </tr>
                                        </thead>
                                    }
                                    <tbody>
                                        {Billings.map((bill, i) => {
                                            return (
                                                <tr key={i} row={bill.id}>
                                                    <td >{bill.item_code}</td>
                                                    <Tooltip title={bill.item_details} placement="top">
                                                        <td className='table-item-details' style={{ cursor: "pointer" }}>{`${bill.item_details.length > 21 ? `${bill.item_details.slice(0, 21)}  ...` : bill.item_details.slice(0, 21)}`}</td>
                                                    </Tooltip>
                                                    <td>{bill.rate}</td>
                                                    <td>{bill.qty == null ? 1 : bill.qty}</td>
                                                    <td>{bill.vat}</td>
                                                    <td>{bill.tax}</td>
                                                    <td>{bill.total}</td>


                                                    <td>
                                                        <i onClick={(e) => deleteBilingHandeler(e, bill.id)} className="far fa-trash-alt float-center" style={{ cursor: "pointer" }}></i>

                                                        {/*<i onClick={(e) => deleteBilingHandeler(e,bill.id)} className="far fa-trash-alt float-end" style={{ cursor: "pointer",padding:"3px" }}></i>
                                                         <i className="far fa-edit float-end me-1" onClick={() => openEditBillingModal(bill.id)}></i> */}
                                                    </td>
                                                </tr>
                                            )

                                        })}
                                    </tbody>
                                </table>
                            </div>
                            <div className="invoice-payment-history mt-3 m-2">
                                <div className="row">
                                    <div className="col-7">
                                        <h6>Payment History</h6>
                                        <div className="payment-table p-3">
                                            <div className="row">
                                                <div className="col-5">
                                                    <h6>Payment Method</h6>
                                                </div>
                                                <div className="col-7">
                                                    <select class="form-select form-select-sm" aria-label=".form-select-sm example" onChange={handlePayment} >
                                                        <option value="">Select Payment</option>
                                                        <option value="card" >Card </option>
                                                        <option value="digital_payment" >Digital Payment</option>
                                                        <option value="cash" >Cash</option>
                                                        <option value="bank" >Bank</option>
                                                    </select>
                                                </div>

                                            </div>


                                            <Modal
                                                isOpen={paymentModalIsOpen}
                                                onRequestClose={closePaymentModal}
                                                style={customStyles}
                                                contentLabel="Payment add Modal"
                                            >
                                                <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closePaymentModal}><i class="fal fa-times"></i></span>
                                                <h5 className="card-title">Payment </h5>
                                                <div className="card-body">

                                                    {card &&
                                                        <>
                                                            <div>
                                                                <label htmlFor="inputPassword4"
                                                                    className="form-label  col-form-label col-form-label-sm">Select Card</label>

                                                                <select id="inputState" onChange={handleCardChange} value={cardPayment.card_id} name="card_id"
                                                                    className="form-select  col-form-label-sm font-size-patient">
                                                                    <option >Select</option>
                                                                    {
                                                                        allCard.map((item) => {
                                                                            return (
                                                                                <option value={item.id} key={item.id}>{item.card_name}</option>
                                                                            )
                                                                        })
                                                                    }
                                                                </select>


                                                            </div>

                                                            <div className="form-group mt-3">
                                                                <label htmlFor="history_name" className="col-form-label-sm"> Card Number </label>
                                                                <input type="number" value={cardPayment.card_number} className="form-control" name="card_number" onChange={handleCardChange} />


                                                            </div>

                                                            <div className="form-group mt-3">
                                                                <label htmlFor="history_name" className="col-form-label-sm"> Amount </label>
                                                                <input type="number" value={cardPayment.amount} className="form-control" name="amount" onChange={handleCardChange} />
                                                            </div>

                                                        </>
                                                    }
                                                    {cash && <>
                                                        <div className="form-group mt-3">
                                                            <label htmlFor="history_name" className="col-form-label-sm"> Amount</label>
                                                            <input type="number" value={cashPayment.amount} className="form-control" name="amount" onChange={handleCashPaymentChange} />
                                                        </div>

                                                    </>}
                                                    {bank && <>


                                                        <div>
                                                            <label htmlFor="inputPassword4"
                                                                className="form-label  col-form-label col-form-label-sm">Select Bank</label>

                                                            <select id="inputState" onChange={handleBankPaymentChange} value={bankPayment.bank_id} name="bank_id"
                                                                className="form-select  col-form-label-sm font-size-patient">
                                                                <option >Select</option>
                                                                {
                                                                    allBank.map((item) => {
                                                                        return (
                                                                            <option value={item.id} key={item.id}>{item.bank_name}</option>
                                                                        )
                                                                    })
                                                                }
                                                            </select>
                                                            {/* <span className="text-danger">{gasreflex.error_list.status_id}</span> */}

                                                        </div>

                                                        <div>
                                                            <label htmlFor="inputPassword4"
                                                                className="form-label  col-form-label col-form-label-sm">Select Branch</label>

                                                            <select id="inputState" onChange={handleBankPaymentChange} value={bankPayment.branch_id} name="branch_id"
                                                                className="form-select  col-form-label-sm font-size-patient">
                                                                <option >Select</option>
                                                                {
                                                                    allBranch.map((item) => {
                                                                        return (
                                                                            <option value={item.id} key={item.id}>{item.branch_name}</option>
                                                                        )
                                                                    })
                                                                }
                                                            </select>
                                                            {/* <span className="text-danger">{gasreflex.error_list.status_id}</span> */}

                                                        </div>

                                                        <div className="form-group mt-3">
                                                            <label htmlFor="history_name" className="col-form-label-sm"> Check Number</label>
                                                            <input type="number" value={bankPayment.check_number} className="form-control" name="check_number" onChange={handleBankPaymentChange} />
                                                            {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                        </div>

                                                        <div className="form-group mt-3">
                                                            <label htmlFor="history_name" className="col-form-label-sm"> Amount</label>
                                                            <input type="number" value={bankPayment.amount} className="form-control" name="amount" onChange={handleBankPaymentChange} />
                                                            {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                        </div>





                                                    </>}
                                                    {digital && <>

                                                        <div>
                                                            <label htmlFor="inputPassword4"
                                                                className="form-label  col-form-label col-form-label-sm">Select Digital</label>

                                                            <select id="inputState" onChange={handleDigitalPaymentChange} value={digitalPayment.digital_id} name="digital_id"
                                                                className="form-select  col-form-label-sm font-size-patient">
                                                                <option >Select</option>
                                                                {
                                                                    allDigital.map((item) => {
                                                                        return (
                                                                            <option value={item.id} key={item.id}>{item.digital_name}</option>
                                                                        )
                                                                    })
                                                                }
                                                            </select>
                                                            {/* <span className="text-danger">{gasreflex.error_list.status_id}</span> */}

                                                        </div>

                                                        <div className="form-group mt-3">
                                                            <label htmlFor="history_name" className="col-form-label-sm"> Transcation Number </label>
                                                            <input type="number" value={digitalPayment.transaction_number} className="form-control" name="transaction_number" onChange={handleDigitalPaymentChange} />
                                                            {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                        </div>

                                                        <div className="form-group mt-3">
                                                            <label htmlFor="history_name" className="col-form-label-sm"> Amount </label>
                                                            <input type="number" value={digitalPayment.amount} className="form-control" name="amount" onChange={handleDigitalPaymentChange} />
                                                            {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                        </div>

                                                    </>}

                                                    <div className='d-flex justify-content-end'>
                                                        {
                                                            cardPayment.amount.length > 0 || cashPayment.amount.length > 0 || bankPayment.amount.length > 0 || digitalPayment.amount.length > 0 ?
                                                                <button className='btn btn-outline-secondary' onClick={submitPayment}>Add Payment</button> : ''

                                                        }
                                                    </div>

                                                </div>



                                            </Modal>
                                            <div className="">
                                                <table className='mt-1 custom_table'>
                                                    <tbody className=''>

                                                        {allPayment.map((payment, i) => {
                                                            return (
                                                                <>
                                                                    <tr key={i} row={payment.id}>
                                                                        {payment.payment_type == null ? '' : <td>{payment.payment_type}</td>}
                                                                        {payment.bank_id == null ? '' : <td >{payment.bank_id.bank_name} </td>}
                                                                        {payment.branch_id == null ? '' : <td >{payment.branch_id.branch_name}</td>}
                                                                        {payment.check_number == null ? '' : <td >{payment.check_number}</td>}
                                                                        {payment.card_id == null ? '' : <td >{payment.card_id.card_name}</td>}
                                                                        {payment.card_number == null ? '' : <td >{payment.card_number}</td>}
                                                                        {payment.digital_id == null ? '' : <td >{payment.digital_id.digital_name}</td>}
                                                                        {payment.transaction_number == null ? '' : <td style={{ maxWidth: "126px" }}>{payment.transaction_number}</td>}
                                                                        {payment.amount == null ? '' : <> <td colSpan="4" style={{ maxWidth: "95px" }}>{payment.amount} tk</td>
                                                                            <td> <i className="far fa-trash-alt float-end" onClick={(e) => deletePayment(e, payment.id)}></i> <i className="far fa-edit float-end me-1" onClick={() => openEditPaymentModal(payment.id)}></i>
                                                                            </td></>
                                                                        }


                                                                    </tr>
                                                                </>
                                                            )

                                                        })}


                                                        {/* <tr>
                                                        <td colSpan="2">Cash</td>
                                                        <td>$ 500  <i className="far fa-trash-alt float-end"></i> <i className="far fa-edit float-end me-1"></i></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Master Card</td>
                                                        <td>12354-234-23423</td>
                                                        <td>$ 500 <i className="far fa-trash-alt float-end"></i> <i className="far fa-edit float-end me-1"></i></td>
                                                    </tr> */}
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>

                                    <Modal
                                        isOpen={editPaymentModalIsOpen}
                                        onRequestClose={closeEditPaymentModal}
                                        style={customStyles}
                                        contentLabel="Edit Payment Modal"
                                    >

                                        <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeEditPaymentModal}><i class="fal fa-times"></i></span>
                                        <h5 className="card-title">Edit Payment</h5>
                                        <div className="card-body">

                                            {editPayment.payment_type == "Cash" && <>
                                                <div className="form-group mt-3">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Amount</label>
                                                    <input type="number" value={editPayment.amount} className="form-control" name="amount" onChange={handlePaymentEditChange} />
                                                    {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                </div>

                                            </>
                                            }
                                            {editPayment.payment_type == "Digital Payment" && <>

                                                <div>
                                                    <label htmlFor="inputPassword4"
                                                        className="form-label  col-form-label col-form-label-sm">Select Digital</label>

                                                    <select id="inputState" onChange={handlePaymentEditChange} value={editPayment.digital_id} name="digital_id"
                                                        className="form-select  col-form-label-sm font-size-patient">
                                                        <option >Select</option>
                                                        {
                                                            allDigital.map((item) => {
                                                                return (
                                                                    <option value={item.id} key={item.id}>{item.digital_name}</option>
                                                                )
                                                            })
                                                        }
                                                    </select>
                                                    {/* <span className="text-danger">{gasreflex.error_list.status_id}</span> */}

                                                </div>

                                                <div className="form-group mt-3">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Transcation Number </label>
                                                    <input type="number" value={editPayment.transaction_number} className="form-control" name="transaction_number" onChange={handlePaymentEditChange} />
                                                    {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                </div>

                                                <div className="form-group mt-3">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Amount </label>
                                                    <input type="number" value={editPayment.amount} className="form-control" name="amount" onChange={handlePaymentEditChange} />
                                                    {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                </div>

                                            </>
                                            }

                                            {editPayment.payment_type == "Bank" && <>


                                                <div>
                                                    <label htmlFor="inputPassword4"
                                                        className="form-label  col-form-label col-form-label-sm">Select Bank</label>

                                                    <select id="inputState" onChange={handlePaymentEditChange} value={editPayment.bank_id} name="bank_id"
                                                        className="form-select  col-form-label-sm font-size-patient">
                                                        <option >Select</option>
                                                        {
                                                            allBank.map((item) => {
                                                                return (
                                                                    <option value={item.id} key={item.id}>{item.bank_name}</option>
                                                                )
                                                            })
                                                        }
                                                    </select>
                                                    {/* <span className="text-danger">{gasreflex.error_list.status_id}</span> */}

                                                </div>

                                                <div>
                                                    <label htmlFor="inputPassword4"
                                                        className="form-label  col-form-label col-form-label-sm">Select Branch</label>

                                                    <select id="inputState" onChange={handlePaymentEditChange} value={editPayment.branch_id} name="branch_id"
                                                        className="form-select  col-form-label-sm font-size-patient">
                                                        <option >Select</option>
                                                        {
                                                            allBranch.map((item) => {
                                                                return (
                                                                    <option value={item.id} key={item.id}>{item.branch_name}</option>
                                                                )
                                                            })
                                                        }
                                                    </select>
                                                    {/* <span className="text-danger">{gasreflex.error_list.status_id}</span> */}

                                                </div>

                                                <div className="form-group mt-3">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Check Number</label>
                                                    <input type="number" value={editPayment.check_number} className="form-control" name="check_number" onChange={handlePaymentEditChange} />
                                                    {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                </div>

                                                <div className="form-group mt-3">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Amount</label>
                                                    <input type="number" value={editPayment.amount} className="form-control" name="amount" onChange={handlePaymentEditChange} />
                                                    {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                </div>





                                            </>
                                            }

                                            {editPayment.payment_type == "Card" &&
                                                <>
                                                    <div>
                                                        <label htmlFor="inputPassword4"
                                                            className="form-label  col-form-label col-form-label-sm">Select Card</label>

                                                        <select id="inputState" onChange={handlePaymentEditChange} value={editPayment.card_id} name="card_id"
                                                            className="form-select  col-form-label-sm font-size-patient">
                                                            <option >Select</option>
                                                            {
                                                                allCard.map((item) => {
                                                                    return (
                                                                        <option value={item.id} key={item.id}>{item.card_name}</option>
                                                                    )
                                                                })
                                                            }
                                                        </select>
                                                        {/* <span className="text-danger">{gasreflex.error_list.status_id}</span> */}

                                                    </div>

                                                    <div className="form-group mt-3">
                                                        <label htmlFor="history_name" className="col-form-label-sm"> Card Number </label>
                                                        <input type="number" value={editPayment.card_number} className="form-control" name="card_number" onChange={handlePaymentEditChange} />
                                                        {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                    </div>

                                                    <div className="form-group mt-3">
                                                        <label htmlFor="history_name" className="col-form-label-sm"> Amount </label>
                                                        <input type="number" value={editPayment.amount} className="form-control" name="amount" onChange={handlePaymentEditChange} />
                                                        {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                                                    </div>

                                                </>
                                            }



                                            <button type='submit' onClick={() => updatePayment()} className='btn btn-success' >Update Payment</button>
                                        </div>

                                    </Modal>




                                    <div className="col-5 mt-4 total-amount-table">
                                        <table className='table table-borderless'>
                                            <tbody>
                                                <tr>
                                                    <td>Sub Total</td>


                                                    <td>{totalSubtotal} BDT</td>
                                                </tr>
                                                <tr>
                                                    <td>Discount</td>
                                                    <td>{totalDiscount} BDT</td>
                                                </tr>
                                                <tr>
                                                    <td>Total Tax</td>
                                                    <td> {totalTax} BDT</td>
                                                </tr>
                                                <tr style={{ borderTop: "1px solid #CFCCCC" }}>
                                                    <td>Total Amount</td>
                                                    <td> {totalSubtotal} BDT</td>
                                                    {/* <td>$ {grandTotal}</td> */}
                                                </tr>

                                                <tr>
                                                    <td>Recive amount</td>
                                                    <td>- {totalPaymentSum} BDT</td>
                                                </tr>

                                                <tr style={{ borderTop: "1px solid #CFCCCC" }}>
                                                    {

                                                        take > 0 ?
                                                            <>
                                                                <td>Return</td>
                                                                <td>{take} BDT</td>
                                                            </>
                                                            : <>
                                                                <td>Due</td>
                                                                <td>{take} BDT</td>
                                                            </>


                                                    }

                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="col-md-5">
                            <div className="invoice-patient-detail-card ms-4 me-3 p-3 mt-3">
                                <div className="d-flex justify-content-between">
                                    <h6>Patient Details</h6>
                                    <i className="fas fa-ellipsis-h invoice-context"></i>
                                </div>
                                <div className="invoice-patient-detail-img d-flex mt-2">

                                    <div>
                                        {patientDetails.patient_images !== "" ? <img className="me-2" src={`${global.img_url}/images/files/${patientDetails.patient_images}`} width="20px" alt="No Image" /> : <img className="me-2" src={`https://static.thenounproject.com/png/363640-200.png`} width="20px" alt="No Image" />}
                                    </div>

                                    <div>
                                        <h6>{`${patientDetails.patient_first_name != null && patientDetails.patient_first_name} ${patientDetails.patient_last_name != null && patientDetails.patient_last_name} ${patientDetails.patient_preferred_name != null && patientDetails.patient_preferred_name}`}</h6>
                                        <p>{patientDetails.patient_email}</p>
                                        <p><i className="fas fa-map-marker-alt me-1"></i> 9878 Laurel Street 70806,Sydney Australia</p>
                                    </div>
                                </div>
                            </div>
                            <div className="inoice-amount-card ms-4 me-3 p-3 mt-3">

                                {

                                    take > 0 ?
                                        <>
                                            <div className="d-flex justify-content-between">

                                                <div className='d-flex'><h6>Return Amount</h6> <span className='ms-2'>(BDT)</span></div>
                                                <i className="fas fa-ellipsis-h invoice-context"></i>
                                            </div>
                                            <div className="amount d-flex">
                                                <h3>{take} BDT</h3> <span className='ms-2 mt-2'>(Tax Incl.)</span>
                                            </div>
                                        </>
                                        : <>
                                            <div className="d-flex justify-content-between">

                                                <div className='d-flex'><h6>{take == 0 ? "Amount" : "Due Amount"}</h6> <span className='ms-2'>(BDT)</span></div>
                                                <i className="fas fa-ellipsis-h invoice-context"></i>
                                            </div>
                                            <div className="amount d-flex">
                                                <h3>{Math.abs(take)} BDT</h3> <span className='ms-2 mt-2'>(Tax Incl.)</span>
                                            </div>
                                        </>


                                }


                                <div className='mt-2 mb-5'>
                                </div>
                            </div>
                            <div className="invoice-right-button-groupms-4 me-3 p-3 mt-3">
                                <div className="row ms-2">
                                    <div className="col-6">
                                        {
                                            Billings.length > 0 ?
                                                <button onClick={handlePeview} className="preview-btn w-100"><i className="far fa-eye me-2"></i> Preview</button>
                                                :
                                                <button onClick={() => {
                                                    swal("warning!", "Your bill is empty! please add bill", "warning");
                                                }} className="preview-btn w-100"><i className="far fa-eye me-2"></i> Preview</button>
                                        }

                                    </div>
                                    <div className="col-6">
                                        {
                                            Billings.length > 0 ?
                                                <button onClick={handlePeview} className="preview-btn w-100"><i className="far fa-cloud-download me-2"></i> Download</button>
                                                :
                                                <button onClick={() => {
                                                    swal("warning", "Your bill is empty!please add bill", "warning");
                                                }} className="preview-btn w-100"><i className="far fa-cloud-download me-2"></i> Download</button>

                                        }
                                    </div>


                                    {
                                        invoLoding === false ?
                                            Billings.length > 0 &&
                                            <button onClick={saveInvoice} className="save-invoice-btn w-100 ms-2 mt-5"><i className="far fa-save me-2"></i> Save Invoice</button>
                                            :
                                            <button className="save-invoice-btn w-100 ms-2 mt-5"><i className="far fa-save me-2"></i>Loading....</button>

                                    }                                    <button className="send-invoice-btn w-100 ms-2 mt-2"><i className="fal fa-paper-plane me-2"></i>Send Invoice</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default BillingInvoice;