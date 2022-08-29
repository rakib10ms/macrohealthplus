import React, { useState, useEffect } from "react";
import './LabModule.css'
import { Link } from "react-router-dom";
import axios from "axios";
// import '../../Patients/AddNewPatient/AddNewPatient.css';
import MaterialTable, { MTableToolbar } from 'material-table';
import { Checkbox, Select, MenuItem, Grid, Tooltip } from '@material-ui/core';
import PrintIcon from '@mui/icons-material/Print';
import jsPDF from 'jspdf';
import 'jspdf-autotable';
// import ReactExport from "react-export-excel";
import moment from 'moment';
import Swal from "sweetalert2";
// import '../../../imageUrl';


function LabModuleHome2() {

    const [toogleState, setToogleState] = useState(1);

    console.log('check', toogleState)


    function toogleTab(index) {
        setToogleState(index)

    }


    const [loading, setLoading] = useState(true);
    const [allpatients, setAllpatients] = useState([]);
    const [genders, setGenderDropdown] = useState([]);
    const [statuses, setStatusesList] = useState([]);
    const [filter, setFilter] = useState(false);
    const [status, setStatus] = useState("status");
    const [sortedData, setSortededData] = useState([]);
    const [sortedData1, setSortededData1] = useState([
        {
            id: 1, name: "CBC Xyz", test_group: 'Pathology', test_category: "CBC", fee: 100
        },
        {
            id: 2, name: "CBC Xyz", test_group: 'Radiology', test_category: "CBC", fee: 200
        },
        {
            id: 3, name: "RBC abc", test_group: 'Pathology', test_category: "RBC", fee: 300
        }, {
            id: 4, name: "Hyper Xyz", test_group: 'Radiology', test_category: "Hyper", fee: 100
        }, {
            id: 5, name: "CBC 121", test_group: 'Pathology', test_category: "CBC", fee: 100
        }, {
            id: 6, name: "Rady Xyz", test_group: 'Pathology', test_category: "Rady", fee: 200
        }, {
            id: 7, name: "CBC 121", test_group: 'Radiology', test_category: "CBC", fee: 300
        }, {
            id: 8, name: "CBC Xyz", test_group: 'Pathology', test_category: "RBC", fee: 300
        }
        , {
            id: 9, name: "CBC Xyz", test_group: 'Pathology', test_category: "RBC", fee: 300
        }
        , {
            id: 10, name: "CBC Xyz", test_group: 'Pathology', test_category: "RBC", fee: 300
        }
    ]);


    console.log('sorted data', sortedData1)
    const [sex, setSex] = useState("sex");
    const [age, setAge] = useState("age");

    const [all_test_group, set_all_test_group] = useState("all_test_group");

    const [allTestCat,setAllTestCat]=useState('all_test_cat')
    console.log('all test111111111111',all_test_group)

    const [allTestNames, setAllTestNames] = useState([]);
    const [allTestGroup, setallTestGroup] = useState([]);


    const[groupIdClickFilter,setGroupIdClickFilter]=useState('');
    const [TestCatIdFilter,setTestCatIdFilter]=useState('all_test_cat')


    // const [allTestNamesFilterByTestGroup, setAllTestNamesFilterByTestGroup] = useState([]);

    // console.log('all group filter ', allTestNamesFilterByTestGroup)
    // console.log('all test name by group id ', allTestNamesFilterByTestGroup)


    useEffect(()=>{

        if(groupIdClickFilter==='all_test_group'){
            axios.get(`/new-test-name`).then(res => {
                if (res.data.status === 200) {
                    setAllTestNames(res.data.test_name)
                }
    
            });
        }
        else{
            axios.get(`/new-test-name-by-group-id/${groupIdClickFilter}`).then(res => {
                if (res.data.status === 200) {
                    // setAllTestNamesFilterByTestGroup(res.data.test_name);
                    setAllTestNames(res.data.test_name)
                }
    
            });
    
        }
  
    },[groupIdClickFilter])
    console.log('groupIdClickFilter', groupIdClickFilter)


    useEffect(() => {

        axios.get(`/patients`).then(res => {
            // console.log(res.data);

            if (res.data.status === 200) {
                setAllpatients(res.data.patients);
                setSortededData(res.data.patients);
                setGenderDropdown(res.data.genders);
                setStatusesList(res.data.statuses);
                setLoading(false);
            }


        });

        axios.get(`/new-test-name`).then(res => {
            if (res.data.status === 200) {
                setAllTestNames(res.data.test_name);
            }

        });


        axios.get(`/new-test-group`).then(res => {
            if (res.data.status === 200) {
                setallTestGroup(res.data.test_group);
            }

        });
    }, []);



    // Filters option
    useEffect(() => {
        if (status === 'status') {
            setSortededData(allpatients)
        } else {
            setSortededData(allpatients.filter(patient => patient.statuses.status_name.toLowerCase() === status.toLowerCase()))
        }

    }, [status]);

    useEffect(() => {
        if (sex == 'sex') {
            setSortededData(allpatients)
        } else {
            setSortededData(allpatients.filter(patient => patient.patient_birth_sex.birth_sex_name.toLowerCase() === sex.toLowerCase()))
        }

        // else if (sex == 'male') {
        //     setSortededData(allpatients.filter(patient => patient.patient_birth_sex_id == 'Male'))
        // }
        // else if (sex == 'female') {
        //     setSortededData(allpatients.filter(patient => patient.patient_birth_sex_id == 'Female'))
        // }
        // else if (sex == 'others') {
        //     setSortededData(allpatients.filter(patient => patient.patient_birth_sex_id == 'Others'))
        // }

    }, [sex]);

    const dateConvert = (date = new Date()) => {
        const newDate = new Date();
        let year = newDate.getFullYear();
        let dobDate = new Date(date);
        let dobYear = dobDate.getFullYear();
        let patientAge = year - dobYear;
        return patientAge;
    }


    useEffect(() => {
        if (age === 'age') {
            setSortededData(allpatients)
        }
        else if (age === 10) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 1 && dateConvert(patient.patient_dob) <= 10));
        }
        else if (age === 20) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 11 && dateConvert(patient.patient_dob) <= 20));
        }
        else if (age === 30) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 21 && dateConvert(patient.patient_dob) <= 30));
        }
        else if (age === 40) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 31 && dateConvert(patient.patient_dob) <= 40));
        }
        else if (age === 50) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 41 && dateConvert(patient.patient_dob) <= 50));
        }


    }, [age]);
    // Filter Option
    console.log(allpatients);
    const deletePatient = (e, id) => {

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
                axios.delete(`/delete-patients/${id}`).then(res => {
                    if (res.data.status === 200) {
                        thisClicked.closest("tr").remove();
                    }
                });
                Swal.fire(
                    'Deleted!',
                    'Your data has been deleted.',
                    'success'
                )
            }
        })
    };

    const columns = [

        {
            title: "SL", field: "", render: (row) => <div class="mx-2">{row.tableData.id + 1}</div>,

        },
        {
            title: "Test Group", field: "test_group", type: 'numeric', render: (row) => <div class="mx-5">{row.test_group_name == null ? '' : row.test_group_name}</div>,
        },
        { title: "Test Category", field: "test_category", type: 'numeric', render: (row) => <div class="mx-5">{row.test_category_name == null ? '' : row.test_category_name}</div> },
        {
            title: "Test Name", field: "name", render: (row) => <div class="mx-5">{row.test_name == null ? '' : row.test_name}</div>,
        },
        { title: "Fee", field: "fee", render: (row) => <div class="mx-5">{row.fee == null ? '' : row.fee}</div> },

        {
            title: "Action", field: "patient", render: (row) => <div className="text-center" style={{ fontSize: "3px" }}><Link to={`/edit-patients/${row.id}`} className="btn action-btn btn-sm" data-bs-toggle="tooltip" title="Edit Patients"><i className="far fa-edit"></i></Link>&nbsp;
                <button onClick={(e) => deletePatient(e, row.id)} className="btn action-btn btn-sm"> <i className="far fa-trash"></i> </button>&nbsp;
                {/* <Link to={`/patients-profile/${row.id}`} className="btn action-btn btn-sm" data-bs-toggle="tooltip" title="Patients Profile"><i className="far fa-user-alt"></i></Link>
                <Link to={`/lab-module/${row.id}`} className="btn action-btn btn-sm" data-bs-toggle="tooltip" title="Lab Module"> <i class="far fa-flask"></i>
                </Link> */}
            </div>
        },
    ];



    // export
    const printPdf = () => {
        const doc = new jsPDF();
        doc.text("Patient List", 90, 10);
        doc.autoTable({
            theme: "grid",
            headStyles: { fillColor: [255, 255, 255], textColor: [0, 0, 0] },
            columns: columns.map(col => ({ ...col, dataKey: col.field })),
            body: sortedData1
        })
        doc.save("Ptaient.pdf")
    }



    return (
        <div class="shadow-sm p-2 bg-body rounded mt-2">
            <h6 className=" mx-2" >Rate List</h6>
            <hr />
            <div className="center-detail-sec">
                <div className="row">
                    <div className="col-md-12 px-2">
                        <p className="px-4">Available in ratelist under names:</p>

                        {/* <div className="table-rate  px-4">
                            <table class="table table-bordered">
                                <thead style={{background:'#E7E7E7'}}>
                                    <tr>
                                        <th scope="col">SL No.</th>
                                        <th scope="col">Test Group</th>
                                        <th scope="col">Test Category</th>
                                        <th scope="col">Test Name</th>
                                        <th scope="col">Fee</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Radiology</td>
                                        <td>CBC</td>
                                        <td>CBC Name</td>
                                        <td>200</td>
                                        <td>
                                        <i class="fas fa-edit text-success"></i>
                                        <i class="fas fa-trash text-danger mx-2"></i>
                                        
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Pathology</td>
                                        <td>RBC</td>
                                        <td>RBC Name</td>
                                        <td>300</td>

                                        <td><i class="fas fa-edit text-success"></i>
                                        <i class="fas fa-trash text-danger mx-2"></i>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Radiology</td>
                                        <td>CBC</td>
                                        <td>CBC Name</td>
                                        <td>200</td>
                                        <td><i class="fas fa-edit text-success"></i>
                                        <i class="fas fa-trash text-danger mx-2"></i>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Pathology</td>
                                        <td>RBC</td>
                                        <td>RBC Name</td>
                                        <td>300</td>

                                        <td><i class="fas fa-edit text-success"></i>
                                        <i class="fas fa-trash text-danger mx-2"></i>

                                        </td>
                                    </tr>
                               
                               
                                </tbody>
                            </table>
                        </div> */}


                        <div className="custom-card patient-table mt-2">
                            <MaterialTable
                                columns={columns}

                                data={allTestNames}
                                isLoading={loading === true ? true : false}
                                options={{
                                    search: true,
                                    filtering: filter,
                                    showTitle: false,
                                    searchFieldAlignment: "left",
                                    searchFieldStyle: { borderRadius: 16 },
                                    pageSize: 10,
                                    emptyRowsWhenPaging: false,
                                    pageSizeOptions: [5, 10, 20, 50, 100],
                                    // exportButton: true,

                                }}
                                components={{
                                    Toolbar: (props) => <div>
                                        <Grid style={{}}>
                                            {/* <button onClick={() => { setStatus("status"); }} className={`btn btn-outline data-table-btn ${status === "status" ? "active-data" : ""}  ms-2 me-1`}>All</button>
                                {
                                    statuses.map((item, i) => {
                                        return (
                                            <button key={i} onClick={() => { setStatus(`${item.status_name}`); }} className={`btn btn-outline data-table-btn ${status === item.status_name ? "active-data" : ""} ms-2 `}> {item.status_name}</button>
                                        )
                                    })
                                } */}
                                            <Tooltip title="Export to Pdf" placement="bottom"><PrintIcon className="float-end export-icon pe-auto me-3 mt-2 mb-3" onClick={() => printPdf()} /></Tooltip>


                                        </Grid>
                                        <MTableToolbar style={{ width: 80, fontSize: 14 }} {...props} />
                                    </div>
                                }}
                                actions={[

                                    {
                                        icon: () => <div className="filter-selected"><Select
                                            labelId="demo-simple-select-label"
                                            id="demo-simple-select"
                                            value={all_test_group}
                                            // label="Age"
                                            onChange={(e) => set_all_test_group(e.target.value)}

                                            style={{ width: 90, fontSize: 14 }}
                                        >
                                            <MenuItem value={"all_test_group"} onClick={()=>setGroupIdClickFilter("all_test_group")}><em>Test Group</em></MenuItem>
                            
                                            {
                                                allTestGroup.map((item,i)=>{
                                                    return(
                                                        <>
                                                            <MenuItem value={item.id} onClick={()=>setGroupIdClickFilter(item.id)}>{item.test_group_name}</MenuItem>
                                                        </>
                                                    )
                                                })
                                            }

                                        </Select></div>,
                                        isFreeAction: true
                                    },

                                    // {
                                    //     icon: () =>
                                    //         <div className="filter-selected"><Select
                                    //             labelId="demo-simple-select-label"
                                    //             id="demo-simple-select"
                                    //             value={sex}
                                    //             // label="Age"

                                    //             onChange={(e) => setSex(e.target.value)}
                                    //             style={{ width: 110, fontSize: 14 }}
                                    //         >
                                    //             <MenuItem style={{ width: 110, fontSize: 14 }} value={"sex"}><em>Test Category</em></MenuItem>
                                    //             {
                                    //                 genders.map((item, i) => {
                                    //                     return (
                                    //                         <MenuItem style={{ width: 110, fontSize: 14 }} value={item.birth_sex_name} key={item.id}><i className="fas fa-male sex-icon me-1"></i> {item.birth_sex_name}</MenuItem>
                                    //                     )
                                    //                 })
                                    //             }

                                    //         </Select>
                                    //         </div>,
                                    //     isFreeAction: true
                                    // },
                                    
                                    {
                                        icon: () =>
                                            <div className="filter-selected"><Select
                                                labelId="demo-simple-select-label"
                                                id="demo-simple-select"
                                                value={sex}
                                                // label="Age"

                                                onChange={(e) => setSex(e.target.value)}
                                                style={{ width: 110, fontSize: 14 }}
                                            >
                                                <MenuItem style={{ width: 110, fontSize: 14 }} value={"all_test_cat"} onClick={()=>setTestCatIdFilter("all_test_cat")}><em>Test Category</em></MenuItem>
                                                {
                                                    genders.map((item, i) => {
                                                        return (
                                                            <MenuItem style={{ width: 110, fontSize: 14 }} value={item.birth_sex_name} key={item.id}><i className="fas fa-male sex-icon me-1"></i> {item.birth_sex_name}</MenuItem>
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

        </div>
    );
}

export default LabModuleHome2;