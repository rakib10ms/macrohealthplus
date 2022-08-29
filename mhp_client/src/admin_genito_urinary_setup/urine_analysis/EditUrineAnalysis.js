import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import GenitoUrinarySidebar from '../genito_urinary_setup_mainsidebar/GenitoUrinarySidebar';

function EditUrineAnalysis(props) {

    const [urineanalysis, seturineanalysis] = useState([]);
    const [error, setError] = useState([]);

    useEffect(() => {

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        // const carotid_id = props.match.params.id;
        axios.get(`/edit-urine-analysis/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                console.log(res.data);
                seturineanalysis(res.data.urineanalysis);
                // setPicture(res.data.urineanalysis.image);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);


    const handleInput = (e) => {
        e.persist();
        seturineanalysis({ ...urineanalysis, [e.target.name]: e.target.value });
    }

    const updateUrineAnalysisInput = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        const formData = new FormData();
        formData.append('urineanalysis_name', urineanalysis.urineanalysis_name);


        axios.post(`/update-urine-analysis/${lastpart}`, formData).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                seturineanalysis({
                    ...urineanalysis,

                });

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
                    <GenitoUrinarySidebar/>
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title"> Edit Urine Analysis
                                    <Link to={'/urine-analysis'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form id="UrineAnalysisForm" onSubmit={updateUrineAnalysisInput}>
                                    <div className="card-body">

                                        <div className="col-md-12">

                                            <div className="form-group">
                                                <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                                                <input type="text" value={urineanalysis.urineanalysis_name} className="form-control" name="urineanalysis_name" onChange={handleInput} />
                                                <span className="text-danger">{error.urineanalysis_name}</span>
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

export default EditUrineAnalysis;
