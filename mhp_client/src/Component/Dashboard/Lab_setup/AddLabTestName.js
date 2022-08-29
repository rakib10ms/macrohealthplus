import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import swal from 'sweetalert';
import LabSetupSidebar from './LabSetupSidebar';

const AddLabTestName = () => {

    const [testNamelist, setTestNamelist] = useState([]);

    useEffect(() => {
        axios.get(`/lab-test-type`).then(res => {
           
            if (res.data.status === 200) {
                // console.log(res.data);
                setTestNamelist(res.data.testType);
            }
        })
    },
[]);

const [labTestName,setlabTestName] =useState({
    test_type_id:'',
    test_name:""
})



const handleInput=(e)=>{
    setlabTestName({
        ...labTestName,[e.target.name]:e.target.value
    })
    setInputValue(e.target.value);
}
const saveLabTestName =(e)=>{
    e.preventDefault()
    axios.post('/save-lab-test-name',labTestName)
    .then(res=>{
        if (res.data.status == 200) {
            swal("Success", res.data.message, "success");
            setlabTestName({ });

        }
        else if (res.data.status == 400) {
            setlabTestName({ ...labTestName, error_list: res.data.errors });

        }
    })
}


const [inputValue, setInputValue] = useState("");

// Reset Input Field handler
const resetInputField = () => {
  setInputValue("");
};

    return (
        <div>
          <>
            <div className="container">
                <div className="row">
                    <div className="col-md-3">
                        <LabSetupSidebar />
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title"> Add Lab Test Name
                                    <Link to={'/lab_test_name'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div>
                                 <label htmlFor="inputPassword4"
                                  className="form-label  col-form-label col-form-label-sm ms-5">Lab Test Type Name</label>
                                  <select id="inputState" name="test_type_id"
                                  className="form-select  col-form-label-sm font-size-patient"
                                  style={{width:'86%',marginLeft:'55px'}}
                                  onChange={handleInput}>
                                 <option>Select</option>  
                                 {
                                    testNamelist.map((item) => {
                                    return (
                                    <option value={item.id} key={item.id}>{item.name}</option>
                                    )
                                    })
                                  }
                                </select>
                                <span className="text-danger"></span>
                                </div>
                            <div className="card-body">
                                <form id="RadiologyTestTypeForm" onSubmit={saveLabTestName}>
                                    <div className="card-body">
                                        <div className="col-md-12">
                                            <div className="form-group">
                                                <label htmlFor="" className="col-form-label-sm"> Name </label>
                                                <input type="text" className="form-control" name="test_name" onChange={handleInput} value={inputValue}/>
                                                <span className="text-danger"></span>
                                            </div>
                                            <div className="float-right">
                                                <button onClick={resetInputField} type="submit" className="btn btn-sm btn-primary  text-uppercase float-end mt-2" ><i
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

export default AddLabTestName;