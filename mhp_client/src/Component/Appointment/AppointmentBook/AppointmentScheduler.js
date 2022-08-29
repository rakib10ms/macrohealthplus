import * as React from 'react';
import * as ReactDOM from 'react-dom';
import { Day, Week, WorkWeek, Month, Agenda, ScheduleComponent, ViewsDirective, ViewDirective, ResourcesDirective, ResourceDirective, Inject, Resize, DragAndDrop, ExcelExport } from '@syncfusion/ej2-react-schedule';
import { createElement, extend, L10n } from '@syncfusion/ej2-base';
import { SampleBase } from './sample-base';
import { closest, isNullOrUndefined, remove, removeClass } from '@syncfusion/ej2-base';
import { Query, DataManager } from '@syncfusion/ej2-data';
import axios from 'axios';
import { Button } from '@syncfusion/ej2-buttons';
import ReactModal from 'react-modal';
import TextField from '@mui/material/TextField';
import Autocomplete from '@mui/material/Autocomplete';
import Checkbox from '@mui/material/Checkbox';
import CheckBoxOutlineBlankIcon from '@mui/icons-material/CheckBoxOutlineBlank';
import swal from 'sweetalert';
import { ContextMenuComponent } from '@syncfusion/ej2-react-navigations';
import { FillingBottle } from "react-cssfx-loading";

import './AppointmentBook.css'
import ReactToPrint from 'react-to-print';
import CheckBoxIcon from '@mui/icons-material/CheckBox';
import ComponentToPrint from './ComponentToPrint';
import { containerClasses } from '@mui/material';
import Swal from 'sweetalert2';
import { useNavigate } from 'react-router-dom';

const icon = <CheckBoxOutlineBlankIcon fontSize="small" />;
const checkedIcon = <CheckBoxIcon fontSize="small" />;


L10n.load({
  'en-US': {
    'schedule': {
      'saveButton': 'Add',
      'cancelButton': 'Close',
      'deleteButton': 'Remove Patient',
      'save': 'Add'
    },
  }
});
export default class AppointmentScheduler extends SampleBase {


  constructor() {
    super(...arguments);

    this.state = {
      scheduleData: [],
      DoctorSearchData: [],
      showModal: false,
      search: null,
      searchResult: null,
      errorData: null,
      cellData: [],
      existingPatient: null,
      selectedDateNew: new Date().toLocaleDateString(),
      showClender: false,
      searchBYDoctorName: '',
      searchByDepartment: '',
      doctorDepartment: [],
      DoctorSearchDataForDepartment: [],
      showPrint: false,
      patientValueForPrint: [],
      age: '',
      printDoctorData: [],
      appointmentDay: '',
      appointmentTime: '',
      patient_regi_model_show: false,
      patientGenderDropdown: [],
      patientBloodDropdown: [],
      patientEventData: {
        Subject: ''
      },
      image: [],
      imageUrl: [],
      image_error: ''

    }


    this.patient_hn_number = React.createRef();
    this.patient_first_name = React.createRef();
    this.patient_mobile_phone = React.createRef();
    this.patient_email = React.createRef();
    this.patient_dob = React.createRef();
    this.ptn_blood_group_id = React.createRef();
    this.patient_birth_sex_id = React.createRef();
    this.patient_address1 = React.createRef();
    this.patient_image = React.createRef();
    // this.componentRef = React.createRef();

    this.handleOpenModal = this.handleOpenModal.bind(this);
    this.handleCloseModal = this.handleCloseModal.bind(this);
    this.handleChange = this.handleChange.bind(this);
    this.searchHandeler = this.searchHandeler.bind(this);
    this.clearHandle = this.clearHandle.bind(this);
    this.addExistingPatient = this.addExistingPatient.bind(this);

    this.PatientModelColse = this.PatientModelColse.bind(this);
    this.handleSubmitForPatient = this.handleSubmitForPatient.bind(this);



    this.menuItems = [
      {
        text: 'Patient Profile',
        iconCss: 'fas fa-user-check',
        id: 'PatientProfile'
      },
      {
        text: 'Edit patient',
        iconCss: 'fas fa-user-check',
        id: 'updatePatient'
      },
      {
        text: 'View Record',
        iconCss: 'fas fa-eye',
        id: 'viewRecord'
      },
      {
        text: 'Start Visit',
        iconCss: 'far fa-arrow-alt-circle-right',
        id: 'startVisit'
      },
      {
        text: 'New Patient Registration',
        iconCss: 'fas fa-user-check',
        id: 'patient_reg'
      },
      {
        text: 'Cancel appointment',
        iconCss: 'fas fa-user-times',
        id: 'cancle'
      },
      {
        text: 'Change Status',
        iconCss: 'fas fa-info-circle',
        id: 'status',
        items: [
          {
            text: 'Arrived',
            iconCss: 'fas fa-circle arrived',
            id: 'Arrived'
          },
          {
            text: 'Unavilable',
            iconCss: 'fas fa-circle unavilable',
            id: 'Unavilable'
          },
          {
            text: 'Waiting',
            iconCss: 'fas fa-circle waiting',
            id: 'Waiting'
          },
          {
            text: 'With Doctors',
            iconCss: 'fas fa-circle withdoctors',
            id: 'withdoctors'
          },
          {
            text: 'At billing',
            iconCss: 'fas fa-circle attbilling',
            id: 'attbilling'
          },
          {
            text: 'Did not attend',
            iconCss: 'fas fa-circle notattend',
            id: 'notattend'
          },
        ]
      },
      {
        text: 'Print Appointment Slip',
        iconCss: 'fas fa-print',
        id: 'printSlip'
      },
      {
        text: 'Today',
        iconCss: 'fas fa-clock',
        id: 'Today'
      },


    ];
  }



