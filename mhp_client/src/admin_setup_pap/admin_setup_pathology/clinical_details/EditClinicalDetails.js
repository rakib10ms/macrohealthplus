import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from "react-router-dom";
import swal from 'sweetalert';
import PathologySetupSidebar from '../PathologySetupSidebar';


function EditClinicalDetails(props) {

    const [ClinicalDetails, setClinicalDetails] = useState('');
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
        axios.get(`/edit-clinical-details/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                setClinicalDetails(res.data.clinical_details);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);


    const handleInput = (e) => {
        e.persist();
        setClinicalDetails({ ...ClinicalDetails, [e.target.name]: e.target.value });
    }

    const updateClinicalDetailsInput = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }


        axios.post(`/update-clinical-details/${lastpart}`, ClinicalDetails).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setClinicalDetails({
                    ...ClinicalDetails,

                });
                navigate(`/clinical-details/`);

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
                        < PathologySetupSidebar />
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title"> Edit Clinical Details
                                    <Link to={'/clinical-details'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form id="ClinicalDetailsForm" onSubmit={updateClinicalDetailsInput}>
                                    <div className="card-body">

                                        <div className="col-md-12">
                                           
                                         
                                            <div className="form-group">
                                                <label htmlFor="diagnosis_procedure_name" className="col-form-label-sm"> Name </label>
                                                <input type="text" value={ClinicalDetails.clinical_details_name} className="form-control" name="clinical_details_name" onChange={handleInput} />
                                                <span className="text-danger">{error.ClinicalDetails_name}</span>
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

export default EditClinicalDetails;


