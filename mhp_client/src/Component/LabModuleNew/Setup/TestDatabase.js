import React, { useState, useEffect } from "react";
import '../LabModule.css'
import Swal from "sweetalert2";
import { Link } from "react-router-dom";
import axios from 'axios';
import MaterialTable from 'material-table';
import Modal from 'react-modal';
import { toast } from 'react-toastify';
import Autocomplete from '@mui/material/Autocomplete';
import TextField from '@mui/material/TextField';

function TestDatabase() {



    const [allTestDatabses, setallTestDatabases] = useState([]);
    const [allTestGroup, setallTestGroup] = useState([]);


    console.log('checking', allTestDatabses)
    const [allTestCategory, setallTestCategory] = useState([]);

    const [allTestCategoryRender, setAllTestCategoryRender] = useState('');
    const [allTestDatabaseRender, setallTestDatabaseRender] = useState('');

    const [testGroupId, setTestGroupId] = useState('');
    const [editTestGroupId, setEditTestGroupId] = useState('');
    // console.log('fuu', editTestGroupId)
    const [editTestCategoryId, setEditTestCategoryId] = useState('');

    const [dependentTestCategory, setDependentTestCategory] = useState([]);
    const [editDependentTestCategory, setEditDependentTestCategory] = useState([]);
    const [allDependentTestNames, setAllDependentTestNames] = useState([]);
    // console.log('check edit dependetn test', editDependentTestCategory)

    const [testCategoryId, setTestCategoryId] = useState('');

    console.log('all dependent test names', allDependentTestNames)

    const [test_name, setTest_name] = useState('');

    const [allTestNames, setAllTestNames] = useState([]);

    console.log('all test name', allTestNames)

    const [fee, setFee] = useState('');
    const [testNameId, setTestNameId] = useState('');
    const [subTestName, setSubTestName] = useState('');
    const [subTestFee, setSubTestFee] = useState('');





    useEffect(() => {
        axios.get(`/test-database`).then(res => {
            if (res.data.status === 200) {
                setallTestDatabases(res.data.test_name);
            }

        });

        axios.get(`/new-test-group`).then(res => {
            if (res.data.status === 200) {
                setallTestGroup(res.data.test_group);
            }

        });
        axios.get(`/new-test-categories-by-id/${testGroupId}`).then(res => {
            if (res.data.status === 200) {
                setDependentTestCategory(res.data.all_cat);
            }

        });

        axios.get(`/new-test-categories-by-id/${editTestGroupId}`).then(res => {
            if (res.data.status === 200) {
                setEditDependentTestCategory(res.data.all_cat)
            }

        });
        axios.get(`/new-test-name`).then(res => {
            if (res.data.status === 200) {
                setAllTestNames(res.data.test_name);
            }

        });

        axios.get(`/new-test-name-by-id/${testCategoryId}`).then(res => {
            if (res.data.status === 200) {
                setAllDependentTestNames(res.data.all_name);
            }

        });



    }, [testGroupId, allTestDatabaseRender, editTestGroupId, testCategoryId]);


    function TestNameSave(e) {
        const addData = {
            test_group_id: testGroupId,
            test_category_id: testCategoryId,
            test_name_id: testNameId,
            sub_test_name: subTestName,
            sub_test_fee: subTestFee
        }

        e.preventDefault();
        axios.post(`/save-test-database`, addData).then(res => {
            if (res.data.status == 200) {
                toast.success("Success", res.data.message, "success");
                setTestNameId('');
                setTestGroupId('');
                setSubTestFee('');
                setTestCategoryId('')
                setSubTestName('');
                setallTestDatabaseRender(res.data);
                closeModal();
            }
            // else if (res.data.status == 400) {
            //     setbank({ ...bank, error_list: res.data.errors });

            // }

        })
    }







    const [editTestNameId, setEditTestNameId] = useState('');

    // console.log('eidited id', editTestNameId)


    const [editTestName, setEditTestName] = useState('');
    // console.log('eidited data', editTestName)

    const [editTest_name, setEditTest_name] = useState('');

    const [editData, setEditData] = useState('')
    console.log('eeeeeeeeeee', editData)
    const [editFee, setEditFee] = useState('');

    useEffect(() => {
        axios.get(`/edit-new-test-name/${editTestNameId}`).then(res => {
            if (res.data.status === 200) {
                setEditTestName(res.data.test_name);
                setEditTest_name(res.data.test_name.test_name)
                setEditData(res.data.test_name);
                setEditFee(res.data.test_name.fee);
            }

        });

    }, [editTestNameId]);



    function editTestCategory(e, editId) {
        e.preventDefault();
        setEditTestNameId(editId);
    }



    function TestNameUpdate(e) {

        e.preventDefault();
        const addData = {
            test_group_id: editTestGroupId === '' ? editData.test_group_id : editTestGroupId,
            test_category_id: editTestCategoryId === '' ? editData.test_category_id : editTestCategoryId,
            test_name: editTest_name,
            fee: editFee
        }

        axios.post(`/update-new-test-name/${editTestNameId}`, addData).then(res => {
            if (res.data.status == 200) {
                toast.success("Success", res.data.message, "success");
                setEditTestNameId('');
                setallTestDatabaseRender(res.data);

                setEditTestCategoryId('')
                setEditTest_name('')
                setEditFee('')
                closeEditModal();
            }
            // else if (res.data.status == 400) {
            //     setbank({ ...bank, error_list: res.data.errors });

            // }

        })
    }




    const deleteallTestDatabse = (e, id) => {
        console.log('id dele',id)

        e.preventDefault();
        const thisClicked = e.currentTarget;
        //  thisClicked.innerText = "Deleting";

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
                axios.delete(`/delete-test-database/${id}`).then(res => {
                    if (res.data.status === 200) {
                        setAllTestNames(res.data.test_name)

                        thisClicked.closest("tr").remove();
                        //   swal("Success", res.data.message, "success");

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
            title: "SL", field: "", render: (row) => <div>{row.tableData.id + 1}</div>,

            width: "40 !important"
        },
        {
            title: "Sub Test Name", field: ``

            ,
            render: (row) => <div>{row.sub_test_name}</div>,


        },
        {
            title: "Test Name", field: ``

            ,
            render: (row) => <div>{row.test_name}</div>,


        },
        {
            title: "Fee", field: ``

            ,
            render: (row) => <div>{row.sub_test_fee}</div>,


        },
        {
            title: "Test Group", field: ``

            ,
            render: (row) => <div>{row.test_group_name}</div>,


        },

        {
            title: "Test Category", field: ``

            ,
            render: (row) => <div>{row.test_category_name}</div>,


        },
        {
            title: "Action", field: "patient",
            render: (row) => <div>
                <button className="btn btn-info btn-sm action-btn"> <i class="fas fa-edit" onClick={(e) => {
                    EditMoalOpen(e, row.id)
                }} ></i>
                </button>
                <button onClick={(e) => deleteallTestDatabse(e, row.id)} className="btn btn-danger btn-sm action-btn mx-1"> <i class="fas fa-trash"></i> </button></div>
        },
    ];


    //add modal 

    const customStyles = {
        content: {
            top: '35%',
            left: '30%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "40%",
            height: "350px",
            background: "#ffffff",
        },
        overlay: { zIndex: 1000 }

    };

    useEffect(() => {
        Modal.setAppElement('body');
    }, []);

    const [modalIsOpen, setIsOpen] = React.useState(false);
    function AddMoalOpen(e) {
        e.preventDefault();
        setIsOpen(true);
    }


    function closeModal() {
        setIsOpen(false);

    }




    const [modalEditIsOpen, setEditIsOpen] = React.useState(false);
    function EditMoalOpen(e, editId) {
        e.preventDefault();
        setEditIsOpen(true);
        setEditTestNameId(editId)
    }


    function closeEditModal() {
        setEditIsOpen(false);

    }






    return (
        <>
            {/* <div class="shadow-sm p-2 mb-3 mt-2 bg-body rounded">
                <h5 className="mx-2" >Test Panels</h5>
            </div> */}
            {/* <h6>Test Panels</h6> */}


            <div class="">
                <div className="row">


                    <div>
                        <button type="submit" className="btns float-end mt-2 " onClick={AddMoalOpen}>
                            Add New
                        </button>
                    </div>

                    <Modal
                        isOpen={modalIsOpen}
                        onRequestClose={closeModal}
                        style={customStyles}
                        contentLabel="Example Modal"
                    >

                        <div className='card-body'>
                            <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeModal}><i class="fal fa-times"></i></span>

                            <h5 className=""> <b>Add Test Database</b></h5>

                            {/* <div className="line "></div> */}

                            <div className="col-md-12 ">

                                <div className="row">

                                    <div class="col-md-6">
                                        <div class="mb-3 mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">Test Group Name</label>
                                            <Autocomplete
                                                disablePortal
                                                id="combo-box-demo"
                                                size="small"
                                                options={allTestGroup}
                                                getOptionLabel={(option) => option.test_group_name}
                                                onChange={(e, newValue) => {
                                                    setTestGroupId(newValue.id)


                                                }}

                                                renderInput={(params) => <TextField {...params} label="Test Group" />}
                                            />
                                        </div>


                                        <div class="mb-3 mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">Test Name</label>
                                            <Autocomplete
                                                disablePortal
                                                id="combo-box-demo"
                                                size="small"
                                                options={allDependentTestNames}
                                                getOptionLabel={(option) => option.test_name}
                                                onChange={(e, newValue) => {
                                                    setTestNameId(newValue.id)


                                                }}

                                                renderInput={(params) => <TextField {...params} label="Test Name" />}
                                            />
                                        </div>
                                        <div class="mb-3 mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">Fee</label>
                                            <input type="text" class="form-control" id="exampleFormControlInput1" onChange={(e) => setSubTestFee(e.target.value)} value={subTestFee} name="fee" />
                                        </div>

                                    </div>


                                    <div class="col-md-6">
                                        <div class="mb-3 mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">Test Catgory Name</label>
                                            <Autocomplete
                                                disablePortal
                                                id="combo-box-demo"
                                                size="small"
                                                options={dependentTestCategory}
                                                getOptionLabel={(option) => option.test_category_name}
                                                onChange={(e, newValue) => {
                                                    setTestCategoryId(newValue.id)


                                                }}

                                                renderInput={(params) => <TextField {...params} label="Test Category" />}
                                            />
                                        </div>
                                        <div class="mb-3 mt-3">
                                            <label for="exampleFormControlInput1" class="form-label">Sub Test Name</label>
                                            <input type="text" class="form-control" id="exampleFormControlInput1" onChange={(e) => setSubTestName(e.target.value)} value={subTestName} name="sub_test_name" />
                                        </div>

                                    </div>

                                    <button class="btn btn-success btn-sm float-end " type="submit" onClick={TestNameSave}>
                                        Save
                                    </button>

                                </div>

                            </div>



                        </div>
                    </Modal>


                    {/* /* {edit modal} */}

                    <Modal
                        isOpen={modalEditIsOpen}
                        onRequestClose={closeEditModal}
                        style={customStyles}
                        contentLabel="Example Modal"
                    >

                        <div className='card-body'>
                            <span className='float-end' style={{ fontSize: "20px", cursor: "pointer" }} onClick={closeEditModal}><i class="fal fa-times"></i></span>

                            <h5 className=""> <b>Edit Test Name</b></h5>

                            {/* <div className="line "></div> */}

                            <div className="row ">

                                <div className="col-md-12">
                                    <div class="mb-3 mt-3">
                                        <label for="exampleFormControlInput1" class="form-label">Test Group Name</label>
                                        <Autocomplete
                                            disablePortal
                                            id="combo-box-demo"
                                            size="small"
                                            options={allTestGroup}
                                            getOptionLabel={(option) => option.test_group_name}
                                            onChange={(e, newValue) => {
                                                setEditTestGroupId(newValue.id)


                                            }}

                                            renderInput={(params) => <TextField {...params} label={editTestName.test_group_name} />}
                                        />
                                    </div>


                                    <div class="mb-3 mt-3">
                                        <label for="exampleFormControlInput1" class="form-label">Test Catgory Name</label>
                                        <Autocomplete
                                            disablePortal
                                            id="combo-box-demo"
                                            size="small"
                                            options={editDependentTestCategory}
                                            getOptionLabel={(option) => option.test_category_name}
                                            onChange={(e, newValue) => {
                                                setEditTestCategoryId(newValue.id)


                                            }}

                                            renderInput={(params) => <TextField {...params} label={editTestName.test_category_name} />}
                                        />
                                    </div>

                                    <div class="mb-3 mt-3">
                                        <label for="exampleFormControlInput1" class="form-label">Test Name</label>
                                        <input type="text" class="form-control" id="exampleFormControlInput1" onChange={(e) => setEditTest_name(e.target.value)} value={editTest_name} name="test_name" />
                                    </div>
                                    <div class="mb-3 mt-3">
                                        <label for="exampleFormControlInput1" class="form-label">Fee</label>
                                        <input type="text" class="form-control" id="exampleFormControlInput1" onChange={(e) => setEditFee(e.target.value)} value={editFee} name="fee" />
                                    </div>
                                    <button class="btn btn-success btn-sm float-end " type="submit" onClick={TestNameUpdate}>
                                        Update
                                    </button>

                                </div>


                            </div>



                        </div>
                    </Modal>



                    <div className="col-md-12">


                        <h6 className="px-2">Test Database</h6>


                        <MaterialTable
                            columns={columns}
                            data={allTestDatabses}
                            options={{
                                search: true,
                                // filtering: filter,
                                showTitle: false,
                                searchFieldAlignment: "left",
                                pageSize: 5,
                                emptyRowsWhenPaging: false,
                                pageSizeOptions: [5, 10, 20, 50, 100]
                            }}

                        />

                    </div>
                </div>

            </div>




        </>
    );
}

export default TestDatabase;