  onMenuItemSelect(args) {
    console.log("onMenuItemSelect", args)
    let selectedMenuItem = args.item.id;

    console.log("onMenuItemSelect id", selectedMenuItem)
    console.log("this.selectedTarget", this.selectedTarget)
    console.log("onMenuItemSelect this.scheduleObj", this.scheduleObj)

    if (this.selectedTarget.classList.contains('e-appointment')) {
      this.eventObj = this.scheduleObj.getEventDetails(this.selectedTarget);
    }
    switch (selectedMenuItem) {
      case 'Today':
        this.scheduleObj.selectedDate = new Date();
        break;

      case 'startVisit':
         console.log("startVisit",this.eventObj.StartTime)

         this.props.goToGD(this.eventObj.patientID)
        //  localStorage.setItem("StartTime", JSON.stringify(this.eventObj.StartTime));

        // axios.get(`/patient-search/${this.eventObj.Location}`).then(res => {
        //   this.props.goToGD(res.data[0].id)
        // })
        break;
      case 'PatientProfile':
        this.props.goToPatientProfile(this.eventObj.patientID)

        // axios.get(`/patient-search/${this.eventObj.Location}`).then(res => {
        //   this.props.goToPatientProfile(res.data[0].id)
        // })
        break;

      case 'updatePatient':
        this.props.goToPatientEdit(this.eventObj.patientID)
        // axios.get(`/patient-search/${this.eventObj.Location}`).then(res => {
        //   this.props.goToPatientEdit(res.data[0].id)
        // })

        break;

      case 'status':
      case 'Arrived':
        console.log("Arrived", this.eventObj)
        this.scheduleObj.saveEvent({
          CategoryColor: "#020131",
          Description: this.eventObj.Description,
          DoctorID: this.eventObj.DoctorID,
          EndTime: this.eventObj.EndTime,
          Id: this.eventObj.Id,
          Location: this.eventObj.Location,
          StartTime: this.eventObj.StartTime,
          Subject: this.eventObj.Subject,
          appointCreated: this.eventObj.appointCreated,
          patientID: this.eventObj.patientID,
          statusName: "Arrived"
        });
        break;

      case 'status':
      case 'Unavilable':
        console.log("Unavilable", this.eventObj)

        this.scheduleObj.saveEvent({
          CategoryColor: "#6e0711",
          Description: this.eventObj.Description,
          DoctorID: this.eventObj.DoctorID,
          EndTime: this.eventObj.EndTime,
          Id: this.eventObj.Id,
          Location: this.eventObj.Location,
          StartTime: this.eventObj.StartTime,
          Subject: this.eventObj.Subject,
          appointCreated: this.eventObj.appointCreated,
          patientID: this.eventObj.patientID,
          statusName: "Unavilable"
        });
        break;

      case 'status':
      case 'Waiting':
        console.log("Waiting 1", this.eventObj)
        this.scheduleObj.saveEvent({
          CategoryColor: "#ebdb07",
          Description: this.eventObj.Description,
          DoctorID: this.eventObj.DoctorID,
          EndTime: this.eventObj.EndTime,
          Id: this.eventObj.Id,
          Location: this.eventObj.Location,
          StartTime: this.eventObj.StartTime,
          Subject: this.eventObj.Subject,
          appointCreated: this.eventObj.appointCreated,
          patientID: this.eventObj.patientID,
          statusName: "Waiting"
        });
        break;

      case 'status':
      case 'withdoctors':
        console.log("withdoctors 1", this.eventObj)
        this.scheduleObj.saveEvent({
          CategoryColor: "#004700",
          Description: this.eventObj.Description,
          DoctorID: this.eventObj.DoctorID,
          EndTime: this.eventObj.EndTime,
          Id: this.eventObj.Id,
          Location: this.eventObj.Location,
          StartTime: this.eventObj.StartTime,
          Subject: this.eventObj.Subject,
          appointCreated: this.eventObj.appointCreated,
          patientID: this.eventObj.patientID,
          statusName: "withdoctors"
        });
        break;

      case 'status':
      case 'attbilling':
        console.log("attbilling 1", this.eventObj)

        this.scheduleObj.saveEvent({
          CategoryColor: "#08f4fc",
          Description: this.eventObj.Description,
          DoctorID: this.eventObj.DoctorID,
          EndTime: this.eventObj.EndTime,
          Id: this.eventObj.Id,
          Location: this.eventObj.Location,
          StartTime: this.eventObj.StartTime,
          Subject: this.eventObj.Subject,
          appointCreated: this.eventObj.appointCreated,
          patientID: this.eventObj.patientID,
          statusName: "attbilling"
        });
        break;

      case 'status':
      case 'notattend':
        console.log("notattend 1", this.eventObj)
        this.scheduleObj.saveEvent({
          CategoryColor: "#ff0d15",
          Description: this.eventObj.Description,
          DoctorID: this.eventObj.DoctorID,
          EndTime: this.eventObj.EndTime,
          Id: this.eventObj.Id,
          Location: this.eventObj.Location,
          StartTime: this.eventObj.StartTime,
          Subject: this.eventObj.Subject,
          appointCreated: this.eventObj.appointCreated,
          patientID: this.eventObj.patientID,
          statusName: "notattend"
        });
        // axios.post(`/update-scheduler/${this.eventObj.Id}`,
        //   {
        //     CategoryColor: "#ff0d15",
        //     statusName: "notattend",
        //     doctors_id: this.eventObj.DoctorID.toString(),
        //     patient_name: this.eventObj.Subject,
        //     IsAllDay: false,
        //     StartTime: this.eventObj.StartTime,
        //     EndTime: this.eventObj.EndTime,
        //     patient_mobile: this.eventObj.Location,
        //     notes: this.eventObj.Description,
        //     patientID: this.eventObj.patientID,
        //     appointCreated: this.eventObj.appointCreated
        //   })
        //   .then(res => {
        //     // console.log("Update Data_eventChange", res.data)
        //     window.location.reload(true);
        //   });
        break;

      case 'cancle':
        this.scheduleObj.deleteEvent(
          this.eventObj
        );
        break;

      case 'patient_reg':
        console.log("Patient Res", this.eventObj);

        this.setState({
          patient_regi_model_show: true,
          patientEventData: this.eventObj
        })


        break;


      case 'printSlip':
        console.log("printSlip")
        var date = new Date(this.eventObj.StartTime)
        var appDate = date.getDate() + "/"
          + (date.getMonth() + 1) + "/"
          + date.getFullYear()
        var hours = date.getHours();
        var minutes = date.getMinutes();

        var ampm = hours >= 12 ? 'pm' : 'am';
        hours = hours % 12;
        hours = hours ? hours : 12; // the hour '0' should be '12'
        minutes = minutes < 10 ? '0' + minutes : minutes;
        var apptime = hours + ':' + minutes + ' ' + ampm;

        this.setState({
          appointmentDay: appDate,
          appointmentTime: apptime
        })

        console.log("appointmentDay", this.state.appointmentDay)
        console.log("appointmentTime", this.state.appointmentTime)

        console.log("Doctor Id", this.eventObj.DoctorID)
        axios.get(`/doctor-search-id/${this.eventObj.DoctorID}`).then(res => {
          this.setState({
            printDoctorData: res.data
          })
        })

        console.log("P ID", this.eventObj.patientID)
        axios.get(`/patient-search-by-id/${this.eventObj.patientID}`).then(res => {
          var currentYear = new Date().getFullYear();
          var birthDate = new Date(res.data.patient_dob).getFullYear();
          var age = currentYear - birthDate;

          this.setState({
            patientValueForPrint: res.data,
            age: age
          })
        }).catch(err => {
          console.log(err)
        })

        console.log("printDoctorData", this.state.printDoctorData)
        console.log("patientValueForPrint", this.state.patientValueForPrint)

        setTimeout(function () {
          document.getElementById("appointmentSlip").click();

        }, 2000);

        break;

    }
  }

