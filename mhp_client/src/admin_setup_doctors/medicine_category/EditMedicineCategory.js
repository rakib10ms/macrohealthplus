import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link,useNavigate} from "react-router-dom";
import swal from 'sweetalert';
import CustomMedicineSetupSidebar from '../../admin_setup_doctors/custom_medicine_sidebar/CustomMedicineSetupSidebar';

function EditMedicineCategory() {

    const [medicinecategory,setmedicinecategory]=useState('');
    const [error, setError] = useState([]);

    const navigate=useNavigate();
    
    useEffect(() => {

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }
        axios.get(`/edit-medicinecategory/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                setmedicinecategory(res.data.medicinecategory);
            } else if (res.data.status === 404) {
                setError(res.data.errors);

            }

        });

    }, []);




    const handleInput=(e)=>{
       setmedicinecategory({
           ...medicinecategory,[e.target.name]:e.target.value
       });
    }
    const submitmedicinecategory=(e)=>{     
        e.preventDefault();
    //   console.log(medicinecategory);

    
    var url = window.location.href;
    var urlsplit = url.split("/");
    var lastpart = urlsplit[urlsplit.length - 1];
    if (lastpart === '') {
        lastpart = urlsplit[urlsplit.length - 2];
    }

        
        axios.put(`/update-medicinecategory/${lastpart}`,medicinecategory).then(res=>{
            if(res.data.status==200){
                swal("Success", res.data.message, "success");
               setmedicinecategory({
                medicinecategory_name:"",
                error_list: [],

               });
               navigate('/all-medicinecategory');
            }
            else if(res.data.status==400){
                setmedicinecategory({ ...medicinecategory, error_list: res.data.errors });

            }
   
        })
    }
    
    return (
        <div>
               <>
    <div className="container">
        <div className="row">
            <div className="col-md-3">
            <CustomMedicineSetupSidebar/>
            </div>
        <div className="col-md-9 mt-3">
            <div className="card">
                <div className="card-header">
                    <h6 className="card-title"> Edit medicinecategory Name
                        <Link to={'/all-medicinecategory'} className="btn btn-primary btn-sm float-end"> Back </Link>
                    </h6>
                </div>
                <div className="card-body">
                    <form id="medicinecategoryForm" onSubmit={submitmedicinecategory}>
                        <div className="card-body">

                <div className="col-md-12">
                
        
                    <div className="form-group">
                        <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                        <input type="text"  value={medicinecategory.medicinecategory_name} className="form-control" name="medicinecategory_name" onChange={handleInput} />
                        {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

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

export default EditMedicineCategory
