import axios from 'axios';
import React, { useState, useEffect} from 'react';
import { Link} from "react-router-dom";
import swal from 'sweetalert';
import BillingSetUp from '../../admin_setup_billing/billing_setup_mainsidebar/BillingSetUp';
import BillingSetupSidebar from '../../admin_setup_billing/billing_setup_sidebar/BillingSetUpSidebar';

function EditDoctorFeeGroup(props) {

    const [doctorFee,setdoctorFee] = useState([]);
    const [error, setError] = useState([]);


    useEffect(() => {

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        
        // const carotid_id = props.match.params.id;
        axios.get(`/edit-doctorFeeName/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                setdoctorFee(res.data.doctorFeeName);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);



    const handleInput = (e) => {
        e.persist();
        setdoctorFee({ ...doctorFee, [e.target.name]: e.target.value });
    }

    const updateCanalInput= (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        const data = doctorFee;
        console.log('edit pdata',data);
        axios.put(`/update-doctorFeeName/${lastpart}`, data).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setdoctorFee({
                    ...doctorFee,

                });
                setError('')
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
            <BillingSetupSidebar/>
            </div>
            <div className="col-md-9 mt-3">
            <div className="card">
                <div className="card-header">
                    <h6 className="card-title"> Edit Procedure Fees
                        <Link to={'/doctorFee-name'} className="btn btn-primary btn-sm float-end"> Back </Link>
                    </h6>
                </div>
                <div className="card-body">
                    <form id="EarCanalForm" onSubmit={updateCanalInput}>
                        <div className="card-body">

                    <div className="col-md-12">


                        <div className="form-group">
                            <label htmlFor="history_name" className="col-form-label-sm"> Doctor Fee Name </label>
                            <input type="text"  value={doctorFee.fee_name} className="form-control" name="fee_name" onChange={handleInput} />
                            <span className="text-danger">{error.fee_name}</span>

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

export default EditDoctorFeeGroup
