import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link, useNavigate } from "react-router-dom";
import swal from 'sweetalert';
import RadiologySetupSidebar from '../radiology_setup_mainsidebar/RadiologySetupSidebar';


function EditRadiologyTestName(props) {

    const [RadiologyTestName, setRadiologyTestName] = useState({
        radiology_test_name: "",
        radiology_test_type_id: "",
        error_list: [],
});
    console.log('check',RadiologyTestName)
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
        axios.get(`/edit-radiology-test-name/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                setRadiologyTestName(res.data.radiology_test_name);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);

    const [RadiologyTestType, setRadiologyTestType] = useState([]);


    useEffect(() => {
        axios.get(`/radiology-test-type`).then(res => {
            if (res.data.status === 200) {
                setRadiologyTestType(res.data.radiology_test_type);
            }

        });

    }, []);
    const handleInput = (e) => {
        e.persist();
        setRadiologyTestName({ ...RadiologyTestName, [e.target.name]: e.target.value });
    }

    const updateRadiologyTestNameInput = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }


        axios.post(`/update-radiology-test-name/${lastpart}`, RadiologyTestName).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setRadiologyTestName({
                    ...RadiologyTestName,

                });
                navigate(`/radiology-test-name/`);

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
                        < RadiologySetupSidebar />
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title"> Edit Radiology Test Name
                                    <Link to={'/radiology-test-name'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form id="RadiologyTestNameForm" onSubmit={updateRadiologyTestNameInput}>
                                    <div className="card-body">

                                        <div className="col-md-12">
                                           
                                        <div>
                                                    <label htmlFor="inputPassword4"
                                                        className="form-label  col-form-label col-form-label-sm">Test Type</label>
                                                    <select id="inputState" onChange={handleInput} value={RadiologyTestName.radiology_test_type_id} name="radiology_test_type_id"
                                                        className="form-select  col-form-label-sm font-size-patient">
                                                        <option selected>Select</option>
                                                        {
                                                            RadiologyTestType.map((item) => {
                                                                return (
                                                                    <option value={item.id} key={item.id}>{item.radiology_test_type}</option>
                                                                )
                                                            })
                                                        }
                                                    </select>
                                                </div>

                                         
                                            <div className="form-group">
                                                <label htmlFor="diagnosis_procedure_name" className="col-form-label-sm"> Name </label>
                                                <input type="text" value={RadiologyTestName.radiology_test_name} className="form-control" name="radiology_test_name" onChange={handleInput} />
                                                {/* <span className="text-danger">{error.RadiologyTestName_name}</span> */}
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

export default EditRadiologyTestName;


