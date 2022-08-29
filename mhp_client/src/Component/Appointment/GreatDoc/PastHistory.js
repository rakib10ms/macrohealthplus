import { Autocomplete, TextField } from '@mui/material';
import axios from 'axios';
import React, { useState, useEffect } from 'react';
import Modal from 'react-modal';
import Swal from 'sweetalert2';
import moment from 'moment';
const PastHistory = (props) => {
    const customStyles1 = {
        content: {
            top: '35%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "35%",
            height: "380px",
            background: "#ffffff",
            padding: "15px"
        },

    };
    const [modalIsOpen, setIsOpen] = React.useState(false);
    function openModal() {
        setIsOpen(true);
    }
    function closeModal() {
        setIsOpen(false);
    }
    const [modalIsOpen1, setIsOpen1] = React.useState(false);
    function openModal1() {
        setIsOpen1(true);
    }
    function closeModal1() {
        setIsOpen1(false);
    }
    const [pastHistory, setPastHistory] = useState([]);
    const [doctors, setDoctors] = useState([]);
    const [valueUpdate, setValueUpdate] = useState();
    useEffect(() => {
        if (props.patient_id !== null) {
            axios.get(`/past-history/${props.patient_id}`)
                .then(res => {
                    setPastHistory(res.data.past_history)
                });
        }

        axios.get(`/doctors`).then(res => setDoctors(res.data.doctors))
    }, [valueUpdate, props.patient_id]);

    const [pastHistoryData, setPastHistoryData] = useState({
        date: "",
        doctor_id: "",
        patient_id: props.patient_id,
        condition: "",
        saverty: "",
        description: "",
        summary: "",
        confidential: "",
        myHealthRecord: "",
        details: "",

    })
    const [editId, setEditId] = useState("")
    const handleSubmit = (e) => {
        const data = {
            date: pastHistoryData.date,
            doctor_id: pastHistoryData.doctor_id,
            patient_id: props.patient_id,
            condition: pastHistoryData.condition,
            saverty: pastHistoryData.saverty,
            description: pastHistoryData.description,
            summary: pastHistoryData.summary,
            confidential: pastHistoryData.confidential,
            myHealthRecord: pastHistoryData.myHealthRecord,
            details: pastHistoryData.details,
        }
        e.preventDefault();
        axios.post('/past-history-save', data).then(res => {

            if (res.data.status === 200) {
                Swal.fire(
                    res.data.message,
                    'Success..!',
                    'success'
                )
                e.target.reset();
                setValueUpdate(Math.random())
            }
            else {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: res.data.error_msg.email,
                })
            }



        })
    }
    const deleteHistory = (id, e) => {
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
                axios.delete(`/past-history-delete/${id}`).then(res => {
                    if (res.data.status === 200) {
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
    async function editHistory(id, e) {
        await axios.get(`/past-history-edit/${id}`).then(res => setPastHistoryData(res.data.past_history));
        openModal1();
        setEditId(id)
    }

    const updateHistory = (e) => {
        e.preventDefault();
        axios.post(`/past-history-update/${editId}`, pastHistoryData).then(res => {

            if (res.data.status === 200) {
                Swal.fire(
                    res.data.message,
                    'Success..!',
                    'success'
                )
                setValueUpdate(valueUpdate + 1)
            }
            else {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: res.data.error_msg.email,
                })
            }



        })
    }

    return (
        <div className='mt-2'>
            <div className="rx-one-button-group">
                <button onClick={openModal} className="btn float-end me-2 mb-2">Add Past History</button>
                <Modal
                    isOpen={modalIsOpen}
                    onRequestClose={closeModal}
                    style={customStyles1}
                    contentLabel="Example Modal"
                >

                    <span className='float-end' style={{ fontSize: "15px", marginTop: "-5px", cursor: "pointer" }} onClick={closeModal}><i class="fal fa-times"></i></span>
                    <h6>Add Past History</h6>
                    <form onSubmit={handleSubmit}>
                        <div className="pastmodal_input row">
                            <div class="col-md-6 mb-2">
                                <label for="inputEmail4" class="form-label">Date</label>
                                <input type="date" onChange={(e) => setPastHistoryData({ ...pastHistoryData, date: e.target.value })} class="form-control" id="inputEmail4" />
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="inputPassword4" class="form-label">Condition</label>
                                <input type="text" onChange={(e) => setPastHistoryData({ ...pastHistoryData, condition: e.target.value })} class="form-control" id="inputPassword4" />
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="inputPassword4" class="form-label">Severty</label>
                                <input type="text" onChange={(e) => setPastHistoryData({ ...pastHistoryData, saverty: e.target.value })} class="form-control" id="inputPassword4" />
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="inputPassword4" class="form-label">Description</label>
                                <input type="text" onChange={(e) => setPastHistoryData({ ...pastHistoryData, description: e.target.value })} class="form-control" id="inputPassword4" />
                            </div>

                            <div className="col-6 mb-2">
                                <div className="mb-3">
                                    <label for="exampleFormControlTextarea1" className="form-label">Details</label>
                                    <textarea className="form-control" onChange={(e) => setPastHistoryData({ ...pastHistoryData, details: e.target.value })} id="exampleFormControlTextarea1" rows="2"></textarea>
                                </div>
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="exampleFormControlTextarea1" className="form-label">Doctor </label>
                                <Autocomplete
                                    disablePortal
                                    id="combo-box-demo"
                                    options={doctors}
                                    loadingText='loading...'
                                    size="small"
                                    getOptionLabel={(option) => option.dr_given_name}
                                    onChange={(e, value) => { setPastHistoryData({ ...pastHistoryData, doctor_id: value.id }) }}

                                    renderInput={(params) => <TextField sx={{ width: "100%", height: 10 }} {...params} label="Doctor" />}
                                />
                            </div>
                            <div class="col-md-6 mb-2">
                                <div className="row">
                                    <div className="col-7">
                                        <label >Summary : </label>
                                    </div>
                                    <div className="col-5">
                                        <input class="me-1  " type="radio" onChange={(e) => setPastHistoryData({ ...pastHistoryData, summary: "Yes" })} name="rad" id="gridCheck" />
                                        <label class="" for="gridCheck">
                                            Yes
                                        </label>
                                        <input class="mx-1 " type="radio" onChange={(e) => setPastHistoryData({ ...pastHistoryData, summary: "No" })} name="rad" id="gridCheck" />
                                        <label class="" for="gridCheck">
                                            No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-2">
                                <div className="row">
                                    <div className="col-7">
                                        <label >Confidential : </label>
                                    </div>
                                    <div className="col-5">
                                        <input class="me-1 " type="radio" onChange={(e) => setPastHistoryData({ ...pastHistoryData, confidential: "Yes" })} name="rad1" id="gridCheck" />
                                        <label class="" for="gridCheck">
                                            Yes
                                        </label>
                                        <input class="mx-1" type="radio" onChange={(e) => setPastHistoryData({ ...pastHistoryData, confidential: "No" })} name="rad1" id="gridCheck" />
                                        <label class="" for="gridCheck">
                                            No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row rx-one-button-group">
                                <div class="col-md-6">
                                    <div className="row">
                                        <div className="col-7">
                                            <label >My Health Record : </label>
                                        </div>
                                        <div className="col-5">
                                            <input class="me-1" type="radio" onChange={(e) => setPastHistoryData({ ...pastHistoryData, myHealthRecord: "Yes" })} name="rad2" id="gridCheck" />
                                            <label class="" for="gridCheck">
                                                Yes
                                            </label>
                                            <input class="mx-1" type="radio" onChange={(e) => setPastHistoryData({ ...pastHistoryData, myHealthRecord: "No" })} name="rad2" id="gridCheck" />
                                            <label class="" for="gridCheck">
                                                No
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div className="col-6 ">
                                    <button class="btn float-end mt-2" type='submit'>Save</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </Modal>
            </div>

            <div className="past-history-table">
                {
                    pastHistory.length > 0 ?
                        <table className="past_rx_table">
                            <thead>
                                <tr>
                                    <th scope="col">Date</th>
                                    <th scope="col">Condition</th>
                                    <th scope="col">Severty</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Summary</th>
                                    <th scope="col">Confidential</th>
                                    <th scope="col">My Health Record</th>
                                    <th scope="col">Details</th>
                                    <th scope="col">Recorded By</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                {
                                    pastHistory.length > 0 &&
                                    pastHistory.map((item, i) => {
                                        return (
                                            <tr key={i}>
                                                <td>{moment(item.date).format("DD/MM/YYYY")}</td>
                                                <td>{item.condition}</td>
                                                <td>{item.saverty}</td>
                                                <td>{item.description}</td>
                                                <td>{item.summary}</td>
                                                <td>{item.confidential}</td>
                                                <td>{item.myHealthRecord}</td>
                                                <td>{item.details}</td>
                                                <td>{item.doctor && item.doctor.dr_given_name}</td>
                                                <td><i onClick={(e) => editHistory(item.id, e)} className="fal fa-edit me-1"></i><i onClick={(e) => deleteHistory(item.id, e)} className="fal fa-trash-alt me-1"></i></td>
                                            </tr>
                                        )
                                    })

                                }

                            </tbody>
                        </table>
                        :
                        <i style={{ fontSize: "26px", marginLeft: "40%", marginTop: "2%" }} class="fas fa-spinner fa-spin"></i>
                }

                <Modal
                    isOpen={modalIsOpen1}
                    onRequestClose={closeModal1}
                    style={customStyles1}
                    contentLabel="Example Modal"
                >

                    <span className='float-end' style={{ fontSize: "15px", marginTop: "-5px", cursor: "pointer" }} onClick={closeModal1}><i class="fal fa-times"></i></span>
                    <h6>Edit Past History</h6>
                    <form onSubmit={updateHistory}>
                        <div className="pastmodal_input row">
                            <div class="col-md-6 mb-2">
                                <label for="inputEmail4" class="form-label">Date</label>
                                <input type="date" value={pastHistoryData.date} onChange={(e) => setPastHistoryData({ ...pastHistoryData, date: e.target.value })} class="form-control" id="inputEmail4" />
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="inputPassword4" class="form-label">Condition</label>
                                <input type="text" value={pastHistoryData.condition} onChange={(e) => setPastHistoryData({ ...pastHistoryData, condition: e.target.value })} class="form-control" id="inputPassword4" />
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="inputPassword4" class="form-label">Severty</label>
                                <input type="text" value={pastHistoryData.saverty} onChange={(e) => setPastHistoryData({ ...pastHistoryData, saverty: e.target.value })} class="form-control" id="inputPassword4" />
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="inputPassword4" class="form-label">Description</label>
                                <input type="text" value={pastHistoryData.description} onChange={(e) => setPastHistoryData({ ...pastHistoryData, description: e.target.value })} class="form-control" id="inputPassword4" />
                            </div>

                            <div className="col-6 mb-2">
                                <div className="mb-3">
                                    <label for="exampleFormControlTextarea1" className="form-label">Details</label>
                                    <textarea className="form-control" value={pastHistoryData.details} onChange={(e) => setPastHistoryData({ ...pastHistoryData, details: e.target.value })} id="exampleFormControlTextarea1" rows="2"></textarea>
                                </div>
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="exampleFormControlTextarea1" className="form-label">Doctor </label>
                                <Autocomplete
                                    disablePortal
                                    id="combo-box-demo"
                                    size="small"
                                    options={doctors}
                                    loadingText='loading...'
                                    getOptionLabel={(option) => option.dr_given_name}
                                    onChange={(e, value) => { setPastHistoryData({ ...pastHistoryData, doctor_id: value.id }) }}


                                    renderInput={(params) => <TextField sx={{ width: "100%", height: 10 }} {...params} label="Doctor" />}
                                />
                            </div>
                            <div class="col-md-6 mb-2">
                                <div className="row">
                                    <div className="col-7">
                                        <label >Summary : </label>
                                    </div>
                                    <div className="col-5">
                                        <input class="me-1" type="radio" defaultChecked={pastHistoryData.summary === "Yes" && true} onChange={(e) => setPastHistoryData({ ...pastHistoryData, summary: "Yes" })} name="rad" id="gridCheck" />
                                        <label class="" for="gridCheck">
                                            Yes
                                        </label>
                                        <input class="mx-1 " type="radio" defaultChecked={pastHistoryData.summary === "No" && true} onChange={(e) => setPastHistoryData({ ...pastHistoryData, summary: "No" })} name="rad" id="gridCheck" />
                                        <label class="" for="gridCheck">
                                            No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-2">
                                <div className="row">
                                    <div className="col-7">
                                        <label >Confidential : </label>
                                    </div>
                                    <div className="col-5">
                                        <input class="me-1 " type="radio" defaultChecked={pastHistoryData.confidential === "Yes" && true} onChange={(e) => setPastHistoryData({ ...pastHistoryData, confidential: "Yes" })} name="rad1" id="gridCheck" />
                                        <label class="" for="gridCheck">
                                            Yes
                                        </label>
                                        <input class="mx-1" type="radio" defaultChecked={pastHistoryData.confidential === "No" && true} onChange={(e) => setPastHistoryData({ ...pastHistoryData, confidential: "No" })} name="rad1" id="gridCheck" />
                                        <label class="" for="gridCheck">
                                            No
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="row rx-one-button-group">
                                <div class="col-md-6">
                                    <div className="row">
                                        <div className="col-7">
                                            <label >My Health Record : </label>
                                        </div>
                                        <div className="col-5">
                                            <input class="me-1" type="radio" defaultChecked={pastHistoryData.myHealthRecord === "Yes" ? true : false} onChange={(e) => setPastHistoryData({ ...pastHistoryData, myHealthRecord: "Yes" })} name="rad2" id="gridCheck" />
                                            <label class="" for="gridCheck">
                                                Yes
                                            </label>
                                            <input class="mx-1" type="radio" defaultChecked={pastHistoryData.myHealthRecord === "No" ? true : false} onChange={(e) => setPastHistoryData({ ...pastHistoryData, myHealthRecord: "No" })} name="rad2" id="gridCheck" />
                                            <label class="" for="gridCheck">
                                                No
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div className="col-6 ">
                                    <button class="btn float-end mt-2" type='submit'>Update</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </Modal>
            </div>
        </div>
    );
};

export default PastHistory;