  onContextMenuBeforeOpen(args) {
    let newEventElement = document.querySelector('.e-new-event');
    if (newEventElement) {
      remove(newEventElement);
      removeClass([document.querySelector('.e-selected-cell')], 'e-selected-cell');
    }
    let targetElement = args.event.target;
    if (closest(targetElement, '.e-contextmenu')) {
      return;
    }
    this.selectedTarget = closest(targetElement, '.e-appointment,.e-work-cells,' +
      '.e-vertical-view .e-date-header-wrap .e-all-day-cells,.e-vertical-view .e-date-header-wrap .e-header-cells');
    if (isNullOrUndefined(this.selectedTarget)) {
      args.cancel = true;
      return;
    }


    if (this.selectedTarget.classList.contains('e-appointment')) {
      this.eventObj = this.scheduleObj.getEventDetails(this.selectedTarget);
      if (this.eventObj.RecurrenceRule) {
        console.log("this.eventObj.RecurrenceRule", this.eventObj.RecurrenceRule)

        console.log(" this.menuObj if Condition")
        // this.menuObj.showItems(['EditRecurrenceEvent', 'DeleteRecurrenceEvent'], true);
        // this.menuObj.hideItems(['Add', 'AddRecurrence', 'Today', 'Save', 'Delete'], true);
        // this.menuObj.hideItems(['Today', 'PatientProfile', 'status','viewRecord','startVisit','printSlip'], true);
      }
      else {
        console.log(" this.menuObj Else Condition", this.eventObj)
        if (this.eventObj.patientID === undefined || this.eventObj.patientID === null) {
          //this.menuObj.hideItems(['PatientProfile','printSlip',], true);
          this.menuObj.hideItems(['Today', 'PatientProfile', 'status', 'viewRecord', 'startVisit', 'printSlip', 'updatePatient'], true);
          this.menuObj.showItems(['patient_reg'], true);
        } else {
          this.menuObj.showItems(['Today', 'PatientProfile', 'status', 'viewRecord', 'startVisit', 'printSlip', 'cancle', 'updatePatient'], true);
          this.menuObj.hideItems(['patient_reg'], true);
        }

        // this.menuObj.hideItems(['ResisterPatient', 'addPatient'], true);
      }
      return;
    }

    console.log(" this.menuObj without Condition with")
    this.menuObj.hideItems(['Today', 'PatientProfile', 'status', 'viewRecord', 'startVisit', 'printSlip', 'cancle', 'patient_reg', 'updatePatient'], true);
    // this.menuObj.showItems(['ResisterPatient', 'addPatient'], true);
  }

  // onMenuItemSelect(args) {
  //     let selectedMenuItem = args.item.id;
  //     if (this.selectedTarget.classList.contains('e-appointment')) {
  //         this.eventObj = this.scheduleObj.getEventDetails(this.selectedTarget);
  //     }
  //     switch (selectedMenuItem) {
  //         case 'Today':
  //             this.scheduleObj.selectedDate = new Date();
  //             break;
  //         case 'Add':
  //         case 'AddRecurrence':
  //             let selectedCells = this.scheduleObj.getSelectedElements();
  //             let activeCellsData = this.scheduleObj.getCellDetails(selectedCells.length > 0 ? selectedCells : this.selectedTarget);
  //             if (selectedMenuItem === 'Add') {
  //                 this.scheduleObj.openEditor(activeCellsData, 'Add');
  //             }
  //             else {
  //                 this.scheduleObj.openEditor(activeCellsData, 'Add', null, 1);
  //             }
  //             break;
  //         case 'Save':
  //         case 'EditOccurrence':
  //         case 'EditSeries':
  //             if (selectedMenuItem === 'EditSeries') {
  //                 this.eventObj = new DataManager(this.scheduleObj.eventsData).executeLocal(new Query().where(this.scheduleObj.eventFields.id, 'equal', this.eventObj[this.scheduleObj.eventFields.recurrenceID]))[0];
  //                 console.log("Edit this.eventObj",this.eventObj)
  //               }
  //             this.scheduleObj.openEditor(this.eventObj, selectedMenuItem);
  //             break;
  //         case 'Delete':
  //           console.log("Delete this event data",this.eventObj)
  //            // this.scheduleObj.deleteEvent(this.eventObj);
  //             break;
  //         case 'DeleteOccurrence':
  //         case 'DeleteSeries':
  //             this.scheduleObj.deleteEvent(this.eventObj, selectedMenuItem);
  //             break;
  //     }
  // }
  // onContextMenuBeforeOpen(args) {
  //     let newEventElement = document.querySelector('.e-new-event');
  //     if (newEventElement) {
  //         remove(newEventElement);
  //         removeClass([document.querySelector('.e-selected-cell')], 'e-selected-cell');
  //     }
  //     let targetElement = args.event.target;
  //     if (closest(targetElement, '.e-contextmenu')) {
  //         return;
  //     }
  //     this.selectedTarget = closest(targetElement, '.e-appointment,.e-work-cells,' +
  //         '.e-vertical-view .e-date-header-wrap .e-all-day-cells,.e-vertical-view .e-date-header-wrap .e-header-cells');
  //     if (isNullOrUndefined(this.selectedTarget)) {
  //         args.cancel = true;
  //         return;
  //     }
  //     if (this.selectedTarget.classList.contains('e-appointment')) {
  //         this.eventObj = this.scheduleObj.getEventDetails(this.selectedTarget);
  //         if (this.eventObj.RecurrenceRule) {
  //             console.log("this.eventObj.RecurrenceRule",this.eventObj.RecurrenceRule)
  //             this.menuObj.showItems(['EditRecurrenceEvent', 'DeleteRecurrenceEvent'], true);
  //             this.menuObj.hideItems(['Add', 'AddRecurrence', 'Today', 'Save', 'Delete'], true);
  //         }
  //         else {
  //             this.menuObj.showItems(['Save', 'Delete'], true);
  //             this.menuObj.hideItems(['Add', 'AddRecurrence', 'Today', 'EditRecurrenceEvent', 'DeleteRecurrenceEvent'], true);
  //         }
  //         return;
  //     }
  //     this.menuObj.hideItems(['Save', 'Delete', 'EditRecurrenceEvent', 'DeleteRecurrenceEvent'], true);
  //     this.menuObj.showItems(['Add', 'AddRecurrence', 'Today'], true);
  // }


  onEventRendered(args) {
    console.log("args.element.style.backgroundColor", args.element.style.backgroundColor)
    args.element.style.backgroundColor = args.data.CategoryColor;
  }

  componentDidMount() {

    axios.get(`/gender-dropdown`).then(res => {
      this.setState({
        patientGenderDropdown: res.data.gender
      })
    })

    axios.get(`/blood-group`).then(res => {
      this.setState({
        patientBloodDropdown: res.data.blood_group
      })
    })

    //Error: react-modal: App element is not defined. Please use `Modal.setAppElement(el) ReactModal.setAppElement('body');`
    ReactModal.setAppElement('body');

    axios.get('/department').then(res => {
      this.setState({ doctorDepartment: res.data.department })
      console.log("Doctor Department", res.data.department)
    })

    if (this.state.DoctorSearchData == '') {
      axios.get('/all-doctors-booking').then(res => {
        this.setState({ DoctorSearchData: res.data.doctors })
        console.log("Doctor Data", res.data.doctors)
      })

      axios.get('/scheduler').then(res => {
        console.log("getData", res.data)
        const result = res.data.scheduleData.map(item => {
          return (
            {
              Id: item.id,
              Subject: item.patient_name,
              StartTime: item.StartTime,
              EndTime: item.EndTime,
              DoctorID: parseInt(item.doctors_id),
              Location: item.patient_mobile,
              Description: item.notes,
              CategoryColor: item.status_color,
              statusName: item.status_name,
              patientID: item.patient_id,
              appointCreated: item.created_at

            }
          )
        })
        this.data = extend([], result, null, true);
        this.setState({
          scheduleData: result
        })

        // if (this.state.existingPatient != null) {
        //   this.data.push(this.state.existingPatient)
        // }
      })
    }


  }

