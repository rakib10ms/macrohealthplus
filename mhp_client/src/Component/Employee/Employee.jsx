import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import MaterialTable from "material-table";
import { MenuItem, Select } from "@material-ui/core";
import moment from "moment";
import Swal from "sweetalert2";
import '../../imageUrl'

function Employee() {

    const [allpatients, setAllpatients] = useState([]);
    const [sortedData, setSortededData] = useState([]);
    const [birthsex, setBirthSex] = useState([
        {birth_sex_name: ''}
    ]);
    const [sex, setSex] = useState("sex");
    const [loading,setLoading] = useState(true);

    useEffect(() => {

        axios.get(`/employee`).then(res => {
            console.log("Employee data",res.data.employee);
            if (res.data.status === 200) {
                setAllpatients(res.data.employee);
                setSortededData(res.data.employee);
                if (res.data.birth_sex.length > 0) {
                    setBirthSex(res.data.birth_sex);
                }            
                setLoading(false);
            }
        });

    }, [])
  //filters
  useEffect(() => {
    if (sex == 'sex') {
        setSortededData(allpatients)
    } else  {
        setSortededData(allpatients.filter(doctor => doctor.birth_sex.birth_sex_name.toLowerCase() === sex.toLowerCase()))
    }
    

}, [sex]);
    //filters

    const deleteDoctor = (e, id) => {
        e.preventDefault();
        const thisClicked = e.currentTarget;

        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                axios.delete(`/delete-employee/${id}`).then(res => {
                 
                        thisClicked.closest("tr").remove();
                    
                });
                Swal.fire(
                    'Deleted!',
                    'Your data has been deleted.',
                    'success'
                )
            }
        })

    }

    const columns = [

        {
            title: "Name", field: `given_name`
            ,
            render: (row) => <div>
                {row.image !== "" ? <img className="me-2" src={`${global.img_url}/employee/images/${row.image}`} width="20px" alt="No Image" /> : <img className="me-2" src={`https://static.thenounproject.com/png/363640-200.png`} width="20px" alt="No Image" />}
              
                {row.title == null ? '' : row.title.title_name} {row.given_name == 'null' ? '' : row.given_name}
            </div>
            , cellStyle: {
                // width: 400,
                // marginLeft:50
            },
        },
        { title: "Identity No.", field: "identity_no", type:"numeric", render: (row) => <div>{row.identity_no == 'null'  ? '' : row.identity_no}</div>, },
        { title: "Designations", field: "user_type", render: (row) => <div>{row.user_type == null ? '' : row.user_type.user_type_name}</div>, },
        {
            title: "Work Phone", field: "work_phone", type:"numeric",
            render: (row) => <div>{row.work_phone == 'null'  ? '' : row.work_phone}</div>,
            cellStyle: {
                width: 150
            },
        },

        { title: "Email", field: "email", render: (row) => <div>{row.email == 'null'  ? '' : row.email}</div>, },
        { title: "Birth Sex", field: "birth_sex_id", render: (row) => <div>{row.birth_sex == null? '' : row.birth_sex.birth_sex_name }</div>, },

        {
            title: "Action", field: "patient", render: (row) => <div><Link to={`/edit-employee/${row.id}`} class="btn btn-sm action-btn"><i class="far fa-edit"></i></Link>&nbsp;
                <button onClick={(e) => deleteDoctor(e, row.id)} className="btn  btn-sm action-btn"> <i class="far fa-trash"></i> </button>&nbsp;
                <Link to={`/employee-profile/${row.id}`} class="btn action-btn  btn-sm" data-bs-toggle="tooltip" title="Employee Profile"><i class="far fa-user-alt"></i></Link>
            </div>
        },
    ];
  
    // console.log(allpatients);
    return (
        <>
            <div className="ms-2 all-patients mt-2">
                <div className="row">
                    <div className="col-md-12">
                        <div className="patients-head custom-card">
                            <h5 className="fw-normal ml-3 text-start mb-1 text-login py-2">Employee List
                                <Link to='/add-employee' className="btn btn-primary me-3 btn-sm float-end"> Add Employee</Link>
                            </h5>
                        </div>
                        <div className="patient-table mt-2">
                            <MaterialTable
                                columns={columns}
                                data={sortedData}
                                isLoading={loading == true ? true : false}
                                options={{
                                    search: true,
                                    // filtering: filter,
                                    showTitle: false,
                                    searchFieldAlignment: "left",
                                    pageSize: 10,
                                    emptyRowsWhenPaging:false,
                                    pageSizeOptions: [5, 10, 20, 50, 100]
                                }}
                                actions={[
                                    {
                                        icon: () =>
                                            <div className="filter-selected"><Select
                                                labelId="demo-simple-select-label"
                                                id="demo-simple-select"
                                                value={sex}
                                                // label="Age"
                                                
                                                onChange={(e) => setSex(e.target.value)}
                                                style={{ width:150, fontSize: 14 }}
                                            >
                                                <MenuItem style={{ width:150, fontSize: 14 }} value={"sex"}><em>Sex</em></MenuItem>
                                                {
                                                    birthsex.map((item) => {
                                                        return (

                                                            <MenuItem style={{width:150,  fontSize: 14 }} value={item.birth_sex_name} key={item.id}> <i class="fas p-1 fa-male sex-icon"></i> { item.birth_sex_name } </MenuItem>

                                                        )
                                                    })
                                                }
           

                                            </Select>
                                            </div>,
                                        isFreeAction: true
                                    },
                                ]}

                            />
                        </div>
                    </div>
                </div>
            </div>

        </>



    )
}

export default Employee;




// import axios from 'axios';
// import React, { useEffect } from 'react';

// export default function Employee() {

//   useEffect(() => {
//   axios.get('employee').then( res => {
//     console.log("Employe",res.data);
//   })

//   }, []);
  
//   return <div>Employee</div>;
// }
