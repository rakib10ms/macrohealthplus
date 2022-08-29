import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from "react-router-dom";
import swal from 'sweetalert';
import MreSetupSidebar from '../mre_setup_mainsidebar/MreSetupSidebar';

function EditWheezingLeft(props) {

    const [WheezingLeft, setWheezingLeft] = useState([]);
    const [error, setError] = useState([]);
    let navigate = useNavigate();

    useEffect(() => {

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        // const carotid_id = props.match.params.id;
        axios.get(`/edit-wheezing-left/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                console.log(res.data);
                setWheezingLeft(res.data.WheezingLeft);
                // setPicture(res.data.WheezingLeft.image);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);


    const handleInput = (e) => {
        e.persist();
        setWheezingLeft({ ...WheezingLeft, [e.target.name]: e.target.value });
    }

    const updateWheezingLeftInput = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        
        const formData = new FormData();
        formData.append('WheezingLeft_name', WheezingLeft.WheezingLeft_name);


        axios.post(`/update-wheezing-left/${lastpart}`, formData).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setWheezingLeft({
                    ...WheezingLeft,

                });
                 navigate(`/wheezing-left`);

            } else {
                setError(res.data.errors)
            }
        });

    }


    return (
        <>
            <div className="container">
                <div className="row">
                    <div className="col-md-3">
                        <MreSetupSidebar />
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title"> Edit Wheezing Left
                                    <Link to={'/wheezing-left'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form id="WheezingLeftForm" onSubmit={updateWheezingLeftInput}>
                                    <div className="card-body">

                                        <div className="col-md-12">

                                            <div className="form-group">
                                                <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                                                <input type="text" value={WheezingLeft.WheezingLeft_name} className="form-control" name="WheezingLeft_name" onChange={handleInput} />
                                                <span className="text-danger">{error.WheezingLeft_name}</span>
                                            </div>

                                            <div className="float-right">
                                                <button type="submit" className="btn btn-sm btn-primary text-uppercase float-end mt-2"><i
                                                    className="fas fa-save"></i> Update
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </>

    )
}

export default EditWheezingLeft;
