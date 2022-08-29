import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import BillingSetupSidebar from '../../admin_setup_billing/billing_setup_sidebar/BillingSetUpSidebar';

function AddDoctorFeeGroup() {


    const [doctorFee, setdoctorFee] = useState({
        fee_name: "",
        error_list: [],
    });



    const handleInput = (e) => {
        setdoctorFee({
            ...doctorFee, [e.target.name]: e.target.value
        });
    }

    const submitCanal = (e) => {
        e.preventDefault();
        const data = {
            fee_name: doctorFee.fee_name,
           
        }

        axios.post(`/save-doctorFeeName`, data).then(res => {
            if (res.data.status == 200) {
                swal("Success", res.data.message, "success");
                setdoctorFee({
                    fee_name: "",
                    error_list: [],

                });
            }
            else if (res.data.status == 400) {
                setdoctorFee({ ...doctorFee, error_list: res.data.errors });

            }

        })
    }

    return (
        <div>
            <>
                <div className="container">
                    <div className="row">
                        <div className="col-md-3">
                        <BillingSetupSidebar/>
                        </div>
                        <div className="col-md-9 mt-3">
                            <div className="card">
                                <div className="card-header">
                                    <h6 className="card-title"> Add Doctor Fee Name
                                        <Link to={'/doctorFee-name'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                    </h6>
                                </div>
                                <div className="card-body">
                                    <form id="EarCanalForm" onSubmit={submitCanal}>
                                        <div className="card-body">

                                            <div className="col-md-12">
                                            

                                                <div className="form-group">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Doctor Fees Name </label>
                                                    <input type="text" value={doctorFee.fee_name} className="form-control" name="fee_name" onChange={handleInput} />
                                                    <span className="text-danger">{doctorFee.error_list.fee_name}</span>

                                                </div>



                                                <div className="float-right">
                                                    <button type="submit" className="btn btn-sm btn-primary text-uppercase float-end mt-2"><i
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
    )
}

export default AddDoctorFeeGroup;
