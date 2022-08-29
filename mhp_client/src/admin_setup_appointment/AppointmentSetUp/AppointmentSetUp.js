import React from 'react';
import Sidebar1 from '../../Component/Sidebar1/Sidebar1';
import AddDashboard from '../AddDashboard/AddDashboard';
import Footer from "../../Component/Footer/Footer";

const AppointmentSetUp = () => {
    return (
        <div>
      
            <div className="container">
                <div className="row">
                    <div className="col-md-3">
                        <AddDashboard/>
                    </div>
                    <div className="col-md-9">
                        <img src="https://serving.photos.photobox.com/34800924c449c70f41bf931f93ed1b5dc85ab4e6780ab8aee2e19b866ad69d21ed295353.jpg"></img>
                    </div>
                </div>
            </div>
          
        </div>
    );
};

export default AppointmentSetUp;