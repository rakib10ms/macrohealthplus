import React from 'react';
import { Link,useLocation } from 'react-router-dom';
import './AddDashboard.css';

const ReminderSetupSidebar = () => {
    const location = useLocation();
    return (
        <div>
            <div className="custom-card mt-2">
                <div className="card-body">
                    <ul className="setup-list">
                       
                        <li>
                            <Link className={`${location.pathname == "/reminder-reason" ? "active-menu" : ""} text-decoration-none set-up-btn`}
                                  to="/reminder-reason"><i className="fas menu-icon fa-plus-circle"></i> Reminder Reason</Link>
                        </li>
                       
                       
                    </ul>

                </div>
            </div>
        </div>
    );
};

export default ReminderSetupSidebar;