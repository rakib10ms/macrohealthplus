import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import GastroIntestinalSidebar from '../gastro_int_setup_mainsidebar/GastroIntestinalSidebar';

function AddBruit() {

    const [bruit, setbruit] = useState({
        bruit_name: "",
        error_list: [],
    });

    const handleInput = (e) => {
        setbruit({
            ...bruit, [e.target.name]: e.target.value
        });
    }


    const formData = new FormData();

    formData.append('bruit_name',  bruit.bruit_name);

    const submitBruit = (e) => {
        // alert("hgfdhgf")
        e.preventDefault();
  console.log(e)
        axios.post(`/save-bruit`, formData).then(res => {
            if (res.data.status == 200) {
                swal("Success", res.data.message, "success");
                setbruit({
                    bruit_name: "",
                    error_list: [],

                });

            }
            else if (res.data.status == 400) {
                setbruit({ ...bruit, error_list: res.data.errors });

            }

        })
    }

    return (
        <div>
            <>
                <div className="container">
                    <div className="row">
                        <div className="col-md-3">
                        <GastroIntestinalSidebar/>
                        </div>
                        <div className="col-md-9 mt-3">
                            <div className="card">
                                <div className="card-header">
                                    <h6 className="card-title"> Add Bruit
                                        <Link to={'/bruit'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                    </h6>
                                </div>
                                <div className="card-body">
                                    <form id="BruitForm" onSubmit={submitBruit}>
                                        <div className="card-body">

                                            <div className="col-md-12">

                                                <div className="form-group">
                                                    <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                                                    <input type="text" value={bruit.bruit_name} className="form-control" name="bruit_name" onChange={handleInput} />
                                                    <span className="text-danger">{bruit.error_list.bruit_name}</span>

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

export default AddBruit;
