import React, { Component } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import swal from "sweetalert";
import AddDashboard from "../AddDashboard/AddDashboard";

class AddUserType extends Component {


    // to catch the data from input fields

    state = {
        user_type_name: '',
        error_list: [],
    }

    // handle the input fields

    handleInput = (e) => {
        this.setState({
            [e.target.name]: e.target.value
        });
    }

    // pass data to laravel controller

    saveUserType = async (e) => {
        e.preventDefault();
        const res = await axios.post('/save-user-type', this.state);

        if (res.data.status === 200) {
            swal("Success", res.data.message, "success");

            // console.log(res.data.message);
            this.setState({
                user_type_name: '',
                error_list: [],
            })

            // this.props.history.push('/user_type');
        } else {
            this.setState({
                error_list: res.data.validate_error,
            });
        }

    }

    render() {
        return (
            <>
               
                <div className="container">
                    <div className="row">
                        <div className="col-md-3">
                            <AddDashboard></AddDashboard>
                        </div>
                        <div className="col-md-9 mt-3">
                            <div className="card">
                                <div className="card-header">
                                    <h6 className="card-title">User Type
                                        <Link to={"/user-type"} className="btn mb-1 btn-sm btn-primary float-end">Back</Link>
                                    </h6>

                                </div>
                                <div className="card-body">
                                    <form onSubmit={this.saveUserType}>
                                        <div className="card-body">
                                            <div className="col-md-12">
                                                <div className="form-group">
                                                    <label htmlFor="user_type_name" className="col-form-label-sm">User Type Name</label>

                                                    <input type="text" onChange={this.handleInput} value={this.state.user_type_name} className="form-control" name="user_type_name" />
                                                    <span className="text-danger">{this.state.error_list.user_type_name}</span>
                                                    <p className="doc_image_size">User Type Name must be same as Doctor/Patient/Nurse </p>
                                                </div>
                                                <div className="float-right">
                                                    <button type="submit" className="btn btn-primary btn-sm text-uppercase float-end mt-2"><i
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
        );
    }
}

export default AddUserType;