  clearHandle() {
    this.setState({ searchResult: null })
    this.setState({ search: null })
    this.setState({ errorData: null })

    document.getElementById('output').value = ''
  }

  handleChange(event) {
    this.setState({ search: event.target.value });
  }

  searchHandeler(event) {
    event.preventDefault();
    if (this.state.search !== null) {
      axios.get(`/patient-search/${this.state.search}`).then(res => {
        this.setState({ searchResult: res.data })
        console.log("Search Result", this.state.searchResult)
      }).catch(err => {
        console.log(err)
        this.setState({ errorData: 'No Data Found , Please Check Again?' })
      })
    } else {
      alert("Please insert patient mobile or hn number")
    }
  }

  addExistingPatient(e, item) {
    e.preventDefault();
    console.log("Add patient addExistingPatient", item)
    console.log("this.state.cellData", this.state.cellData)

    const patientDetails =
    {
      Subject: item.patient_first_name + ' ' + item.patient_middle_name + ' ' + item.patient_last_name,
      StartTime: this.state.cellData.StartTime,
      EndTime: this.state.cellData.EndTime,
      DoctorID: parseInt(this.state.cellData.doctors_id),
      Location: item.patient_mobile_phone,
      patientID: item.id,
      CategoryColor: "#8961ed"
    }
    console.log("patientDetails Existing", patientDetails)

    this.scheduleObj.addEvent(patientDetails);
    this.handleCloseModal();

  }



  onActionBegin(args) {
    console.log("onActionBegin Arguments", args)

    if (args.requestType === 'toolbarItemRendering') {
      let exportItem = {
        align: 'Right', showTextOn: 'Both', prefixIcon: 'e-icon-schedule-excel-export',
        text: 'Excel Export', cssClass: 'e-excel-export', click: this.onExportClick.bind(this)
      };
      args.items.push(exportItem);
    }

    console.log("args_State", this.state.onActinonArgs)
    if (args.requestType == "eventCreate") {
      console.log("eventCreate Add Patient", args.addedRecords[0]);
      const patientDetails =
      {
        doctors_id: args.addedRecords[0].DoctorID.toString(),
        patient_name: args.addedRecords[0].Subject,
        IsAllDay: false,
        StartTime: args.addedRecords[0].StartTime,
        EndTime: args.addedRecords[0].EndTime,
        patient_mobile: args.addedRecords[0].Location,
        notes: args.addedRecords[0].Description,
        patient_id: args.addedRecords[0].patientID,
        statusColor: args.addedRecords[0].CategoryColor,

      }
      console.log("patientDetails_eventCreate", patientDetails)
      axios.post('/save-scheduler', patientDetails)
        .then(res => {
          console.log("saveData", res.data)

          axios.get('/scheduler').then(res => {
            console.log("getData", res.data)
            const result = res.data.scheduleData.map(item => {
              return (
                {
                  Id: item.id,
                  Subject: item.patient_name,
                  StartTime: item.StartTime,
                  EndTime: item.EndTime,
                  DoctorID: parseInt(item.doctors_id),
                  Location: item.patient_mobile,
                  Description: item.notes,
                  CategoryColor: item.status_color,
                  statusName: item.status_name,
                  patientID: item.patient_id,
                  appointCreated: item.created_at
    
                }
              )
            })
            this.data = extend([], result, null, true);
            this.setState({
              scheduleData: result
            })
    
            // if (this.state.existingPatient != null) {
            //   this.data.push(this.state.existingPatient)
            // }
          })

          if (res.data.saveData.patient_mobile != null) {
            // const sms = `Wellcome to MHP,Thank you ${res.data.saveData.patient_name} for your Appiontment.Your appiontment booking time is: ${res.data.saveData.StartTime}`
            const sms = `Dear Sir/Mam,
         Your appointment has been confirmed on ${res.data.saveData.StartTime}. Please come to our office within the designated time.
         For any queries, please call 09638 505 505.
         Thanks.`
            axios.post(`https://api.boom-cast.com/boomcast/WebFramework/boomCastWebService/externalApiSendTextMessage.php?masking=NOMASK&userName=fauziaali2000@gmail.com&password=80f50e35f83130f022e78a2862aab390&MsgType=TEXT&receiver=${res.data.saveData.patient_mobile}&message=${sms}`)
              .then(res => {
                console.log("Sms Sent")
              })
          }
        });

    } else if (args.requestType == "eventChange") {

      console.log("eventChange_eventChange New", args.changedRecords[0]);

      console.log("Id Update patients", args.changedRecords[0])
      const id = args.changedRecords[0].Id
      const updatePatientDetails =
      {
        doctors_id: args.changedRecords[0].DoctorID.toString(),
        patient_name: args.changedRecords[0].Subject,
        IsAllDay: false,
        StartTime: args.changedRecords[0].StartTime,
        EndTime: args.changedRecords[0].EndTime,
        patient_mobile: args.changedRecords[0].Location,
        notes: args.changedRecords[0].Description,
        CategoryColor: args.changedRecords[0].CategoryColor,
        statusName: args.changedRecords[0].statusName,
        patientID: args.changedRecords[0].patientID

      }
      console.log("updatePatientDetails Patients", updatePatientDetails)

      axios.post(`/update-scheduler/${id}`, updatePatientDetails)
        .then(res => {
          axios.get('/scheduler').then(res => {
            console.log("getData", res.data)
            const result = res.data.scheduleData.map(item => {
              return (
                {
                  Id: item.id,
                  Subject: item.patient_name,
                  StartTime: item.StartTime,
                  EndTime: item.EndTime,
                  DoctorID: parseInt(item.doctors_id),
                  Location: item.patient_mobile,
                  Description: item.notes,
                  CategoryColor: item.status_color,
                  statusName: item.status_name,
                  patientID: item.patient_id,
                  appointCreated: item.created_at
    
                }
              )
            })
            this.data = extend([], result, null, true);
            this.setState({
              scheduleData: result
            })
    
            // if (this.state.existingPatient != null) {
            //   this.data.push(this.state.existingPatient)
            // }
          })
          console.log("postData_eventChange", res.data)

          if (res.data.updatedData.patient_mobile != null) {
            const sms = `Dear Sir/Mam,
          Your appointment is rescheduled to ${res.data.updatedData.StartTime}. Please come to our office within the designated time.
          For any queries, please call 09638 505 505.
          Thanks.`
            // const sms = `Wellcome to MHP,Thank you ${res.data.updatedData.patient_name} for your Appiontment.Your appiontment booking time is: ${res.data.updatedData.StartTime}`
            axios.post(`https://api.boom-cast.com/boomcast/WebFramework/boomCastWebService/externalApiSendTextMessage.php?masking=NOMASK&userName=fauziaali2000@gmail.com&password=80f50e35f83130f022e78a2862aab390&MsgType=TEXT&receiver=${res.data.updatedData.patient_mobile}&message=${sms}`)
              .then(res => {
                console.log("Sms Sent")
              })
          }
        });

    } else if (args.requestType == "eventRemove") {

      console.log("eventRemove argus", args)
      console.log("deleteChange", args.deletedRecords[0]);

      console.log("Id", args.deletedRecords[0].Id)
      const id = args.deletedRecords[0].Id

      axios.post(`/delete-scheduler/${id}`)
        .then(res => console.log("Data", res.data));

    }

  }

