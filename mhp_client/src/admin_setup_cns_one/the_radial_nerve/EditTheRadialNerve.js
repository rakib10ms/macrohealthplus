import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link , useNavigate} from "react-router-dom";
import swal from 'sweetalert';
import CnsOneSetupSidebar from '../cns_one_setup_mainsidebar/CnsOneSetupSidebar';

function EditTheRadialNerve(props) {

    const [TheRadialNerve, setTheRadialNerve] = useState([]);
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
        axios.get(`/edit-the-radial-nerve/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                console.log(res.data);
                setTheRadialNerve(res.data.TheRadialNerve);
                // setPicture(res.data.TheRadialNerve.image);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);


    const handleInput = (e) => {
        e.persist();
        setTheRadialNerve({ ...TheRadialNerve, [e.target.name]: e.target.value });
    }

    const updateTheRadialNerveInput = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        const formData = new FormData();
        formData.append('TheRadialNerve_name', TheRadialNerve.TheRadialNerve_name);


        axios.post(`/update-the-radial-nerve/${lastpart}`, formData).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setTheRadialNerve({
                    ...TheRadialNerve,

                });
                navigate(`/the-radial-nerve/`);

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
                    <CnsOneSetupSidebar/>
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title"> The Radial Nerve
                                    <Link to={'/the-radial-nerve'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form id="TheRadialNerveForm" onSubmit={updateTheRadialNerveInput}>
                                    <div className="card-body">

                                        <div className="col-md-12">

                                            <div className="form-group">
                                                <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                                                <input type="text" value={TheRadialNerve.TheRadialNerve_name} className="form-control" name="TheRadialNerve_name" onChange={handleInput} />
                                                <span className="text-danger">{error.TheRadialNerve_name}</span>
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

export default EditTheRadialNerve;
