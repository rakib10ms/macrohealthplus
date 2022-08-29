import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import SkinDermatologySetupSidebar from '../skin_dermatology_setup_mainsidebar/SkinDermatologySetupSidebar';


function AddTemparature() {

    const [Temparature, setTemparature] = useState({
        Temparature_name: "",
        error_list: [],
    });

    const handleInput = (e) => {
        setTemparature({
            ...Temparature, [e.target.name]: e.target.value
        });
    }


    const formData = new FormData();

    formData.append('Temparature_name', Temparature.Temparature_name);

    const submitTemparature = (e) => {
        // alert("hgfdhgf")
        e.preventDefault();
        console.log(e)
        axios.post(`/save-temparature`, formData).then(res => {
            console.log("sdfdf", res.data)
            if (res.data.status == 200) {
                swal("Success", res.data.message, "success");
                setTemparature({
                    Temparature_name: "",
                    error_list: [],

                });

            }
            else if (res.data.status == 400) {
                setTemparature({ ...Temparature, error_list: res.data.errors });

            }

        })
    }

    return (
        <div>
            <>
                <div className="container">
                    <div className="row">
                        <div className="col-md-3">
                            <SkinDermatologySetupSidebar />
                        </div>
                        <div className="col-md-9 mt-3">
                            <div className="card">
                                <div className="card-header">
                                    <h6 className="card-title"> Add Temparature
                                        <Link to={'/temparature'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                    </h6>
                                </div>
                                <div className="card-body">
                                    <form id="TemparatureForm" onSubmit={submitTemparature}>
                                        <div className="card-body">

                                            <div className="col-md-12">

                                                <div className="form-group">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                                                    <input type="text" value={Temparature.Temparature_name} className="form-control" name="Temparature_name" onChange={handleInput} />
                                                    <span className="text-danger">{Temparature.error_list.Temparature_name}</span>

                                                </div>

                                                <div className="float-right">
                                                    <button type="submit" className="btn btn-sm btn-primary text-uppercase float-end mt-2" ><i
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

export default AddTemparature;