  onExportClick() {
    this.scheduleObj.exportToExcel();
  }


  onPopupOpen(args) {
    console.log("Popup_Argu", args)

    if (args.type === 'QuickInfo') {
      console.log("args.data.Id", args.data.Id)
      if (args.data.Id == null) {
        args.element.getElementsByClassName('e-subject e-field e-input')[0].placeholder = 'Add New Patient Name';

        let dialogObj = document.querySelector('.e-quick-popup-wrapper').ej2_instances[0];
        // Fetching the fotter element of the editor window
        let footer = dialogObj.element.querySelector('.e-popup-footer');
        console.log("footer", footer)
        // Creting the button element
        let btnElement = createElement("BUTTON", { innerHTML: "Existing Patient" });
        // Creting the button object
        let buttonObj = new Button();
        // Appeding the button object to the button element
        buttonObj.appendTo(btnElement);
        // Appendig the creted button to the footer of the editor window.
        footer.appendChild(btnElement);
        // Binding the evnet to the custom button element
        buttonObj.element.onclick = () => {
          this.setState({ showModal: true });
          args.element.ej2_instances[0].close()

        };
      } else {
        if (args.data.patientID !== null) {

          console.log("Patient ID Data For Print", args.data.patientID)

          var date = new Date(args.data.StartTime)

          var appDate = date.getDate() + "/"
            + (date.getMonth() + 1) + "/"
            + date.getFullYear()

          // var time = date.getHours() + ":"
          //           + date.getMinutes()

          var hours = date.getHours();
          var minutes = date.getMinutes();

          var ampm = hours >= 12 ? 'pm' : 'am';
          hours = hours % 12;
          hours = hours ? hours : 12; // the hour '0' should be '12'
          minutes = minutes < 10 ? '0' + minutes : minutes;
          var apptime = hours + ':' + minutes + ' ' + ampm;

          this.setState({
            appointmentDay: appDate,
            appointmentTime: apptime
          })

          axios.get(`/doctor-search-id/${args.data.DoctorID}`).then(res => {

            console.log("doctor-search-id", res.data)

            this.setState({
              printDoctorData: res.data
            })
          })

          axios.get(`/patient-search-by-id/${args.data.patientID}`).then(res => {
            //  this.setState({searchResult:res.data})
            console.log("Search Result Patient Data For Print", res.data)
            var currentYear = new Date().getFullYear();
            var birthDate = new Date(res.data.patient_dob).getFullYear();
            var age = currentYear - birthDate;

            this.setState({
              patientValueForPrint: res.data,
              age: age
            })
          }).catch(err => {
            console.log(err)
          })
        }
      }




      const patientDetails =
      {
        doctors_id: args.data.DoctorID.toString(),
        IsAllDay: false,
        StartTime: args.data.StartTime,
        EndTime: args.data.EndTime,
        patient_mobile: args.data.Location
      }
      console.log("Exist patientDetails", patientDetails)

      this.setState({
        cellData: patientDetails
      })

      console.log("stateData", this.state.cellData)


    }

    if (args.type === 'Editor') {
      //Heder Chnge On PopUp
      args.element.getElementsByClassName('e-title-text')[0].innerHTML = 'Patient Information';

      // if (!args.element.querySelector('.custom-field-row')){
      //   let row = createElement('div', { className: 'e-control e-btn e-lib e-primary e-event-existing-patient e-flat' });
      //   let formElement = args.element.querySelector('.e-footer-content');
      //  console.log("formElement",formElement)
      //  formElement.appendChild(row)
      //  args.element.getElementsByClassName('e-control e-btn e-lib e-primary e-event-existing-patient e-flat')[0].innerHTML='Existing Patient';

      // // formElement.insertBefore(row, formElement.childNodes[0]);
      // }


      //  <button type="button" className="e-control e-btn e-lib e-primary e-event-save e-flat" data-ripple="true">Save</button>
      //  if (!args.element.querySelector('.custom-field-row')) {
      //   let row = createElement('div', { className: 'custom-field-row' });
      //   console.log("row",row)
      //   let formElement = args.element.querySelector('.e-schedule-form');
      //   console.log("formElement",formElement)
      //   formElement.firstChild.insertBefore(row, formElement.firstChild.firstChild);
      //   let container = createElement('div', { className: 'custom-field-container' });
      //   let inputEle = createElement('input', {
      //       className: 'e-field', attrs: { name: 'EventType' }
      //   });
      //   console.log("inputEle",inputEle)
      //   container.appendChild(inputEle);
      //   row.appendChild(container);
      //   let drowDownList = new DropDownList({
      //       dataSource: [
      //           { text: 'Public Event', value: 'public-event' },
      //           { text: 'Maintenance', value: 'maintenance' },
      //           { text: 'Commercial Event', value: 'commercial-event' },
      //           { text: 'Family Event', value: 'family-event' }
      //       ],
      //       fields: { text: 'text', value: 'value' },
      //       value: args.data.EventType,
      //       floatLabelType: 'Always', placeholder: 'Event Type'
      //   });
      //   drowDownList.appendTo(inputEle);
      //   inputEle.setAttribute('name', 'EventType');
      //    }
    }

    if (args.type === 'DeleteAlert') {
      console.log("DeleteAlert", args)
      document.getElementById('QuickDialog_title').innerHTML = 'Delete patient appointment'
      document.getElementById('QuickDialog_dialog-content').innerHTML = 'Are you sure you want to delete this appointment'
    }
  }


  handleOpenModal() {
    this.setState({ showModal: true });
  }

  handleCloseModal() {
    this.setState({ showModal: false });
    this.setState({ searchResult: null })
    this.setState({ search: null })
    this.setState({ errorData: null })
  }



  randomChange() {
    console.log("onchange")

    var a = document.getElementById('patient').value;

    if (a == 'Mobile') {
      document.getElementsByName('output')[0].placeholder = 'Mobile Number';
      document.getElementsByName('output')[0].type = 'text';
      document.getElementsByName('output')[0].value = '';
    } else if (a == 'HIN') {
      document.getElementsByName('output')[0].placeholder = 'HI Number';
      document.getElementsByName('output')[0].type = 'text';
      document.getElementsByName('output')[0].value = '';
    } else {
      document.getElementsByName('output')[0].type = 'date';
      document.getElementsByName('output')[0].value = '';
    }

  }

  reactToPrintTrigger = () => {
    return <span id="appointmentSlip" className='printSlip'>
      <i class="fas fa-print"></i>Appointment Slip
    </span>;
  };

  customStyles = {
    content: {
      height: "450px"
    },
  };

  PatientModelColse() {
    this.setState({ patient_regi_model_show: false })
  }

