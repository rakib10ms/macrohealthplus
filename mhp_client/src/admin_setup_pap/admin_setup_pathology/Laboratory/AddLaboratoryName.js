import axios from 'axios';
import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import swal from 'sweetalert';

import PathologySetupSidebar from '../PathologySetupSidebar';


const AddLaboratoryName = () => {

    const [labratory_name, setlabratory_name] = useState({
        labratory_name: "",
        error_list: [],
    });

    

    const handleInput = (e) => {
        setlabratory_name({
            ...labratory_name, [e.target.name]: e.target.value
        });
    }



    const submitPathalogyLabratory = (e) => {
        e.preventDefault();
        console.log("data", labratory_name);
        axios.post(`/save-labratory-name`, labratory_name).then(res => {
            console.log("sdfdf", res.data)
            if (res.data.status == 200) {
                swal("Success", res.data.message, "success");
                setlabratory_name({
                    labratory_name: "",
                    error_list: [],

                });

            }
            else if (res.data.status == 400) {
                setlabratory_name({ ...labratory_name, error_list: res.data.errors });

            }

        })
    }


    return (
        <div>
        <>
            <div className="container">
                <div className="row">
                    <div className="col-md-3">
                    < PathologySetupSidebar/>
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title"> Add Pathology Laboratory
                                    <Link to={'/pathology-laboratory'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form id="RadiologyCenterForm" onSubmit={submitPathalogyLabratory}>
                                    <div className="card-body">

                                        <div className="col-md-12">
                                            
                                            <div className="form-group">
                                                <label htmlFor="diagnosis_procedure_name" className="col-form-label-sm"> Name </label>
                                                <input type="text" value={labratory_name.labratory_name} className="form-control" name="labratory_name" onChange={handleInput} />
                                                <span className="text-danger"></span>
                                            </div>
                                            <div className="float-right">
                                                <button type="submit" className="btn btn-sm btn-primary text-uppercase float-end mt-2" ><i
                                                    className="fas fa-save"></i> Save
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
    </div>
    );
};

export default AddLaboratoryName;