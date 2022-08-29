import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import swal from 'sweetalert';
import ProcedureReportSetupSidebar from '../ProcedureReportSetupSidebar';

const EditDrain = () => {

    const [drainNameEdit, setDrainNameEdit] = useState({
        name:"",
    });

    const [error, setError] = useState([]);
    let navigate = useNavigate();

    useEffect(() => {

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        axios.get(`/edit-drain-name/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                setDrainNameEdit(res.data.drainName);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);


    const handleInput = (e) => {
        setDrainNameEdit({ ...drainNameEdit, [e.target.name]: e.target.value });
    }

    const updateDrainName = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }


        axios.post(`/update-drain-name/${lastpart}`, drainNameEdit).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setDrainNameEdit({
                    ...drainNameEdit,

                });
                navigate(`/drain`);

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
                    <ProcedureReportSetupSidebar />
                </div>
                <div className="col-md-9 mt-3">
                    <div className="card">
                        <div className="card-header">
                            <h6 className="card-title">Edit Drain Name
                                <Link to={'/drain'} className="btn btn-primary btn-sm float-end">Back</Link>
                            </h6>
                        </div>
                        <div className="card-body">
                            <form id="pathologyLabratoryForm" onSubmit={updateDrainName}>
                                <div className="card-body">

                                    <div className="col-md-12">
                                       
                                     
                                        <div className="form-group">
                                            <label htmlFor="diagnosis_procedure_name" className="col-form-label-sm">Name</label>
                                            <input type="text" value={drainNameEdit.name}className="form-control" name="name" onChange={handleInput} />
                                            <span className="text-danger">{error.name}</span>
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
    );
};

export default EditDrain;