  handleImage = (e) => {
    e.persist();
    if (e.target.files[0].size < 2000048) {
      this.setState({ image: e.target.files[0] })
      this.setState({
        image_error: ''
      })
    } else {
      this.setState({
        image_error: 'File size must be less than 2 mb !'
      })
    }
    if (e.target.files && e.target.files[0] && e.target.files[0].size < 2000048) {
      this.setState({
        imageUrl: URL.createObjectURL(e.target.files[0])
      })
      // setDoctors({ ...doctorsInput, doctorImageUrl: URL.createObjectURL(event.target.files[0]) });
    } else {
      this.setState({
        image_error: 'File size must be less than 2 mb !'
      })
    }
  }

  handleSubmitForPatient(e) {

    e.preventDefault();
    console.log("patient_mobile_phone", this.patient_mobile_phone.current.value)
    const formData = new FormData();
    formData.append('image', this.state.image);
    formData.append('patient_hn_number', this.patient_hn_number.current.value);
    formData.append('patient_first_name', this.patient_first_name.current.value);
    formData.append('patient_mobile_phone', this.patient_mobile_phone.current.value);
    formData.append('patient_email', this.patient_email.current.value);
    formData.append('patient_dob', this.patient_dob.current.value);
    formData.append('ptn_blood_group_id', this.ptn_blood_group_id.current.value);
    formData.append('patient_birth_sex_id', this.patient_birth_sex_id.current.value);
    formData.append('patient_address1', this.patient_address1.current.value);
    formData.append('patient_status', "1");

    axios.post(`/save-patients`, formData).then(res => {

      this.scheduleObj.saveEvent({
        Description: this.state.patientEventData.Description,
        DoctorID: this.state.patientEventData.DoctorID,
        EndTime: this.state.patientEventData.EndTime,
        Id: this.state.patientEventData.Id,
        Location: res.data.patients.patient_mobile_phone,
        StartTime: this.state.patientEventData.StartTime,
        Subject: this.state.patientEventData.Subject,
        appointCreated: this.state.patientEventData.appointCreated,
        patientID: res.data.patients.id,
        CategoryColor: "#8961ed",
      });

      Swal.fire(
        'Patient Registration Succesfully',
        'Success..!',
        'success'
      )
      this.setState({
        patient_regi_model_show: false
      })

      this.setState({
        imageUrl: ''
      })
    })


  }

  closeImage = () => {
    this.setState({
      imageUrl: ''
    })
    document.getElementById('PatientImageUrl').value = '';
  }



