import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import moment from 'moment';
import { ToastContainer, toast } from 'react-toastify';
import Swal from "sweetalert2";

function DoctorsChamber() {
    const [allTimeList, setAllTimeList] = useState([]);
    const [allDoctors, setAllDoctors] = useState([]);
    const [doctorValue, setDoctorValue] = useState('all');
    const [doctorTimes, setDoctorTimes] = useState([]);

    console.log('doctor value change', doctorValue)

    useEffect(() => {
        axios.get(`/doctor-chamber-all`).then(res => {
            if (res.data.status === 200) {
                setAllTimeList(res.data.docTimeSlots);
            }
        });
        axios.get(`/doctors`).then(res => {
            console.log(res.data);
            if (res.data.status == 200) {
                setAllDoctors(res.data.doctors);
                // setDoctorName(res.data.doctors.dr_given_name);
            }
        })

    }, [])


    useEffect(() => {
        if (doctorValue == 'all') {
            axios.get(`/doctor-chamber-all`).then(res => {
                if (res.data.status == 200) {
                    setAllTimeList(res.data.docTimeSlots);
                }
            });
        }
        else {
            axios.get(`/doctor-chamber-times/${doctorValue}`).then(res => {
                if (res.data.status == 200) {
                    setAllTimeList(res.data.docTimeSlots);
                    // setDoctorTimesSort(res.data.docTimeSlots);
                }
            })
        }

    }, [doctorValue])



    const handleDoctorChange = (e) => {
        setDoctorValue(e.target.value);
    }


    const deleteChamber = (e, id) => {
        console.log('a', id);
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
                axios.post(`/delete-doctors-chamber/${id}`).then(res => {
                    if (res.data.status === 200) {
                        thisClicked.closest("tr").remove();
                        //   swal("Success", res.data.message, "success");
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
        <div className="ms-2">
            <div className="row">
                <div className="col-12">
                    <div className="custom-card mt-2 mb-2 p-2">
                        <h5 className="card-title">Appointment List</h5>
                    </div>
                    <div className="custom-card p-1">
                        <div className="d-flex mt-2  mb-2 me-2 align-items-center justify-content-end">

                            <div className="col-2">
                                <Link to='/add-doctors-chamber' className="btn btn-success btn-sm "> Add Time Slots </Link>
                            </div>


                            <div className="col-3" style={{ marginLeft: '-10px' }}>
                                <select class="form-select" aria-label="Default select example" onChange={handleDoctorChange} value={doctorValue}>
                                    <option selected value="all">All Doctors</option>
                                    {allDoctors.map((item, i) => {
                                        return (
                                            <option value={item.id} key={i}>{item.dr_given_name}</option>
                                        );
                                    })}

                                </select>
                            </div>
                            <div class="col-7">

                            </div>


                        </div>

                        <div class="main-wrapper">
                            <table class="table table-bordered mt-3">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Dr Name</th>
                                        <th scope="col">Hospital</th>
                                        <th scope="col">Day</th>
                                        <th scope="col">Scehdule</th>
                                        <th scope="col">Month</th>
                                        <th scope="col">Year</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {allTimeList.map((item, i) => {
                                        return (
                                            <tr key={i}>
                                                <th scope="row">{i + 1}</th>
                                                <td>{item.dr_given_name}</td>
                                                <td>{item.usual_provider_name}</td>
                                                <td>{item.day}</td>
                                                <td>{moment(item.slot_from).format('LT')} - {moment(item.slot_to).format('LT')
                                                }
                                                    <span class="badge badge-success mx-1"> {item.type}</span>
                                                </td>


                                                <td>{item.month}</td>
                                                <td>{moment(item.year).format('LL')} </td>

                                                <td>
                                                    <Link to={`/edit-doctors-chamber/${item.id}`}> <i className="fa fa-edit"></i></Link>
                                                    <i className="fa fa-trash mx-2" onClick={(e) => { deleteChamber(e, item.id) }}></i>
                                                </td>
                                            </tr>
                                        )
                                    })}

                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    )
}
export default DoctorsChamber;