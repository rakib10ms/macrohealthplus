import axios from 'axios';
import React, { useState, useEffect} from 'react';
import { Link} from "react-router-dom";
import swal from 'sweetalert';
import BillingSetupSidebar from '../../admin_setup_billing/billing_setup_sidebar/BillingSetUpSidebar';

function EditProcedureFee(props) {

    const[procedure,setprocedure]=useState([]);
    const [procedureFee,setprocedureFee] = useState([]);
    const [error, setError] = useState([]);


    useEffect(() => {

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        
        // const carotid_id = props.match.params.id;
        axios.get(`/edit-procedureFee/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                setprocedureFee(res.data.procedureFee);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);


    useEffect(() => {

        axios.get(`/procedure-dropdown`).then(res => {
            console.log(res.data.procedure_name);
            if (res.data.status === 200) {
                setprocedure(res.data.procedure_name);
            }
        })
        

    }, []);


    const handleInput = (e) => {
        e.persist();
        setprocedureFee({ ...procedureFee, [e.target.name]: e.target.value });
    }

    const updateCanalInput= (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        const data = procedureFee;
        console.log('edit pdata',data);
        axios.post(`/update-procedureFee/${lastpart}`, data).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setprocedureFee({
                    ...procedureFee,

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
                        <Link to={'/procedure-fee'} className="btn btn-primary btn-sm float-end"> Back </Link>
                    </h6>
                </div>
                <div className="card-body">
                    <form id="EarCanalForm" onSubmit={updateCanalInput}>
                        <div className="card-body">

                    <div className="col-md-12">



                    <div>
                        <label htmlFor="inputPassword4"
                                className="form-label  col-form-label col-form-label-sm">Procedure Name</label>

                        <select id="inputState" onChange={handleInput} value={procedureFee.procedure_id} name="procedure_id"
                            className="form-select  col-form-label-sm font-size-patient">
                            <option selected>Select</option>
                            {
                                procedure.map((item) => {
                                    return (
                                        <option value={item.id} key={item.id}>{item.procedure_name}</option>
                                    )
                                })
                            }
                            </select>
                    </div>

                    <div className="form-group">
                            <label htmlFor="history_name" className="col-form-label-sm"> Sub-Procedure Name </label>
                            <input type="text"  value={procedureFee.subProcedure_name} className="form-control" name="subProcedure_name" onChange={handleInput} />
                            <span className="text-danger">{error.subProcedure_name}</span>

                        </div>
            
                        <div className="form-group">
                            <label htmlFor="history_name" className="col-form-label-sm"> Fee </label>
                            <input type="text"  value={procedureFee.fee_name} className="form-control" name="fee_name" onChange={handleInput} />
                            <span className="text-danger">{error.fee_name}</span>

                        </div>
                

                        <div className="form-group">
                            <label htmlFor="history_name" className="col-form-label-sm"> Item Code </label>
                            <input type="text"  value={procedureFee.item_code} className="form-control" name="item_code" onChange={handleInput} />
                            <span className="text-danger">{error.item_code}</span>

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

export default EditProcedureFee
