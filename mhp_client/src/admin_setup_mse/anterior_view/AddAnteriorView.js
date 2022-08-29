import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import MusculoSkeletalExaminationSidebar from '../mse_setup_mainsidebar/MusculoSkeletalExaminationSidebar';

function AddAnteriorView() {

    const [AnteriorView, setAnteriorView] = useState({
        AnteriorView_name: "",
        error_list: [],
    });

    const handleInput = (e) => {
        setAnteriorView({
            ...AnteriorView, [e.target.name]: e.target.value
        });
    }


    const formData = new FormData();

    formData.append('AnteriorView_name',  AnteriorView.AnteriorView_name);

    const submitAnteriorView = (e) => {
        // alert("hgfdhgf")
        e.preventDefault();
  console.log(e)
        axios.post(`/save-anterior-view`, formData).then(res => {
            if (res.data.status == 200) {
                swal("Success", res.data.message, "success");
                setAnteriorView({
                    AnteriorView_name: "",
                    error_list: [],

                });

            }
            else if (res.data.status == 400) {
                setAnteriorView({ ...AnteriorView, error_list: res.data.errors });

            }

        })
    }

    return (
        <div>
            <>
                <div className="container">
                    <div className="row">
                        <div className="col-md-3">
                        <MusculoSkeletalExaminationSidebar/>
                        </div>
                        <div className="col-md-9 mt-3">
                            <div className="card">
                                <div className="card-header">
                                    <h6 className="card-title"> Add Anterior View
                                        <Link to={'/anterior-view'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                    </h6>
                                </div>
                                <div className="card-body">
                                    <form id="AnteriorViewForm" onSubmit={submitAnteriorView}>
                                        <div className="card-body">

                                            <div className="col-md-12">

                                                <div className="form-group">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                                                    <input type="text" value={AnteriorView.AnteriorView_name} className="form-control" name="AnteriorView_name" onChange={handleInput} />
                                                    <span className="text-danger">{AnteriorView.error_list.AnteriorView_name}</span>

                                                </div>
                                               
                                                <div className="float-right">
                                                    <button type="submit"  className="btn btn-sm btn-primary text-uppercase float-end mt-2" ><i
                                                        className="fas fa-save"  ></i> Save
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
    )
}

export default AddAnteriorView;
