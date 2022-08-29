import React, { useEffect, useState } from 'react';
import './GreatDoc.css';
import Modal from 'react-modal';
import axios from 'axios';
import Swal from 'sweetalert2';
const ContactModal = (props) => {
    const [allContact, setAllContact] = useState([])
    const [activeItem, setActiveItem] = useState({
        id: '',
        contact_name: "",
        category: "",
        comment: "",
        address: "",
        phone: "",
        fax: "",
        subject: ""
    });
    const [updateContact, setUpdateContact] = useState()
    useEffect(() => {
        axios.get("/all-contact").then(res => setAllContact(res.data.data))
    }, [updateContact]);
    const [modalIsOpen, setModalIsOpen] = useState(false);
    function closeModal() {
        setModalIsOpen(false);
    }
    const customStyles = {
        content: {
            top: '30%',
            left: '30%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "55%",
            height: "350px",
            padding: "5px",
            overflow: "hidden"
        },

    };
    const [contactData, setContactData] = useState({
        contact_name: "",
        category: "",
        department: "",
        address: "",
        phone: "",
        fax: "",
        comment: ""
    });

    const handleSubmit = () => {
        axios.post("/add-contact", contactData).then(res => {
            if (res.data.status === 200) {
                setUpdateContact(Math.random())
                Swal.fire(
                    res.data.message,
                    'Success..!',
                    'success'
                )

            }
        })
    }

    const deleteContact = () => {
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
                axios.delete(`/delete-contact/${activeItem.id}`).then(res => {
                    if (res.data.status === 200) {
                        setUpdateContact(Math.random())
                        setActiveItem({
                            id: '',
                            contact_name: "",
                            category: "",
                            comment: "",
                            address: "",
                            phone: "",
                            fax: "",
                            subject: ""
                        })
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


    return (
        <div className='contact-modal-container'>
            <div className="row p-2">
                <div className="col-5 row">
                    <div className="col-8">
                        <input type="text" onChange={(e) => {
                            const data = allContact.filter(item => item.contact_name.toLowerCase().match(e.target.value.toLowerCase()));
                            e.target.value.length > 0 ?
                                setAllContact(data) :  setUpdateContact([...allContact])
                        }
                     } className="form-control form-control-sm" placeholder='Search' />
                    </div>
                    <div className="col-4 rx-one-button-group">
                        {/* <button className="btn">Advanced Search</button> */}
                    </div>
                </div>
                {/* <div className="col-7 row">
                    <div className="col-4">
                        <select className="form-select form-select-sm" aria-label=".form-select-sm example">
                            <option defaultValue={"Search By"}>Search By</option>
                            <option value="Name">Name</option>
                            <option value="Post code">Post code</option>
                            <option value="Country">Country</option>
                        </select>
                    </div>
                    <div className="col-4">
                        <select className="form-select form-select-sm" aria-label=".form-select-sm example">
                            <option defaultValue={"Category"}>Category</option>
                            <option value="Allergy">Allergy</option>
                            <option value="Cardiology">Cardiology</option>
                            <option value="Asthma">Asthma</option>
                            <option value="Ent">Ent</option>
                        </select>
                    </div>
                    <div className="col-4">
                        <select className="form-select form-select-sm" aria-label=".form-select-sm example">
                            <option defaultValue={"Search By"}>Include</option>
                            <option value="All">All</option>
                            <option value="Individuals">Individuals</option>
                            <option value="Companies/Institution">Companies/Institution</option>
                        </select>
                    </div>
                </div> */}
            </div>
            <div className="row p-2">
                <h6 className="my-2">Select record from list</h6>
                <div className="col-6">
                    <table className="table table-bordered text-center">
                        <tbody>
                            <tr className='contact-thead'>
                                <td>Contact Name</td>
                                <td>Category</td>
                                <td>Comment</td>
                            </tr>
                            {
                                allContact.map((item, i) => <tr className={`${activeItem.id === item.id ? "active-contact" : ''}`} key={i}>
                                    <td onClick={() => setActiveItem(item)} >{item.contact_name}</td>
                                    <td onClick={() => setActiveItem(item)} >{item.category}</td>
                                    <td onClick={() => setActiveItem(item)} >{item.comment}</td>
                                </tr>)
                            }
                        </tbody>
                    </table>
                </div>
                <div className="col-6">
                    <div className="border rounded contact-modal-detail">
                        <div className="contact-modal-header">
                            <h6 className="my">{activeItem.contact_name} {activeItem.contact_name === '' && "Contact Name"}  </h6>
                        </div>
                        <p className="contact__detail__heading">{activeItem.category} {activeItem.category === "" && "Category"}</p>
                        <span>{activeItem.subject}</span>
                        <span>{activeItem.address}</span>
                        <span>{activeItem.phone && "Phone : "} {activeItem.phone}</span>
                        <span>{activeItem.fax && "Fax : "} {activeItem.fax}</span>
                        <p className="contact__detail__heading">Comment</p>
                        <span>{activeItem.comment}</span>
                    </div>
                </div>
            </div>
            <div className="d-flex justify-content-end mt-2 pb-3">
                <div className="rx-one-button-group">
                    <button onClick={() => setModalIsOpen(true)} className="btn me-2">Add New</button>
                    <button onClick={deleteContact} className="btn me-2">Delete</button>
                    <button onClick={() => props.closeContactModal()} className="btn me-2">Close</button>
                </div>
            </div>
            <Modal
                isOpen={modalIsOpen}
                onRequestClose={closeModal}
                style={customStyles}
                contentLabel="Example Modal"
            >
                <span className='float-end'><i className="fal fa-times" onClick={closeModal} style={{ cursor: 'pointer' }}></i></span>
                <h6 style={{ fontSize: "14px" }}>Add referral contact</h6>
                <hr />
                <div className="row p-2">
                    <div className="col-6 p-1">
                        <div className="row">
                            <label for="colFormLabelSm" className="col-sm-3 col-form-label col-form-label-sm">Contact Name</label>
                            <div className="col-sm-9">
                                <input type="text" onChange={(e) => setContactData({ ...contactData, contact_name: e.target.value })} className="form-control form-control-sm" id="colFormLabelSm" />
                            </div>
                        </div>
                        <div className="row mb-2">
                            <label for="colFormLabelSm" className="col-sm-3 col-form-label col-form-label-sm">Category</label>
                            <div className="col-sm-9">
                                <input type="text" onChange={(e) => setContactData({ ...contactData, category: e.target.value })} className="form-control form-control-sm" id="colFormLabelSm" />
                            </div>
                        </div>
                        <div className="row mb-2">
                            <label for="colFormLabelSm" className="col-sm-3 col-form-label col-form-label-sm">Department</label>
                            <div className="col-sm-9">
                                <input type="text" onChange={(e) => setContactData({ ...contactData, department: e.target.value })} className="form-control form-control-sm" id="colFormLabelSm" />
                            </div>
                        </div>
                    </div>
                    <div className="col-6 p-1">
                        <div className="row mb-3">
                            <label for="colFormLabelSm" className="col-sm-3 col-form-label col-form-label-sm">Address</label>
                            <div className="col-sm-9">
                                <input type="text" onChange={(e) => setContactData({ ...contactData, address: e.target.value })} className="form-control form-control-sm" id="colFormLabelSm" />
                            </div>
                        </div>
                        <div className="row mb-2">
                            <label for="colFormLabelSm" className="col-sm-3 col-form-label col-form-label-sm">Phone</label>
                            <div className="col-sm-9">
                                <input type="text" onChange={(e) => setContactData({ ...contactData, phone: e.target.value })} className="form-control form-control-sm" id="colFormLabelSm" />
                            </div>
                        </div>
                        <div className="row mb-2">
                            <label for="colFormLabelSm" className="col-sm-3 col-form-label col-form-label-sm">Fax</label>
                            <div className="col-sm-9">
                                <input type="text" onChange={(e) => setContactData({ ...contactData, fax: e.target.value })} className="form-control form-control-sm" id="colFormLabelSm" />
                            </div>
                        </div>
                    </div>
                    <div class="form-floating">
                        <textarea class="form-control" onChange={(e) => setContactData({ ...contactData, comment: e.target.value })} placeholder="Leave a comment here" style={{ height: "55px" }} id="floatingTextarea"></textarea>
                        <label for="floatingTextarea">Comments</label>
                    </div>
                    <div className="d-flex justify-content-end mt-3">
                        <div className="rx-one-button-group">
                            <button onClick={handleSubmit} className="btn me-2">Save</button>
                            <button onClick={closeModal} className="btn me-2">Cancel</button>
                        </div>
                    </div>
                </div>
            </Modal>
        </div>
    );
};

export default ContactModal;