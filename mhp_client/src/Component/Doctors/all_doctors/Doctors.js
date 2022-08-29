import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import '../../Patients/AddNewPatient/AddNewPatient.css';
import MaterialTable from "material-table";
import { MenuItem, Select } from "@material-ui/core";
import moment from "moment";
import Swal from "sweetalert2";
import '../../../imageUrl';



function AllDoctors() {

    const [allpatients, setAllpatients] = useState([]);
    const [sortedData, setSortededData] = useState([]);
    const [birthsex, setBirthSex] = useState([
        { birth_sex_name: '' }
    ]);
    const [sex, setSex] = useState("sex");
    const [loading, setLoading] = useState(true);

    useEffect(() => {

        axios.get(`/doctors`).then(res => {
            console.log(res.data.doctors);
            if (res.data.status === 200) {
                setAllpatients(res.data.doctors);
                setSortededData(res.data.doctors);
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
        } else {
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
                axios.delete(`/delete-doctors/${id}`).then(res => {
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

    }

    const columns = [

        {
            title: "Name", field: `dr_given_name`
            ,
            render: (row) => <div>
                {row.dr_images !== "" ?
                    <img className="me-2" src={`${global.img_url}/doctors/images/${row.dr_images}`} width="20px" alt="No Image" /> : <img className="me-2" src={`https://static.thenounproject.com/png/363640-200.png`} width="20px" alt="No Image" />}

                {row.title == null ? '' : row.title.title_name} {row.dr_family_name == 'null' ? '' : row.dr_family_name} {row.dr_given_name == 'null' ? '' : row.dr_given_name}
            </div>
            , cellStyle: {
                width: 300,
                // marginLeft:50
            },
        },
        { title: "ID No.", field: "dr_identity_no",type: 'numeric', render: (row) => <div>{row.dr_identity_no == 'null' ? '' : row.dr_identity_no}</div>, },
        { title: "DOB", field: "dr_dob",type: 'numeric', render: (row) => <div>{row.dr_dob == 'null' ? '' : moment(row.dr_dob).format('MM/DD/YYYY')}</div>, },
        {
            title: "Work Phone", field: "dr_work_phone",type: 'numeric',
            render: (row) => <div>{row.dr_work_phone == 'null' ? '' : row.dr_work_phone}</div>,
            cellStyle: {
                width: 150
            },
        },

        { title: "Email", field: "dr_email", render: (row) => <div>{row.dr_email == 'null' ? '' : row.dr_email}</div>, },
        { title: "Birth Sex", field: "dr_birth_sex_id", render: (row) => <div>{row.dr_birth_sex_id == null ? '' : row.birth_sex.birth_sex_name}</div>, },

        {
            title: "Action", field: "patient", render: (row) => <div><Link to={`/edit-doctors/${row.id}`} class="btn  btn-sm action-btn"><i class="far fa-edit"></i></Link>&nbsp;
                <button onClick={(e) => deleteDoctor(e, row.id)} className="btn btn-sm action-btn"> <i class="fas fa-trash"></i> </button>&nbsp;
                <Link to={`/doctors-profile/${row.id}`} class="btn action-btn btn-sm" data-bs-toggle="tooltip" title="Doctors Profile"><i class="far fa-user-alt"></i></Link>
            </div>
        },
    ];

    // console.log(allpatients);
    return (
        <>
            <div className="ms-2 all-patients mt-2">
                <div className="row">
                    <div className="col-md-12">
                        <div className="custom-card patients-head ">
                            <h5 className="fw-normal py-2 px-2  text-start mb-2 text-login">Doctors List
                                <Link to='/new-doctors' className="btn btn-primary btn-sm float-end"> Add Doctors </Link>
                            </h5>
                        </div>
                        <div className="patient-table">
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
                                    emptyRowsWhenPaging: false,
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
                                                style={{ width: 150, fontSize: 14 }}
                                            >
                                                <MenuItem style={{ width: 150, fontSize: 14 }} value={"sex"}><em>Sex</em></MenuItem>
                                                {
                                                    birthsex.map((item) => {
                                                        return (

                                                            <MenuItem style={{ width: 150, fontSize: 14 }} value={item.birth_sex_name} key={item.id}> <i class="fas p-1 fa-male sex-icon"></i> {item.birth_sex_name} </MenuItem>

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

export default AllDoctors;