  render() {
    console.log("this.state.patientEventData Va", this.state.patientEventData)
    return (
    <>

      <ComponentToPrint patientVale={this.state.patientValueForPrint} patentAge={this.state.age} doctorData={this.state.printDoctorData} appointDay={this.state.appointmentDay} appointTime={this.state.appointmentTime} ref={el => (this.componentRef = el)}></ComponentToPrint>

      <ReactModal style={this.customStyles} isOpen={this.state.patient_regi_model_show} appElement={document.getElementById('app')} contentLabel="Example Modal"  >
        <div className='ml-1'>
          <div className='card'>
            <div className="vital-header patient_header ml-2 mt-3 px-3 ">
              <h5 className="card-title">Patient Registration</h5>
              <a onClick={this.PatientModelColse}><i className="fas fa-times"></i></a>
            </div>
            <div className="vital-setup-container row p-1 m-1 mt-3" style={{ backgrondColor: "#D4D4D4" }}>
              <div className="col-md-12 mt-3">

                <form onSubmit={this.handleSubmitForPatient}>
                  <div class="row mb-3">
                    <label for="colFormLabelSm" class="col-sm-2">HN No. <span style={{ color: "red" }}>*</span></label>
                    <div class="col-sm-4">
                      <input type="text" ref={this.patient_hn_number} class="form-control form-control-sm" placeholder="Enter HN No" />
                    </div>
                    <label for="colFormLabelSm" class="col-sm-2">Name <span style={{ color: "red" }}>*</span></label>
                    <div class="col-sm-4">
                      <input type="text" ref={this.patient_first_name} value={this.state.patientEventData.Subject} class="form-control form-control-sm" placeholder="Enter Name" disabled />
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="colFormLabelSm" class="col-sm-2 vital-setup-lebel col-form-label col-form-label-sm ">Mobile No. <span style={{ color: "red" }}>*</span></label>
                    <div class="col-sm-4">
                      <input type="text" name='patient_mobile_phone' ref={this.patient_mobile_phone} class="form-control form-control-sm" placeholder="Enter Mobile No." />
                    </div>
                    <label for="colFormLabelSm" class="col-sm-2 vital-setup-lebel col-form-label col-form-label-sm ">Email <span style={{ color: "red" }}>*</span></label>
                    <div class="col-sm-4">
                      <input type="email" name='patient_email' ref={this.patient_email} class="form-control form-control-sm" placeholder="Enter Email" />
                    </div>
                  </div>

                  <div class="row mb-3">
                    <label for="colFormLabelSm" class="col-sm-2 vital-setup-lebel col-form-label col-form-label-sm ">Date Of Birth <span style={{ color: "red" }}>*</span></label>
                    <div class="col-sm-4">
                      <input type="date" name='patient_dob' ref={this.patient_dob} class="form-control form-control-sm" placeholder="Enter Date Of Birth" />
                    </div>
                    <label for="colFormLabelSm" class="col-sm-2 vital-setup-lebel col-form-label col-form-label-sm ">Blood Group <span style={{ color: "red" }}>*</span></label>
                    <div class="col-sm-4">
                      <select class="form-select form-select-sm" ref={this.ptn_blood_group_id} name='ptn_blood_group_id' id="autoSizingSelect">
                        <option selected>Select Blood Group</option>

                        {
                          this.state.patientBloodDropdown.map(i => {
                            return (<option value={i.id}>{i.blood_group_name}</option>)
                          })
                        }

                      </select>
                    </div>
                  </div>



                  <div class="row mb-3">
                    <label for="colFormLabelSm" class="col-sm-2 vital-setup-lebel col-form-label col-form-label-sm ">Gender <span style={{ color: "red" }}>*</span></label>
                    <div class="col-sm-4">
                      <select class="form-select form-select-sm" name='patient_birth_sex_id' ref={this.patient_birth_sex_id} id="autoSizingSelect">
                        <option selected>Select Gender</option>
                        {
                          this.state.patientGenderDropdown.map(item => {
                            return (<>
                              <option value={item.id}>{item.birth_sex_name}</option>
                            </>)
                          })
                        }

                      </select>
                    </div>
                    <label for="colFormLabelSm" class="col-sm-2 vital-setup-lebel col-form-label col-form-label-sm ">Address </label>
                    <div class="col-sm-4">
                      <textarea name="patient_address1" ref={this.patient_address1} class="form-control form-control-sm" rows="3" placeholder="Enter Address" />
                    </div>
                  </div>



                  <div class="row mb-2 P_Image">
                    <label for="colFormLabelSm" class="col-sm-2 vital-setup-lebel col-form-label col-form-label-sm ">Image</label>
                    <div class="col-sm-4">
                      <input className='form-control' id="PatientImageUrl" onChange={this.handleImage.bind(this)} type="file" />

                      {
                        this.state.image_error == '' ? <p className="doc_image_size">Image size must be less than 2 mb</p> : <p className="docimage_error">{this.state.image_error}</p>
                      }
                    </div>
                    <div class="col-sm-4">
                      {this.state.imageUrl == '' ? '' :
                        <div className="docImage">
                          <img src={this.state.imageUrl} className="schedulePaitimage" alt="preview image" />
                          <i onClick={this.closeImage.bind(this)} class="far fa-times-circle"></i>
                        </div>
                      }
                    </div>
                  </div>

                  <button type='submit' class="vaital-setup-btn float-end">Save</button>
                  <button onClick={this.PatientModelColse} class="vaital-setup-btn-cancel float-end mr-2">Cancel</button>

                </form>
              </div>

            </div>
          </div>
        </div>
      </ReactModal>
      <ReactModal isOpen={this.state.showModal} appElement={document.getElementById('app')} contentLabel="Example Modal"  >
        <div className="react_model">
          <div className="model_hading">
            <h4>
              Add Existing Patient
            </h4>
            <a onClick={this.handleCloseModal}><i className="fas fa-times"></i></a>
          </div>
          <div className="Line"></div>
          <div className="model_sub_heading">
            <label className="Label1">Chose an option</label>
            <select name="patient" id="patient" onChange={this.randomChange}>
              <option selected>Mobile</option>
              <option>HIN</option>
              <option>DOB</option>
            </select>
            <input id="output" name="output" type="text" placeholder='Select an option' value={this.state.search} onChange={this.handleChange} />
            <button className="customButton1" onClick={this.searchHandeler}>Search</button>
          </div>

          {
            this.state.errorData !== null &&
            <div>
              <h4 className="errorH4">{this.state.errorData}</h4>
              <button className="customButton1 clear" onClick={this.clearHandle}>Clear</button>
            </div>
          }

          {
            this.state.searchResult !== null &&
            <div>
              <h5 className="h5">Patient Information</h5>
              <table className="pTable">
                <thead>
                  <tr className="tr1">
                    <th className="th1">Patient Name</th>
                    <th className="th1">HN no</th>
                    <th className="th1">Phone no</th>
                    <th className="th1">DOB</th>
                    <th className="th1">Action</th>
                  </tr>
                </thead>
                <tbody>
                  {this.state.searchResult != null ?
                    this.state.searchResult.map((item) => {
                      return (
                        <tr key={item.id} className="tr1">
                          <td className="td1">{item.patient_first_name} {item.patient_middle_name} {item.patient_last_name}</td>
                          <td className="td1">{item.patient_hn_number}</td>
                          <td className="td1">{item.patient_mobile_phone}</td>
                          <td className="td1">{item.patient_dob}</td>
                          <td className="td1">
                            <span onClick={(e) => this.addExistingPatient(e, item)}><i class="fas fa-user-plus iconPatient"></i></span>
                          </td>
                        </tr>
                      )
                    }) : <tr>
                    </tr>
                  }
                </tbody>
              </table>
              <div className="tableFooter">
                <button className="customButton1 clear" onClick={this.clearHandle}>Clear</button>
              </div>
            </div>
          }
        </div>
      </ReactModal>

      <div className='appointmentShedule ms-2'>
        <div className='sheduleHeader custom-card mt-2 mb-2'>
          <div className='doctorSearch'>
            <div className='docNameSearch'>
              <Autocomplete
                disablePortal
                id="combo-box-demo"
                size="small"
                options={this.state.DoctorSearchData}
                getOptionLabel={(option) => option.dr_given_name}
                onChange={(e, newValue) => {
                  console.log("New Value Doctor Name", newValue);
                  if (newValue !== null) {
                    axios.get(`/doctor-search-by-name/${newValue.dr_given_name}`).then(res => {
                      console.log("Name", res.data)
                      this.setState({
                        DoctorSearchData: res.data
                      })

                    }).catch(err => {
                      swal("Warning!", "Data not found", "warning");
                    })
                  } else {
                    axios.get('/all-doctors-booking').then(res => {
                      this.setState({ DoctorSearchData: res.data.doctors })

                    })
                  }


                }}

                sx={{ width: 200 }}
                renderInput={(params) => <TextField {...params} label="Doctors" />}
              />
            </div>
            {/* <input className='fromInput' placeholder='Search By Doctor Name' type="text" value={this.state.searchBYDoctorName} onChange={this.handleInputChanged.bind(this)} onKeyUp={this.handleSubmitForSearch.bind(this)}></input> */}
            <div className='deptSearch'>
              <Autocomplete
                disablePortal
                id="combo-box-demo"
                size="small"
                options={this.state.doctorDepartment}
                getOptionLabel={(option) => option.departments_name}
                onChange={(e, newValue) => {
                  console.log("New Value", newValue);

                  if (newValue !== null) {
                    axios.get(`/doctor-search/${newValue.id}`).then(res => {

                      console.log("Dept SearchBYDepartmentHandeler With Name", res.data)
                      this.setState({
                        DoctorSearchDataForDepartment: res.data
                      })
                    }).catch(err => {
                      swal("Warning!", "Data not found", "warning");
                    })
                  } else {
                    this.setState({
                      DoctorSearchDataForDepartment: false
                    })
                  }
                }}
                sx={{ width: 200 }}
                renderInput={(params) => <TextField {...params} label="Department" />}
              />
            </div>
            <div>

              {
                this.state.DoctorSearchDataForDepartment == false ?
                  <></> :
                  <>
                    {/* <legend>List Of Doctors</legend>  */}
                    {

                      <Autocomplete
                        multiple
                        id="checkboxes-tags-demo"
                        size="small"
                        options={this.state.DoctorSearchDataForDepartment}
                        disableCloseOnSelect
                        getOptionLabel={(option) => option.dr_given_name}
                        onChange={(e, value) => {
                          console.log("Doctor Search CheckBox Value", value.length)
                          if (value.length > 0) {
                            this.setState({
                              DoctorSearchData: value
                            })
                          } else {
                            axios.get('/all-doctors-booking').then(res => {
                              this.setState({ DoctorSearchData: res.data.doctors })

                            })
                          }

                        }}
                        renderOption={(props, option, { selected }) => (
                          <li {...props}>
                            <Checkbox
                              icon={icon}
                              checkedIcon={checkedIcon}
                              style={{ marginRight: 8 }}
                              checked={selected}
                            />
                            {option.dr_given_name}
                          </li>
                        )}
                        style={{ width: 200 }}
                        renderInput={(params) => (
                          <TextField {...params} label="Selected Doctors" placeholder="Doctors" />
                        )}
                      />

                      //    <Autocomplete
                      //    disablePortal
                      //    id="checkboxes-tags-demo"
                      //    options={this.state.DoctorSearchDataForDepartment}
                      //    getOptionLabel={(option) => option.dr_given_name}
                      //    sx={{ width: 300 }}
                      //    renderOption={(props, option, { selected }) => (
                      //     <li {...props}>
                      //       <Checkbox
                      //         icon={icon}
                      //         checkedIcon={checkedIcon}
                      //         style={{ marginRight: 8 }}
                      //         checked={selected}
                      //       />
                      //       {option.dr_given_name}
                      //     </li>
                      //   )}
                      //    renderInput={(params) => <TextField {...params} label="List of Doctors" />}
                      //  />
                      // this.state.DoctorSearchDataForDepartment.map(x => {
                      //  return(
                      //   <label class="container">{x.dr_given_name}
                      //     <input type="checkbox" className='hideCheckBox' onChange={this.handleCheckBox.bind(this)}  value={x.dr_given_name}></input>
                      //     <span class="checkmark"></span>
                      //  </label>
                      //  )

                      // })
                    }
                  </>
              }

            </div>
          </div>

          <ReactToPrint
            trigger={this.reactToPrintTrigger}
            content={() => this.componentRef}
          />
        </div>
        {
          this.state.DoctorSearchData == '' ?
            <div className='schedule-control-section'>
              <div className='col-lg-12 control-section'>
                <div className='control-wrapper'>
                  <ScheduleComponent
                    eventRendered={this.onEventRendered.bind(this)}
                    ref={t => this.scheduleObj = t}
                    allowResizing={true}
                    timeScale={{ enable: true, interval: 60, slotCount: 4 }}
                    currentView="Day"
                    categorizeSettings-enable={true}
                    minDate={new Date(2020, 12, 12)}
                    // cssClass='group-bychild'
                    width='100%' height='650px'
                    selectedDate={new Date().toLocaleDateString()}
                    eventSettings={{
                      dataSource: this.data,
                      enableTooltip: true,
                      fields: {
                        id: 'Id',
                        subject: { name: 'Subject', title: 'Patient Name', validation: { required: true } },
                        location: { name: 'Location', title: 'Mobile No', validation: { required: true } },
                        description: { name: 'Description', title: 'Notes' },
                        startTime: { name: 'StartTime', title: 'Start Duration', validation: { required: true } },
                        endTime: { name: 'EndTime', title: 'End Duration', validation: { required: true } }
                      }
                    }}
                    group={{ byGroupID: false, resources: ['Doctors'] }}
                    actionBegin={(this.onActionBegin.bind(this))}
                    rowAutoHeight={true}
                    popupOpen={this.onPopupOpen.bind(this)}
                  >
                    <ResourcesDirective>
                      <ResourceDirective field='DoctorID' title='Select Doctors' name='Doctors' allowMultiple={true} dataSource={this.state.DoctorSearchData} textField='dr_given_name' idField='id' >
                      </ResourceDirective>
                    </ResourcesDirective>
                    <ViewsDirective>
                      <ViewDirective option='Day' startHour='09:30' endHour='18:00' timeScale={{ enable: true, slotCount: 4 }} />
                      <ViewDirective option='Week' startHour='09:30' endHour='18:00' />
                      <ViewDirective option='WorkWeek' workDays={[7,0,1,2,3,4]} startHour='09:30' endHour='18:00'/>
                      <ViewDirective option='Month' startHour='09:30' endHour='18:00' />
                    </ViewsDirective>
                    <Inject services={[Day, Week, WorkWeek, Month, Agenda, Resize, DragAndDrop, ExcelExport]} />
                  </ScheduleComponent>
                </div>
                <ContextMenuComponent cssClass='schedule-context-menu' ref={menu => this.menuObj = menu} target='.e-schedule' beforeOpen={this.onContextMenuBeforeOpen.bind(this)} items={this.menuItems} select={this.onMenuItemSelect.bind(this)} />
                {/* <ContextMenuComponent
                 target='.e-schedule' items={this.menuItems}
                 select={this.onMenuItemSelect.bind(this)}
                 /> */}
                {/* <ContextMenuComponent
                 target= '.e-table-container' items={this.menuItems}
                 select={this.onMenuItemSelect.bind(this)}
                 /> */}
                <div className="legendField custom-card">
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle arrived'></span>Arrived</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle unavilable'></span>Unavilable</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle waiting'></span>Waiting</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle withdoctors'></span>With Doctors</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle attbilling'></span>At billing</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle notattend'></span>Did not attend</div>
                </div>

              </div>
            </div>
            :
            <div className='schedule-control-section'>
              <div className='control-section'>
                <div className='control-wrapper'>
                  <ScheduleComponent
                    eventRendered={this.onEventRendered.bind(this)}
                    ref={t => this.scheduleObj = t}
                    allowResizing={true}
                    currentView="Day"
                    categorizeSettings-enable={true}
                    minDate={new Date(2020, 12, 12)}
                    cssClass='group-bychild' width='100%' height='650px'
                    selectedDate={new Date().toLocaleDateString()}
                    eventSettings={{
                      dataSource: this.data,
                      enableTooltip: true,
                      fields: {
                        id: 'Id',
                        subject: { name: 'Subject', title: 'Patient Name', validation: { required: true } },
                        location: { name: 'Location', title: 'Mobile No', validation: { required: true } },
                        description: { name: 'Description', title: 'Notes' },
                        startTime: { name: 'StartTime', title: 'Start Duration', validation: { required: true } },
                        endTime: { name: 'EndTime', title: 'End Duration', validation: { required: true } },

                      }
                    }}
                    group={{ byGroupID: false, resources: ['Doctors'] }}
                    actionBegin={(this.onActionBegin.bind(this))}
                    rowAutoHeight={true}
                    popupOpen={this.onPopupOpen.bind(this)}
                  >
                    <ResourcesDirective>
                      <ResourceDirective field='DoctorID' title='Select Doctors' name='Doctors' allowMultiple={true} dataSource={this.state.DoctorSearchData} textField='dr_given_name' idField='id' >
                      </ResourceDirective>
                    </ResourcesDirective>
                    <ViewsDirective>
                      <ViewDirective option='Day' startHour='09:00' endHour='18:00' timeScale={{ enable: true, slotCount: 4 }}/>
                      <ViewDirective option='Week' startHour='09:30' endHour='18:00'/>
                      <ViewDirective option='WorkWeek' workDays={[7,0,1,2,3,4]} startHour='09:30' endHour='18:00'/>
                      <ViewDirective option='Month' startHour='09:30' endHour='18:00'/>
                    </ViewsDirective>
                    <Inject services={[Day, Week, WorkWeek, Month, Agenda, ExcelExport, Resize, DragAndDrop, ExcelExport]} />
                  </ScheduleComponent>
                </div>
                <ContextMenuComponent cssClass='schedule-context-menu' ref={menu => this.menuObj = menu} target='.e-schedule' beforeOpen={this.onContextMenuBeforeOpen.bind(this)} items={this.menuItems} select={this.onMenuItemSelect.bind(this)} />
                {/* <ContextMenuComponent
                 target='.e-table-container' items={this.menuItems}
                 select={this.onMenuItemSelect.bind(this)}
                 /> */}
                {/* <ContextMenuComponent
                select={this.onMenuItemSelect.bind(this)}
               target= '.e-work-cells' items={this.menuItems}/> */}



                <div className="legendField">
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle RPatient'></span>Registered Patient</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle NonRegister'></span>Non Registered Patient</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle arrived'></span>Arrived</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle unavilable'></span>Unavilable</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle waiting'></span>Waiting</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle withdoctors'></span>With Doctors</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle attbilling'></span>At billing</div>
                  <div className='legendLevel'><span className='e-menu-icon fas fa-circle notattend'></span>Did not attend</div>
                </div>
              </div>
            </div>
        }
      </div>
    </>
    );


  }
}

