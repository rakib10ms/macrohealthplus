import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from "react-router-dom";
import swal from 'sweetalert';
import DiagnosisProcedureSetupSidebar from '../diagnosis_procedure_setup_mainsidebar/DiagnosisProcedureSetupSidebar';


function EditDiagnosisProcedureFor(props) {

    const [DiagnosisProcedureFor, setDiagnosisProcedureFor] = useState([]);
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
        axios.get(`/edit-diagnosis-procedure-for/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                // console.log(res.data.DiagnosisProcedureFor);
                setDiagnosisProcedureFor(res.data.DiagnosisProcedureFor);
                // setPicture(res.data.DiagnosisProcedureFor.image);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);


    const handleInput = (e) => {
        e.persist();
        setDiagnosisProcedureFor({ ...DiagnosisProcedureFor, [e.target.name]: e.target.value });
    }

    const updateDiagnosisProcedureForInput = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        const formData = new FormData();
        formData.append('DiagnosisProcedureFor_type', DiagnosisProcedureFor.DiagnosisProcedureFor_type);
        formData.append('DiagnosisProcedureFor_name', DiagnosisProcedureFor.DiagnosisProcedureFor_name);


        axios.post(`/update-diagnosis-procedure-for/${lastpart}`, formData).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setDiagnosisProcedureFor({
                    ...DiagnosisProcedureFor,

                });
                navigate(`/diagnosis-procedure-for/`);

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
                        < DiagnosisProcedureSetupSidebar />
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title"> Diagnosis/Procedure For
                                    <Link to={'/diagnosis-procedure-for'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form id="DiagnosisProcedureForForm" onSubmit={updateDiagnosisProcedureForInput}>
                                    <div className="card-body">

                                        <div className="col-md-12">
                                            <div className="form-group">
                                                <label htmlFor="inputPassword4"
                                                    className="form-label  col-form-label col-form-label-sm">Type</label>
                                                <select id="inputState" onChange={(e) => setDiagnosisProcedureFor({
                                                    ...DiagnosisProcedureFor, DiagnosisProcedureFor_type: e.target.value
                                                })}
                                                    className="form-select  col-form-label-sm font-size-patient" aria-label="Default select example">
                                                    <option selected>Select</option>
                                                    <option value="Diagnosis">Diagnosis</option>
                                                    <option value="Procedure">Procedure</option>
                                                    <option value="ResonForVisit">Reason For Visit</option>
                                                </select>
                                            </div>

                                            <div className="form-group">
                                                <label htmlFor="diagnosis_procedure_name" className="col-form-label-sm"> Name </label>
                                                <input type="text" value={DiagnosisProcedureFor.DiagnosisProcedureFor_name} className="form-control" name="DiagnosisProcedureFor_name" onChange={handleInput} />
                                                <span className="text-danger">{error.DiagnosisProcedureFor_name}</span>
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

export default EditDiagnosisProcedureFor;

