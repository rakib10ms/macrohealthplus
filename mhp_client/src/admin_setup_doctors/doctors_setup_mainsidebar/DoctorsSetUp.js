import React from 'react';
import DoctorsSetupSidebar from '../doctors_setup_sidebar/DoctorsSetupSidebar';

const AppointmentSetUp = () => {
    return (
        <div>
            <div className="ms-2">
                <div className="row">
                    <div className="col-md-3">
                        <DoctorsSetupSidebar/>
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