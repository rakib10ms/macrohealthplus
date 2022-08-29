<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminSetupAppointment\ReligionController;
use App\Http\Controllers\AdminSetupAppointment\CountryController;
use App\Http\Controllers\AdminSetupAppointment\CityController;
use App\Http\Controllers\AdminSetupAppointment\EthnicityController;
use App\Http\Controllers\AdminSetupAppointment\BirthSexController;
use App\Http\Controllers\AdminSetupAppointment\StatusController;
use App\Http\Controllers\AdminSetupAppointment\TitleController;
use App\Http\Controllers\AdminSetupAppointment\LocationController;
use App\Http\Controllers\AdminSetupAppointment\OccupationController;
use App\Http\Controllers\AdminSetupAppointment\TestTypeController;
use App\Http\Controllers\AdminSetupAppointment\VisitTypeController;
use App\Http\Controllers\Appointments\PatientsController;
use App\Http\Controllers\AdminSetupAppointment\ContactViaController;
use App\Http\Controllers\AdminSetupAppointment\StateController;
use App\Http\Controllers\AdminSetupAppointment\UsualProviderController;
use App\Http\Controllers\AdminSetupAppointment\UsualAccountController;
use App\Http\Controllers\Appointments\DoctorsController;
use App\Http\Controllers\AdminSetupAppointment\TimeSetupController;
use App\Http\Controllers\Appointments\SchedulerController;
use App\Http\Controllers\AdminSetupDoctors\ReactionController;
use App\Http\Controllers\AdminSetupDoctors\DiagnosisController;
use App\Http\Controllers\AdminSetupDoctors\DoctorFeeController;
use App\Http\Controllers\AdminSetupDoctors\PastAlcoholConsumptionController;
use App\Http\Controllers\AdminSetupDoctors\OccupationalHazardsController;
use App\Http\Controllers\AdminSetupDoctors\CurrentSmokingHistoryController;
use App\Http\Controllers\AdminSetupDoctors\TobaccoTypeController;
use App\Http\Controllers\AdminSetupDoctors\DiagnosisActionController;
use App\Http\Controllers\AdminSetupDoctors\DrugNameController;
use App\Http\Controllers\AdminSetupDoctors\DrugUnitController;
use App\Http\Controllers\AdminSetupDoctors\RouteNameController;
use App\Http\Controllers\AdminSetupDoctors\DoseNameController;
use App\Http\Controllers\AdminSetupDoctors\FrequencyNameController;
use App\Http\Controllers\AdminSetupDoctors\ProcedureNameController;
use App\Http\Controllers\AdminSetupDoctors\ProcedureFeeController;
use App\Http\Controllers\AdminSetupDoctors\DoctorFeeNameController;
use App\Http\Controllers\AdminSetupDoctors\FoodNameController;
use App\Http\Controllers\AdminSetupDoctors\OthersNameController;

use App\Http\Controllers\AdminSetupDoctors\TobaccoCostAmountController;
use App\Http\Controllers\AdminSetupDoctors\AdviceSuggestionController;
use App\Http\Controllers\AdminSetupDoctors\DepartmentController;
use App\Http\Controllers\AdminSetupDoctors\SpecialistController;
use App\Http\Controllers\AdminSetupAppointment\AppointmentLengthController;
use App\Http\Controllers\AdminSetupAppointment\AppointmentTypeController;
use App\Http\Controllers\AdminSetupAppointment\TimeSlotsController;
use App\Http\Controllers\AdminSetupAppointment\DocTimeSlotsController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\User\UsersController;
use App\Http\Controllers\AdminSetupAppointment\TimeLimitsController;
use App\Http\Controllers\AdminSetupAppointment\BloodGroupController;
use App\Http\Controllers\GreatDocSetup\ExaminationController;
use App\Http\Controllers\LabModule\LabModuleController;
use App\Http\Controllers\GreatDocSetup\HistoryController;
use App\Http\Controllers\GreatDocSetup\ExamHistSelectParamController;
use App\Http\Controllers\GreatDocSetup\ExamHistExtensionController;
use App\Http\Controllers\GreatDocSetup\CarotidController;
use App\Http\Controllers\GreatDocSetup\ExamHistoryMappingController;
use App\Http\Controllers\GreatDocSetup\SelectionCriteriaController;
use App\Http\Controllers\GreatDocSetup\EarCanalController;
use App\Http\Controllers\GreatDocSetup\ApexBeatController;
use App\Http\Controllers\GreatDocSetup\IntercostalSpaceController;
use App\Http\Controllers\GreatDocSetup\HistoryExamStatusController;
use App\Http\Controllers\GreatDocSetup\EarLesionController;
use App\Http\Controllers\GreatDocSetup\TympanicMembraneController;
use App\Http\Controllers\GreatDocSetup\MastoidController;
use App\Http\Controllers\GreatDocSetup\PosteriorController;
use App\Http\Controllers\GreatDocSetup\TunningForkController;
use App\Http\Controllers\GreatDocSetup\WeberTestController;
use App\Http\Controllers\GreatDocSetup\ThroatController;
use App\Http\Controllers\GreatDocSetup\TongueController;
use App\Http\Controllers\GreatDocSetup\TonsilController;
use App\Http\Controllers\GreatDocSetup\NoseController;
use App\Http\Controllers\GreatDocSetup\MhpUlserController;
use App\Http\Controllers\GreatDocSetup\TongueLesionController;

use App\Http\Controllers\GreatDocSetup\MhpEarController;
use App\Http\Controllers\GreatDocSetup\MhpEarDischargeController;
use App\Http\Controllers\GreatDocSetup\MhpDeafnessController;
use App\Http\Controllers\GreatDocSetup\MhpEntOthersController;
use App\Http\Controllers\GreatDocSetup\MhpRenneTestController;

use App\Http\Controllers\GreatDocSetup\MhpDiagnosisProcedureController;
use App\Http\Controllers\GreatDocSetup\MhpDiagnosisProcedureForController;
use App\Http\Controllers\GreatDocSetup\MhpDiagnosisProcedureActionsController;

use App\Http\Controllers\GreatDocSetup\MhpAutoFillController;
use App\Http\Controllers\Appointments\AppointmentStatusColorController;


use App\Http\Controllers\GreatDocSetup\OlFactoryController;
use App\Http\Controllers\GreatDocSetup\FundoscopyController;
use App\Http\Controllers\GreatDocSetup\VisualacuityController;
use App\Http\Controllers\GreatDocSetup\VisualfieldController;
use App\Http\Controllers\GreatDocSetup\PapillaryoedemaController;
use App\Http\Controllers\GreatDocSetup\PupilController;
use App\Http\Controllers\GreatDocSetup\LightreflexController;
use App\Http\Controllers\GreatDocSetup\EyemovementsController;


use App\Http\Controllers\GreatDocSetup\SensoryController;
use App\Http\Controllers\GreatDocSetup\JawJerkController;
use App\Http\Controllers\GreatDocSetup\LookingUpController;
use App\Http\Controllers\GreatDocSetup\DroopingCornerController;
use App\Http\Controllers\GreatDocSetup\EarPalateController;
use App\Http\Controllers\AdminSetupAppointment\UserTypeController;
use App\Http\Controllers\AdminSetupAppointment\MediaTypeController;
use App\Http\Controllers\GreatDocSetup\AppearanceController;
use App\Http\Controllers\GreatDocSetup\BehaviourController;

use App\Http\Controllers\GreatDocSetup\WhisperTestController;
use App\Http\Controllers\GreatDocSetup\PinnesTestController;
use App\Http\Controllers\GreatDocSetup\HallpikeController;
use App\Http\Controllers\GreatDocSetup\UvulaController;
use App\Http\Controllers\GreatDocSetup\GasReflexController;
use App\Http\Controllers\GreatDocSetup\NeckMovementController;
use App\Http\Controllers\GreatDocSetup\ShrugShoulderController;
use App\Http\Controllers\GreatDocSetup\TasciculationController;
use App\Http\Controllers\GreatDocSetup\AttitudeTowardsExaminationController;

use App\Http\Controllers\GreatDocSetup\MhpPHQ9QuestionnaireController;
use App\Http\Controllers\GreatDocSetup\MhpPHQ9QuestionnaireValueController;


use App\Http\Controllers\MhpVitalSignController;
use App\Http\Controllers\AdminSetupAppointment\VitalSignUnit;
use App\Http\Controllers\GreatDoc\MhpGreateDocController;
use App\Http\Controllers\GreatDocSetup\SensationController;
use App\Http\Controllers\GreatDocSetup\MoodController;
use App\Http\Controllers\GreatDocSetup\AffectController;
use App\Http\Controllers\GreatDocSetup\AppropritenessController;
use App\Http\Controllers\GreatDocSetup\AttituteTowardsController;
use App\Http\Controllers\GreatDocSetup\SpeechController;
use App\Http\Controllers\GreatDocSetup\CnsTongueController;

use App\Http\Controllers\GreatDocSetup\CnsUpperLimbController;
use App\Http\Controllers\GreatDocSetup\CnsPowerController;
use App\Http\Controllers\GreatDocSetup\CnsTheRadialNerveController;
use App\Http\Controllers\GreatDocSetup\CnsJerkC1C8Controller;
use App\Http\Controllers\GreatDocSetup\CnsFingerNoseTestController;
use App\Http\Controllers\GreatDocSetup\CnsPictureUpperLimbDermatomesController;


use App\Http\Controllers\GreatDocSetup\PerceptualController;
use App\Http\Controllers\GreatDocSetup\ChestShapeController;
use App\Http\Controllers\GreatDocSetup\PercussionController;
use App\Http\Controllers\GreatDocSetup\BreathSoundController;
use App\Http\Controllers\GreatDocSetup\AbnormalBreathingController;
use App\Http\Controllers\GreatDocSetup\VocalFremitusController;
use App\Http\Controllers\GreatDocSetup\ChestExpansionController;
use App\Http\Controllers\GreatDocSetup\WheeringController;
use App\Http\Controllers\GreatDocSetup\VocalResonanceController;
use App\Http\Controllers\MhpPatientsVitalSignController;
use App\Http\Controllers\GreatDocSetup\SymptomsController;
use App\Http\Controllers\MhpAllergyController;
use App\Http\Controllers\MhpEmployeeController;
use App\Http\Controllers\Appointments\MediaTypeOnlineController;
use App\Http\Controllers\GreatDocSetup\ExaminationHeadingController;
use App\Http\Controllers\GreatDocSetup\CommonHistoryController;
use App\Http\Controllers\GreatDocSetup\CrepitationController;
use App\Http\Controllers\GreatDocSetup\HeartSoundController;
use App\Http\Controllers\GreatDocSetup\VolumeController;
use App\Http\Controllers\GreatDocSetup\RediationController;
use App\Http\Controllers\GreatDocSetup\MurmurController;
use App\Http\Controllers\GreatDocSetup\OthersController;
use App\Http\Controllers\GreatDocSetup\PembertonsController;
use App\Http\Controllers\GreatDocSetup\CnsCnOneController;
use App\Http\Controllers\GreatDocSetup\CnsCnTwoController;
use App\Http\Controllers\GreatDocSetup\CnsCnThreeController;
use App\Http\Controllers\GreatDocSetup\CnsCnFourController;
use App\Http\Controllers\GreatDocSetup\CnsCnFiveController;
use App\Http\Controllers\GreatDocSetup\CnsCnSixController;
use App\Http\Controllers\GreatDocSetup\CnsCnSevenController;
use App\Http\Controllers\GreatDocSetup\CnsCnEightController;
use App\Http\Controllers\GreatDocSetup\CnsCnNineController;
use App\Http\Controllers\GreatDocSetup\CnsCnTenController;
use App\Http\Controllers\GreatDocSetup\CnsLeftValueController;
use App\Http\Controllers\GreatDocSetup\CnsRightValueController;
use App\Http\Controllers\MhpCardiovascularController;
use App\Http\Controllers\GreatDoc\CareSuggestion\GreatDocCareSuggesionController;

// morshed start
use App\Http\Controllers\GreatDocSetup\MhpCoughController;
use App\Http\Controllers\GreatDocSetup\MhpDyspneaController;
use App\Http\Controllers\GreatDocSetup\MhpDyspneaClassController;
use App\Http\Controllers\GreatDocSetup\MhpMedicalHistoryController;
use App\Http\Controllers\GreatDocSetup\MhpSleepApnoeaRiskController;
use App\Http\Controllers\GreatDocSetup\MhpQuestionnaireController;
use App\Http\Controllers\GreatDocSetup\MhpExmaninationListController;

use App\Http\Controllers\GreatDocSetup\MhpMainBodyPartController;
use App\Http\Controllers\GreatDocSetup\MhpSubBodyPartController;
use App\Http\Controllers\GreatDocSetup\PatientSymptomController;
use App\Http\Controllers\GreatDocSetup\MhpSymptomsAnatomyController;

use App\Http\Controllers\GreatDocSetup\MhpCripatationLeftController;
use App\Http\Controllers\GreatDocSetup\MhpCripatationRightController;
use App\Http\Controllers\GreatDocSetup\MhpCripatationBothController;

use App\Http\Controllers\GreatDocSetup\MhpWheezingLeftController;
use App\Http\Controllers\GreatDocSetup\MhpWheezingRightController;
use App\Http\Controllers\GreatDocSetup\MhpWheezingBothController;

use App\Http\Controllers\GreatDocSetup\MhpMotorController;
use App\Http\Controllers\GreatDocSetup\MhpOnShuttingEyeController;
use App\Http\Controllers\MhpGeneralController;
use App\Http\Controllers\Billing\BillingController;


use App\Http\Controllers\GreatDocSetup\MhpSkinController;
use App\Http\Controllers\GreatDocSetup\MhpHandAndFingerController;
use App\Http\Controllers\GreatDocSetup\MhpLeftSupraclavicularNodeController;
use App\Http\Controllers\GreatDocSetup\MhpTongueMouthController;
use App\Http\Controllers\GreatDocSetup\MhpAbdomenController;
use App\Http\Controllers\GreatDocSetup\MhpBruitController;
use App\Http\Controllers\GreatDocSetup\MhpNonTenderTendernessController;
use App\Http\Controllers\GreatDocSetup\MhpNoMassesMassController;
use App\Http\Controllers\GreatDocSetup\MhpHerniasController;
use App\Http\Controllers\GreatDocSetup\MhpHerniasInguinalController;
use App\Http\Controllers\GreatDocSetup\MhpHerniasFemoralController;
use App\Http\Controllers\GreatDocSetup\MhpPerRectalController;
use App\Http\Controllers\GreatDocSetup\MhpSigmoidoscopyController;
use App\Http\Controllers\GreatDocSetup\MhpSigmoidoscopyGuaiacTestController;

use App\Http\Controllers\GreatDocSetup\MhpSiteController;
use App\Http\Controllers\GreatDocSetup\MhpRadiationController;
use App\Http\Controllers\GreatDocSetup\MhpPatternController;
use App\Http\Controllers\GreatDocSetup\MhpDurationController;
use App\Http\Controllers\GreatDocSetup\MhpFrequencyController;
use App\Http\Controllers\GreatDocSetup\MhpScoreController;
use App\Http\Controllers\GreatDocSetup\MhpVomitingController;
use App\Http\Controllers\GreatDocSetup\MhpDysphagiaController;
use App\Http\Controllers\GreatDocSetup\MhpDiarrhoeaController;
use App\Http\Controllers\GreatDocSetup\MhpStoolTypeController;
use App\Http\Controllers\GreatDocSetup\MhpPRBleedController;


// use App\Http\Controllers\GreatDocSetup\MhpRUQController;
// use App\Http\Controllers\GreatDocSetup\MhpEpigastricController;
// use App\Http\Controllers\GreatDocSetup\MhpLUQController;
// use App\Http\Controllers\GreatDocSetup\MhpRightLumberController;


use App\Http\Controllers\GreatDocSetup\MhpRenalMassController;
use App\Http\Controllers\GreatDocSetup\MhpUrineAnalysisController;
use App\Http\Controllers\GreatDocSetup\MhpDehydrationController;
use App\Http\Controllers\GreatDocSetup\MhpRadioFemoralDelayController;
use App\Http\Controllers\GreatDocSetup\MhpNailSignController;
use App\Http\Controllers\MhpRespiratoryController;


// use App\Http\Controllers\GreatDocSetup\MhpDoubleVisionController;
// use App\Http\Controllers\GreatDocSetup\MhpHaloesController;
// use App\Http\Controllers\GreatDocSetup\MhpFloreController;
// use App\Http\Controllers\GreatDocSetup\MhpCaruncleController;
// use App\Http\Controllers\GreatDocSetup\MhpGhoostingController;
// use App\Http\Controllers\GreatDocSetup\MhpEnteriorChamberController;

use App\Http\Controllers\GreatDocSetup\MhpLesionMiddleController;
use App\Http\Controllers\GreatDocSetup\MhpLesionRightController;
use App\Http\Controllers\GreatDocSetup\MhpExternalObservationController;
use App\Http\Controllers\GreatDocSetup\MhpPhoriaOneController;
use App\Http\Controllers\GreatDocSetup\MhpPhoriaTwoController;
use App\Http\Controllers\GreatDocSetup\MhpShapeController;
use App\Http\Controllers\GreatDocSetup\MhpPursuitsController;
use App\Http\Controllers\GreatDocSetup\MhpSaccadesController;
use App\Http\Controllers\GreatDocSetup\MhpNeuroOpthalController;
use App\Http\Controllers\GreatDocSetup\MhpNeuroOpthalmologyController;

use App\Http\Controllers\GreatDocSetup\MhpSwollenEyeLidController;
use App\Http\Controllers\GreatDocSetup\MhpLesionController;
use App\Http\Controllers\GreatDocSetup\MhpEntranceTestController;
use App\Http\Controllers\GreatDocSetup\MhpVisualAcuityEyeController;
use App\Http\Controllers\GreatDocSetup\MhpCoverTestController;
use App\Http\Controllers\GreatDocSetup\MhpPupilsEyeController;
use App\Http\Controllers\GreatDocSetup\MhpWorth4DotController;
use App\Http\Controllers\GreatDocSetup\MhpEOMConvergenceController;
use App\Http\Controllers\GreatDocSetup\MhpEOMAccomodationController;
use App\Http\Controllers\GreatDocSetup\MhpDryRetinoscopyController;
use App\Http\Controllers\GreatDocSetup\MhpMaddoxWingController;
use App\Http\Controllers\GreatDocSetup\MhpPenGripController;
use App\Http\Controllers\GreatDocSetup\MhpPenGripRightController;
use App\Http\Controllers\GreatDocSetup\MhpMidLineCrossingController;
use App\Http\Controllers\GreatDocSetup\MhpPostureController;
use App\Http\Controllers\GreatDocSetup\MhpColorVisionController;
use App\Http\Controllers\GreatDocSetup\MhpDilateController;
use App\Http\Controllers\GreatDocSetup\MhpCDDiscController;

use App\Http\Controllers\AdminSetupDoctors\GreatDocPathologyController;
use App\Http\Controllers\GreatDocSetup\MhpMovementController;
use App\Http\Controllers\GreatDocSetup\MhpTenderOverSpinusProcessAtController;
use App\Http\Controllers\GreatDocSetup\MhpTenernessOverFacetJoinController;
use App\Http\Controllers\GreatDocSetup\MhpInspectionController;
use App\Http\Controllers\GreatDocSetup\MhpSuddenAnaesthesiaController;
use App\Http\Controllers\GreatDocSetup\MhpThoracicKyphosisController;
use App\Http\Controllers\GreatDocSetup\MhpLumberLordosisController;
use App\Http\Controllers\GreatDocSetup\MhpSpineController;
use App\Http\Controllers\GreatDocSetup\MhpPainIntoKneeController;
use App\Http\Controllers\GreatDocSetup\MhpShapeAndContourController;
use App\Http\Controllers\GreatDocSetup\MhpAnteriorViewController;
use App\Http\Controllers\GreatDocSetup\MhpLevelOfSpineOfScapulaController;
use App\Http\Controllers\GreatDocSetup\MhpWingedScapulaController;
use App\Http\Controllers\GreatDocSetup\MhpWristController;
use App\Http\Controllers\GreatDocSetup\MhpMetacarpophalangealJointController;
use App\Http\Controllers\GreatDocSetup\MhpProximalInterphalangealJointController;
use App\Http\Controllers\GreatDocSetup\MhpDistalInterphalangealJointController;


use App\Http\Controllers\MhpGestroController;

use App\Http\Controllers\Billing\Digital\DigitalController;
use App\Http\Controllers\Billing\Card\CardController;
use App\Http\Controllers\Billing\Branch\BranchController;
use App\Http\Controllers\Billing\Bank\BankController;
use App\Http\Controllers\Billing\PaymentController;
use App\Http\Controllers\GreatDocSetup\MhpFrontalLobeController;
use App\Http\Controllers\GreatDocSetup\MhpOccipitalLobeController;

use App\Http\Controllers\GreatDocSetup\MhpCurrentExcerciseLevelController;
use App\Http\Controllers\GreatDocSetup\MhpAerobicExerciseController;
use App\Http\Controllers\GreatDocSetup\MhpStrengthBuildingController;
use App\Http\Controllers\GreatDocSetup\MhpEnduranceController;
use App\Http\Controllers\GreatDocSetup\MhpFrequencyPhysicalController;

use App\Http\Controllers\GreatDocSetup\MhpPhysicalActivityAdviceController;

use App\Http\Controllers\GreatDocSetup\MhpAntenatalVisitsController;

use App\Http\Controllers\GreatDocSetup\MhpAllBodyPartFrontBackController;
use App\Http\Controllers\GreatDocSetup\MhpAreolarController;
use App\Http\Controllers\GreatDocSetup\MhpSkinShapeController;
use App\Http\Controllers\GreatDocSetup\MhpColorController;
use App\Http\Controllers\GreatDocSetup\MhpPalpationController;
use App\Http\Controllers\GreatDocSetup\MhpTemparatureController;
use App\Http\Controllers\GreatDocSetup\MhpArrangementsController;
use App\Http\Controllers\GreatDocSetup\MhpSkinSymptomsController;
use App\Http\Controllers\GreatDocSetup\MhpSkinTypeController;

use App\Http\Controllers\GreatDocSetup\MhpParietalLobeController;

use App\Http\Controllers\GreatDocSetup\MhpContinuousController;
use App\Http\Controllers\GreatDocSetup\MhpIntermittentController;
use App\Http\Controllers\GreatDocSetup\MhpSpeechNurologiesController;

use App\Http\Controllers\GreatDocSetup\MhpTemporalLobeController;
use App\Http\Controllers\MhpCnsController;
use App\Http\Controllers\MhpEyeExaminationController;
use App\Http\Controllers\MhpGaitLimpingController;

use App\Http\Controllers\GreatDocSetup\MhpInspectionLookController;
use App\Http\Controllers\GreatDocSetup\MhpPainAlongAnteriorController;
use App\Http\Controllers\GreatDocSetup\MhpPainOverPosteriorController;
use App\Http\Controllers\GreatDocSetup\MhpWalkOnHeelsController;
use App\Http\Controllers\GreatDocSetup\MhpPostureThoracoController;
use App\Http\Controllers\GreatDocSetup\MhpTenderOverSpinusThoracoController;
use App\Http\Controllers\GreatDocSetup\MhpTendernessOverFacetThoracoController;
use App\Http\Controllers\GreatDocSetup\MhpTendernessOverFacetLRBThoracoController;
use App\Http\Controllers\GreatDocSetup\MhpTenderTenernessOverL1ToL6ThoracoController;
use App\Http\Controllers\GreatDocSetup\MhpLyingOnCouchController;
use App\Http\Controllers\GreatDocSetup\MhpMoveHipPelvisController;

use App\Http\Controllers\GreatDocSetup\MhpL1L2HipFlexionController;
use App\Http\Controllers\GreatDocSetup\MhpL3ToL5PowerController;
use App\Http\Controllers\GreatDocSetup\MhpL1L2SensationController;
use App\Http\Controllers\GreatDocSetup\MhpL3ToL5SensationController;
use App\Http\Controllers\GreatDocSetup\MhpS1ToS4TestController;

use App\Http\Controllers\GreatDocSetup\MhpTestHipPelvisController;
use App\Http\Controllers\GreatDocSetup\MhpInspectionLookHipPelvisController;
use App\Http\Controllers\GreatDocSetup\MhpShoulderMovementsController;
use App\Http\Controllers\GreatDocSetup\MhpPainfulArcController;
use App\Http\Controllers\GreatDocSetup\MhpResistedMovementController;
use App\Http\Controllers\GreatDocSetup\MhpNailsController;
use App\Http\Controllers\GreatDocSetup\MhpDorsumOfHandController;
use App\Http\Controllers\GreatDocSetup\MhpFingersController;
use App\Http\Controllers\GreatDocSetup\MhpTendersController;
use App\Http\Controllers\GreatDocSetup\MhpFlexonTendonsController;
use App\Http\Controllers\GreatDocSetup\MhpWristPalpationController;
use App\Http\Controllers\GreatDocSetup\MhpMetacarpophalangealJointPalpationController;
use App\Http\Controllers\GreatDocSetup\MhpProximalInterphalangealPalpationController;

use App\Http\Controllers\GreatDocSetup\MhpFlexorDigitorumProfundusTestController;
use App\Http\Controllers\GreatDocSetup\MhpFlexorDigitorumSuperficialisTestController;
use App\Http\Controllers\GreatDocSetup\MhpInspectionMaleFemaleController;
use App\Http\Controllers\GreatDocSetup\MhpAt90FlextionPalpationController;
use App\Http\Controllers\GreatDocSetup\MhpAtFullFlextionPalpationController;
use App\Http\Controllers\GreatDocSetup\MhpFlextion0to150ExaminationController;

use App\Http\Controllers\GreatDocSetup\MhpAnteriorViewKneeController;
use App\Http\Controllers\GreatDocSetup\MhpPosteriorViewKneeController;
use App\Http\Controllers\GreatDocSetup\MhpLateralViewKneeController;
use App\Http\Controllers\GreatDocSetup\MhpStanceSwatKneeController;
use App\Http\Controllers\GreatDocSetup\MhpMarginCondyleTibialController;

use App\Http\Controllers\GreatDocSetup\MhpToesLeftController;
use App\Http\Controllers\GreatDocSetup\MhpMTPJointController;
use App\Http\Controllers\GreatDocSetup\MhpDIPJointController;
use App\Http\Controllers\GreatDocSetup\MhpPIPJointController;
use App\Http\Controllers\GreatDocSetup\MhpToesRightController;
use App\Http\Controllers\GreatDocSetup\MhpDorsumOfFootController;

use App\Http\Controllers\GreatDocSetup\MhpVolumeWomenController;
use App\Http\Controllers\GreatDocSetup\MhpPVBleedingController;
use App\Http\Controllers\GreatDocSetup\MhpPVDischargeController;
use App\Http\Controllers\GreatDocSetup\MhpVulvalController;
use App\Http\Controllers\GreatDocSetup\MhpMiscarriageController;
use App\Http\Controllers\GreatDocSetup\MhpBreastLumpController;
use App\Http\Controllers\GreatDocSetup\MhpBreastPainController;
use App\Http\Controllers\GreatDocSetup\MhpBreastNippleDischargeController;
use App\Http\Controllers\GreatDocSetup\MhpVulvaController;
use App\Http\Controllers\GreatDocSetup\MhpPelvicMassController;
use App\Http\Controllers\GreatDocSetup\MhpBartholinGlandesController;
use App\Http\Controllers\GreatDocSetup\MhpCervixController;
use App\Http\Controllers\GreatDocSetup\MhpCSTController;

use App\Http\Controllers\MhpGenitoUrinaryController;
use App\Models\MhpGenitoUrinary;

// morshed end

use App\Http\Controllers\EntExaminationController;

use App\Http\Controllers\AdminSetupDoctors\MhpBillingProviderController;
use App\Http\Controllers\AdminSetupDoctors\MhpGivenByController;
use App\Http\Controllers\AdminSetupDoctors\MhpBatchNoController;
use App\Http\Controllers\AdminSetupDoctors\MhpImmunisationRouteController;
use App\Http\Controllers\AdminSetupDoctors\MhpImmunisationSiteController;
use App\Http\Controllers\AdminSetupDoctors\VaccineNameController;
use App\Http\Controllers\AdminSetupDoctors\VaccineAgainstController;
use App\Http\Controllers\MhpMentalHealthController;
use App\Http\Controllers\AdminSetupAppointment\RadiologyCenter\RadiologyCenterController;
use App\Http\Controllers\AdminSetupAppointment\LabratoryNameController;
use App\Http\Controllers\AdminSetupAppointment\PathalogyTestNameController;
use App\Http\Controllers\AdminSetupAppointment\ClinicalDetailsController;
use App\Http\Controllers\AdminSetupAppointment\FavouriteTestController;
use App\Http\Controllers\AdminSetupAppointment\RadiologyTestName\RadiologyTestNameController;
use App\Http\Controllers\AdminSetupAppointment\RadiologyTestType\RadiologyTestTypeController;
use App\Http\Controllers\AdminSetupAppointment\ClinicalIndications\ClinicalIndicationsController;
use App\Http\Controllers\MhpNeurologicalController;

use App\Http\Controllers\AdminSetupAppointment\Radiology\RadiologyController;
use App\Http\Controllers\AdminSetupDoctors\CareDetails\CareDetailsController;
use App\Http\Controllers\AdminSetupDoctors\CareSuggestion\CareSuggestionController;
use App\Http\Controllers\GreatDocSetup\Diagnosis\GreatDocDiagnosisController;
use App\Http\Controllers\GreatDocSetup\Procedure\GreatDocProcedureController;
use App\Http\Controllers\GreatDocSetup\Reson\GreatDocResonController;
use App\Http\Controllers\GreatDocSetup\Review\ReviewNameController;
use App\Http\Controllers\MhpSkinExaminationController;
use App\Http\Controllers\DoctorChamber\DoctorChamberController;
use App\Http\Controllers\MhpWomenHealthExamiController;
use App\Http\Controllers\AdminSetupDoctors\ReminderReason\ReminderReasonController;
use App\Http\Controllers\AdminSetupDoctors\Restriction\CustomRestrictionController;
use App\Http\Controllers\CustomTemplateController;
use App\Http\Controllers\GreatDoc\MedicationChart\MedicationChartController;
use App\Http\Controllers\GreatDoc\MedicationChart\ServicesController;
use App\Http\Controllers\GreatDoc\MedicationChart\UnitController;
use App\Http\Controllers\GreatDocSetup\ReviewNameSetupController;
use App\Http\Controllers\GreatDoc\Reminder\GreatDocReminderController;
use App\Http\Controllers\GreatDocSetup\MhpCodeMustBeCircledReasonController;
use App\Http\Controllers\MhpMusculoSketalExamiController;
use App\Http\Controllers\GreatDocSetUp\Paediatric\PaediatricHealthCheck6;
use App\Http\Controllers\GreatDocSetUp\Paediatric\PaediatricDentalSection;
use App\Http\Controllers\LabTestNameController;
use App\Http\Controllers\MhpBreastController;
use App\Http\Controllers\MhpFeaturePermissionController;
use App\Http\Controllers\MhpFindingsController;
use App\Http\Controllers\MhpgynecologiesController;
use App\Http\Controllers\MhpIndicationController;
use App\Http\Controllers\MhpInstitutionController;
use App\Http\Controllers\MhpIschaemicRiskFactorController;
use App\Http\Controllers\MhpPediatricBanglaPreviewController;
use App\Http\Controllers\UserRoleController;
use App\Models\MhpInstitution;
use App\Models\MhpPediatricBanglaPreview;
use App\Http\Controllers\MhpLabTestTypeController;
use App\Http\Controllers\MhpObstetricsController;
use App\Http\Controllers\MhpProcedureDetailsController;
use App\Http\Controllers\MhpProcedureReportChartController;
use App\Http\Controllers\MhpProcedureReportController;
use App\Http\Controllers\MhpUserRoleManagmentController;
use App\Models\CustomTemplate;
use App\Models\MhpIndication;
use App\Http\Controllers\TheResultIsController;
use App\Http\Controllers\StoreResultInController;
use App\Http\Controllers\ActionTobeTakenController;
use App\Http\Controllers\AdminSetupDoctors\CustomMedicine\CustomMedicineController;
use App\Http\Controllers\AdminSetupDoctors\Ingredient\IngredientController;
use App\Http\Controllers\AdminSetupDoctors\MedicineCategory\MedicineCategoryController;
use App\Http\Controllers\ItemNumbersController;
use App\Http\Controllers\MhpAnalgesiaController;
use App\Http\Controllers\MhpAntibioticsController;
use App\Http\Controllers\MhpAntibioticsTwoController;
use App\Http\Controllers\MhpBloodLossController;
use App\Http\Controllers\MhpDietController;
use App\Http\Controllers\MhpDischargeController;
use App\Http\Controllers\MhpDrainController;
use App\Http\Controllers\MhpDvtPropController;
use App\Http\Controllers\MhpFollowupController;
use App\Http\Controllers\MhpGeneralNoteController;
use App\Http\Controllers\MhpIncisionController;
use App\Http\Controllers\MhpObservationController;
use App\Http\Controllers\MhpPathologyController;
use App\Http\Controllers\MhpPostOperativeController;
use App\Http\Controllers\NewLabModule\TestGroupController;
use App\Http\Controllers\NewLabModule\TestCategoryController;
use App\Http\Controllers\NewLabModule\NewTestNameController;
use App\Http\Controllers\NewLabModule\TestDatabaseController;

// User Role Managment

Route::post('/save-user-role-permission',[MhpUserRoleManagmentController::class,'store']);
Route::put('/update-user-role-permission/{id}',[MhpUserRoleManagmentController::class,'update']);

Route::get('/get-user-role-permission/{Userid}',[MhpUserRoleManagmentController::class,'index']);
Route::get('/get-user-permission/{user_type}/{Userid}',[MhpUserRoleManagmentController::class,'getPermission']);
Route::get('/get-user-permission-all-user/{user_type}',[MhpUserRoleManagmentController::class,'getPermission_alluser']);



// User Role

Route::get('/user-role',[UserRoleController::class,'index']);
Route::post('/save-user-role',[UserRoleController::class,'store']);
Route::get('/edit-user-role/{id}',[UserRoleController::class,'edit']);
Route::put('update-user-role/{id}',[UserRoleController::class,'update']);
Route::delete('delete-user-role/{id}',[UserRoleController::class,'destroy']);

//Feature Permission

Route::get('/feature-permission',[MhpFeaturePermissionController::class,'index']);
Route::post('/save-feature-permission',[MhpFeaturePermissionController::class,'store']);
Route::get('/edit-feature-permission/{id}',[MhpFeaturePermissionController::class,'edit']);
Route::put('update-feature-permission/{id}',[MhpFeaturePermissionController::class,'update']);
Route::delete('delete-feature-permission/{id}',[MhpFeaturePermissionController::class,'destroy']);


//User

Route::post('/signup',[AdminController::class,'register']); 
Route::post('/login',[AdminController::class,'login']);
Route::get('/users/{email}',[AdminController::class,'getUser']);


Route::post('/login-patient',[AdminController::class,'login_patient']);
Route::post('/login-doctor',[AdminController::class,'login_doctor']);

Route::get('/user/{email}',[AdminController::class,'userDetail']);
Route::post('update-password/{id}',[AdminController::class,'updatePassword']);
//religions
Route::get('/religions',[ReligionController::class,'index']);
Route::post('/add-religions',[ReligionController::class,'store']);
Route::get('/edit-religion/{id}',[ReligionController::class,'edit']);
Route::put('update-religion/{id}',[ReligionController::class,'update']);
Route::delete('delete-religion/{id}',[ReligionController::class,'destroy']);
//country
Route::get('/country',[CountryController::class,'index']);
Route::post('/save-country',[CountryController::class,'store']);
Route::get('/edit-country/{id}',[CountryController::class,'edit']);
Route::put('update-country/{id}',[CountryController::class,'update']);
Route::delete('delete-country/{id}',[CountryController::class,'destroy']);
//city
Route::get('/city',[CityController::class,'index']);
Route::post('/save-city',[CityController::class,'store']);
Route::get('/edit-city/{id}',[CityController::class,'edit']);
Route::put('update-city/{id}',[CityController::class,'update']);
Route::delete('delete-city/{id}',[CityController::class,'destroy']);
//ethnicity
Route::get('/ethnicity',[EthnicityController::class,'index']);
Route::post('/save-ethnicity',[EthnicityController::class,'store']);
Route::get('/edit-ethnicity/{id}',[EthnicityController::class,'edit']);
Route::put('update-ethnicity/{id}',[EthnicityController::class,'update']);
Route::delete('delete-ethnicity/{id}',[EthnicityController::class,'destroy']);
//birth_sex
Route::get('/birth-sex',[BirthSexController::class,'index']);
Route::post('/save-birth-sex',[BirthSexController::class,'store']);
Route::get('/edit-birth-sex/{id}',[BirthSexController::class,'edit']);
Route::put('update-birth-sex/{id}',[BirthSexController::class,'update']);
Route::delete('delete-birth-sex/{id}',[BirthSexController::class,'destroy']);
//status 
Route::get('/status',[StatusController::class,'index']);
Route::post('/save-status',[StatusController::class,'store']);
Route::get('/edit-status/{id}',[StatusController::class,'edit']);
Route::put('update-status/{id}',[StatusController::class,'update']);
Route::delete('delete-status/{id}',[StatusController::class,'destroy']);
//city
Route::get('/title',[TitleController::class,'index']);
Route::post('/save-title',[TitleController::class,'store']);
Route::get('/edit-title/{id}',[TitleController::class,'edit']);
Route::put('update-title/{id}',[TitleController::class,'update']);
Route::delete('delete-title/{id}',[TitleController::class,'destroy']);

//For Usual Location Type
Route::post('add-location', [LocationController::class, 'store']);
Route::get('/location', [LocationController::class, 'index']);
Route::get('/edit-location/{id}', [LocationController::class, 'edit']);
Route::put('/update-location/{id}', [LocationController::class, 'update']);
Route::delete('/delete-location/{id}', [LocationController::class, 'destroy']);

//For Occupation Type Table
Route::post('/add-occupation', [OccupationController::class, 'store']);
Route::get('/occupation', [OccupationController::class, 'index']);
Route::get('/edit-occupation/{id}', [OccupationController::class, 'edit']);
Route::put('/update-occupation/{id}', [OccupationController::class, 'update']);
Route::delete('/delete-occupation/{id}', [OccupationController::class, 'destroy']);
//For Test Type Table
Route::post('add-test', [TestTypeController::class, 'teststore']);
Route::get('/all-test', [TestTypeController::class, 'testindex']);
Route::get('/edit-test/{id}', [TestTypeController::class, 'testedit']);
Route::put('/update-test/{id}', [TestTypeController::class, 'testupdate']);
Route::delete('/delete-test/{id}', [TestTypeController::class, 'testdestroy']);
//For Visit Type Table
Route::post('add-visit', [VisitTypeController::class, 'visitstore']);
Route::get('/all-visit', [VisitTypeController::class, 'visitindex']);
Route::get('/edit-visitor/{id}', [VisitTypeController::class, 'visitedit']);
Route::put('/update-visitors/{id}', [VisitTypeController::class, 'visiteupdate']);
Route::delete('/delete-visitor/{id}', [VisitTypeController::class, 'visitdestroy']);



//city
Route::get('/contact-via',[ContactViaController::class,'index']);
Route::post('/save-contact-via',[ContactViaController::class,'store']);
Route::get('/edit-contact-via/{id}',[ContactViaController::class,'edit']);
Route::put('update-contact-via/{id}',[ContactViaController::class,'update']);
Route::delete('delete-contact-via/{id}',[ContactViaController::class,'destroy']);

//state
Route::get('/state',[StateController::class,'index']);
Route::post('/save-state',[StateController::class,'store']);
Route::get('/edit-state/{id}',[StateController::class,'edit']);
Route::put('update-state/{id}',[StateController::class,'update']);
Route::delete('delete-state/{id}',[StateController::class,'destroy']);

//timesetup
Route::get('/timesetup',[TimeSetupController::class,'index']);
Route::post('/save-timesetup',[TimeSetupController::class,'store']);
Route::get('/edit-timesetup/{id}',[TimeSetupController::class,'edit']);
Route::put('update-timesetup/{id}',[TimeSetupController::class,'update']);
Route::delete('delete-timesetup/{id}',[TimeSetupController::class,'destroy']);


//timeslots
Route::get('/timeslots',[TimeSetupController::class,'index']);
Route::post('/save-timeslots',[TimeSetupController::class,'store']);
Route::get('/edit-timeslots/{id}',[TimeSetupController::class,'edit']);
Route::put('update-timeslots/{id}',[TimeSetupController::class,'update']);
Route::delete('delete-timeslots/{id}',[TimeSetupController::class,'destroy']);


//usual-provider
Route::get('/usual-provider',[UsualProviderController::class,'index']);
Route::post('/save-usual-provider',[UsualProviderController::class,'store']);
Route::get('/edit-usual-provider/{id}',[UsualProviderController::class,'edit']);
Route::put('update-usual-provider/{id}',[UsualProviderController::class,'update']);
Route::delete('delete-usual-provider/{id}',[UsualProviderController::class,'destroy']);
//usual-account
Route::get('/usual-account',[UsualAccountController::class,'index']);
Route::post('/save-usual-account',[UsualAccountController::class,'store']);
Route::get('/edit-usual-account/{id}',[UsualAccountController::class,'edit']);
Route::put('update-usual-account/{id}',[UsualAccountController::class,'update']);
Route::delete('delete-usual-account/{id}',[UsualAccountController::class,'destroy']);

// reaction
Route::get('/reaction',[ReactionController::class,'index']);
Route::post('save-reaction',[ReactionController::class,'store']);
Route::get('/edit-reaction/{id}', [ReactionController::class, 'edit']);
Route::put('/update-reaction/{id}', [ReactionController::class, 'update']);
Route::delete('delete-reaction/{id}',[ReactionController::class,'destroy']);

// appearance
Route::get('/appearance',[AppearanceController::class,'index']);
Route::post('save-appearance',[AppearanceController::class,'store']);
Route::get('/edit-appearance/{id}', [AppearanceController::class, 'edit']);
Route::post('/update-appearance/{id}', [AppearanceController::class, 'update']);
Route::delete('delete-appearance/{id}',[AppearanceController::class,'destroy']);

// behaviour
Route::get('/behaviour',[BehaviourController::class,'index']);
Route::post('save-behaviour',[BehaviourController::class,'store']);
Route::get('/edit-behaviour/{id}', [BehaviourController::class, 'edit']);
Route::post('/update-behaviour/{id}', [BehaviourController::class, 'update']);
Route::delete('delete-behaviour/{id}',[BehaviourController::class,'destroy']);

// appearance
Route::get('/attitude-towards-examination',[AttitudeTowardsExaminationController::class,'index']);
Route::post('save-attitude-towards-examination',[AttitudeTowardsExaminationController::class,'store']);
Route::get('/edit-attitude-towards-examination/{id}', [AttitudeTowardsExaminationController::class, 'edit']);
Route::post('/update-attitude-towards-examination/{id}', [AttitudeTowardsExaminationController::class, 'update']);
Route::delete('delete-attitude-towards-examination/{id}',[AttitudeTowardsExaminationController::class,'destroy']);

// PHQ-9 Questionnaire
Route::get('/phq-9-questionnaire',[MhpPHQ9QuestionnaireController::class,'index']);
Route::post('save-phq-9-questionnaire',[MhpPHQ9QuestionnaireController::class,'store']);
Route::get('/edit-phq-9-questionnaire/{id}', [MhpPHQ9QuestionnaireController::class, 'edit']);
Route::post('/update-phq-9-questionnaire/{id}', [MhpPHQ9QuestionnaireController::class, 'update']);
Route::delete('delete-phq-9-questionnaire/{id}',[MhpPHQ9QuestionnaireController::class,'destroy']);

// PHQ-9 Questionnaire value
Route::get('/phq-9-questionnaire-value',[MhpPHQ9QuestionnaireValueController::class,'index']);
Route::post('save-phq-9-questionnaire-value',[MhpPHQ9QuestionnaireValueController::class,'store']);
Route::get('/edit-phq-9-questionnaire-value/{id}', [MhpPHQ9QuestionnaireValueController::class, 'edit']);
Route::post('/update-phq-9-questionnaire-value/{id}', [MhpPHQ9QuestionnaireValueController::class, 'update']);
Route::delete('delete-phq-9-questionnaire-value/{id}',[MhpPHQ9QuestionnaireValueController::class,'destroy']);

// diagnosis
Route::get('/diagnosis',[DiagnosisController::class,'index']);
Route::post('save-diagnosis',[DiagnosisController::class,'store']);
Route::get('/edit-diagnosis/{id}', [DiagnosisController::class, 'edit']);
Route::put('/update-diagnosis/{id}', [DiagnosisController::class, 'update']);
Route::delete('delete-diagnosis/{id}',[DiagnosisController::class,'destroy']);

// doctor fees
Route::get('/doctorFee',[DoctorFeeController::class,'index']);
Route::post('save-doctorFee',[DoctorFeeController::class,'store']);
Route::get('/edit-doctorFee/{id}', [DoctorFeeController::class, 'edit']);
Route::put('/update-doctorFee/{id}', [DoctorFeeController::class, 'update']);
Route::delete('delete-doctorFee/{id}',[DoctorFeeController::class,'destroy']);
Route::get('/all-doctorFee', [DoctorFeeController::class, 'allDoctorFee']);

//all doctors get corrospodning doctor procedure

Route::get('/doctorSubProcedureById/{id}', [DoctorFeeController::class, 'doctorSubProcedureById']);

//doctor fee by id
Route::get('/doctorFeeById/{id}',[DoctorFeeController::class,'doctorFeeById']);

//billing-payment routes
Route::get('/digital',[DigitalController::class,'index']);
Route::post('/save-digital',[DigitalController::class,'store']);
Route::get('/edit-digital/{id}', [DigitalController::class, 'edit']);
Route::put('/update-digital/{id}', [DigitalController::class, 'update']);
Route::delete('delete-digital/{id}',[DigitalController::class,'destroy']);

Route::get('/card',[CardController::class,'index']);
Route::post('/save-card',[CardController::class,'store']);
Route::get('/edit-card/{id}', [CardController::class, 'edit']);
Route::put('/update-card/{id}', [CardController::class, 'update']);
Route::delete('delete-card/{id}',[CardController::class,'destroy']);

Route::get('/branch',[BranchController::class,'index']);
Route::post('/save-branch',[BranchController::class,'store']);
Route::get('/edit-branch/{id}', [BranchController::class, 'edit']);
Route::put('/update-branch/{id}', [BranchController::class, 'update']);
Route::delete('delete-branch/{id}',[BranchController::class,'destroy']);

Route::get('/bank',[BankController::class,'index']);
Route::post('/save-bank',[BankController::class,'store']);
Route::get('/edit-bank/{id}', [BankController::class, 'edit']);
Route::put('/update-bank/{id}', [BankController::class, 'update']);
Route::delete('delete-bank/{id}',[BankController::class,'destroy']);
Route::get('all-branch',[BankController::class,'allBranch']);


//ingredients routes
Route::get('/ingredient',[IngredientController::class,'index']);
Route::post('/save-ingredient',[IngredientController::class,'store']);
Route::get('/edit-ingredient/{id}', [IngredientController::class, 'edit']);
Route::put('/update-ingredient/{id}', [IngredientController::class, 'update']);
Route::delete('delete-ingredient/{id}',[IngredientController::class,'destroy']);


//the result is routes (doctor inbox)
Route::get('/theResultIs',[theResultIsController::class,'index']);
Route::post('/save-theResultIs',[theResultIsController::class,'store']);
Route::get('/edit-theResultIs/{id}', [theResultIsController::class, 'edit']);
Route::put('/update-theResultIs/{id}', [theResultIsController::class, 'update']);
Route::delete('delete-theResultIs/{id}',[theResultIsController::class,'destroy']);

//store-result-in

Route::get('/storeResultIn',[StoreResultInController::class,'index']);
Route::post('/save-storeResultIn',[StoreResultInController::class,'store']);
Route::get('/edit-storeResultIn/{id}', [StoreResultInController::class, 'edit']);
Route::put('/update-storeResultIn/{id}', [StoreResultInController::class, 'update']);
Route::delete('delete-storeResultIn/{id}',[StoreResultInController::class,'destroy']);


//action to be taken 

Route::get('/actionTobeTaken',[ActionTobeTakenController::class,'index']);
Route::post('/save-actionTobeTaken',[ActionTobeTakenController::class,'store']);
Route::get('/edit-actionTobeTaken/{id}', [ActionTobeTakenController::class, 'edit']);
Route::put('/update-actionTobeTaken/{id}', [ActionTobeTakenController::class, 'update']);
Route::delete('delete-actionTobeTaken/{id}',[ActionTobeTakenController::class,'destroy']);

//services-name
Route::get('/services-name',[ServicesController::class,'index']);
Route::post('/save-services-name',[ServicesController::class,'store']);
Route::get('/edit-services-name/{id}', [ServicesController::class, 'edit']);
Route::post('/update-services-name/{id}', [ServicesController::class, 'update']);
Route::delete('delete-services-name/{id}',[ServicesController::class,'destroy']);

//unit-name
Route::get('/unit-name',[UnitController::class,'index']);
Route::post('/save-unit-name',[UnitController::class,'store']);
Route::get('/edit-unit-name/{id}', [UnitController::class, 'edit']);
Route::post('/update-unit-name/{id}', [UnitController::class, 'update']);
Route::delete('delete-unit-name/{id}',[UnitController::class,'destroy']);


//CodeMustBeCircledReason
Route::get('/code-must-be-circled-reason',[MhpCodeMustBeCircledReasonController::class, 'index']);
Route::post('/save-code-must-be-circled-reason',[MhpCodeMustBeCircledReasonController::class, 'store']);
Route::get('/edit-code-must-be-circled-reason/{id}',[MhpCodeMustBeCircledReasonController::class, 'edit']);
Route::post('/update-code-must-be-circled-reason/{id}',[MhpCodeMustBeCircledReasonController::class, 'update']);
Route::delete('/delete-code-must-be-circled-reason/{id}',[MhpCodeMustBeCircledReasonController::class, 'destroy']);


//medication chart 
//save allergies (adr)
Route::post('/save-allergies-adr',[MedicationChartController::class,'store']);
Route::get('/all-allergies-adr/{id}',[MedicationChartController::class,'index']);
Route::delete('/delete-allergy-adr/{id}',[MedicationChartController::class,'deleteAllergyAdr']);

//medicine prior taken to
Route::post('/save-medicine-prior-taken-to',[MedicationChartController::class,'saveMedicationPart1LastTable']);
Route::post('/update-medicine-prior-taken-to/{id}',[MedicationChartController::class,'updateMedicationPart1LastTable']);
Route::get('/get-medicine-prior-taken-to/{id}',[MedicationChartController::class,'getMedicationPart1LastTable']);
Route::get('/edit-medicine-prior-taken-to/{id}',[MedicationChartController::class,'editMedicationPart1LastTable']);
Route::delete('/delete-medicine-prior-taken-to/{id}',[MedicationChartController::class,'deleteMedicationPart1LastTable']);

//nurse initiated medicine
Route::post('/save-nurse-initiated-medicine',[MedicationChartController::class,'saveNurseInitiatedMedicine']);
Route::get('/get-nurse-initiated-medicine/{id}',[MedicationChartController::class,'getNurseInitiatedMedicine']);
Route::delete('/delete-nurse-initiated-medicine/{id}',[MedicationChartController::class,'deleteNurseInitiatedMedicine']);



Route::get('/edit-nurse-initiated-medicine/{id}',[MedicationChartController::class,'editNurseInitiatedMedicine']);
Route::post('/update-nurse-initiated-medicine/{id}',[MedicationChartController::class,'updateNurseInitiatedMedicine']);

// MhpMedication Chart Part one Telephone orders (to be signed within 24 hours of order) Table
// table-4
Route::post('/save-telephone-orders-medicine',[MedicationChartController::class,'saveTelephoneOrdersMedicine']);
Route::get('/get-telephone-orders-medicine/{id}',[MedicationChartController::class,'getTelephoneOrdersMedicine']);
Route::delete('/delete-telephone-orders-medicine/{id}',[MedicationChartController::class,'deleteTelephoneOrdersMedicine']);

Route::get('/edit-telephone-orders-medicine/{id}',[MedicationChartController::class,'editTelephoneOrdersMedicine']);
Route::post('/update-telephone-orders-medicine/{id}',[MedicationChartController::class,'updateTelephoneOrdersMedicine']);


// MhpMedication Chart Part Two Regular Medicine Variable Dose Medicine Table

Route::post('/save-recommended-gudeline-one',[MedicationChartController::class,'saveRecommendedGuideline']);
Route::get('/get-recommended-gudeline-one/{id}',[MedicationChartController::class,'getRecommendedGuideline']);

Route::get('/edit-recommended-gudeline-one/{id}',[MedicationChartController::class,'editRecommendedGuideline']);
Route::post('/update-recommended-gudeline-one/{id}',[MedicationChartController::class,'updateRecommendedGuideline']);

Route::delete('/delete-recommended-gudeline-one/{id}',[MedicationChartController::class,'deleteRecommendedGuideline']);

// table-1 
Route::post('/save-regular-medicine-variable-dose',[MedicationChartController::class,'saveRegularMedicineVariableDoseMedicine']);
Route::get('/get-regular-medicine-variable-dose/{id}',[MedicationChartController::class,'getRegularMedicineVariableDoseMedicine']);

Route::get('/edit-regular-medicine-variable-dose/{id}',[MedicationChartController::class,'editRegularMedicineVariableDoseMedicine']);
Route::post('/update-regular-medicine-variable-dose/{id}',[MedicationChartController::class,'updateRegularMedicineVariableDoseMedicine']);
Route::delete('/delete-regular-medicine-variable-dose/{id}',[MedicationChartController::class,'deleteRegularMedicineVariableDoseMedicine']);

// table-2 
Route::post('/save-regular-medicine-variable-dose-two',[MedicationChartController::class,'saveRegularMedicineVariableDoseMedicineTwo']);
Route::get('/get-regular-medicine-variable-dose-two/{id}',[MedicationChartController::class,'getRegularMedicineVariableDoseMedicineTwo']);
Route::delete('/delete-get-regular-medicine-variable-dose-two/{id}',[MedicationChartController::class,'deleteRegularMedicineVariableDoseMedicineTwo']);


Route::get('/edit-regular-medicine-variable-dose-two/{id}',[MedicationChartController::class,'editRegularMedicineVariableDoseMedicineTwo']);
Route::post('/update-regular-medicine-variable-dose-two/{id}',[MedicationChartController::class,'updateRegularMedicineVariableDoseMedicineTwo']);

// table-3
Route::post('/save-regular-medicine-variable-dose-three',[MedicationChartController::class,'saveRegularMedicineVariableDoseMedicineThree']);
Route::get('/get-regular-medicine-variable-dose-three/{id}',[MedicationChartController::class,'getRegularMedicineVariableDoseMedicineThree']);
Route::delete('/delete-get-regular-medicine-variable-dose-three/{id}',[MedicationChartController::class,'deleteRegularMedicineVariableDoseMedicineThree']);

Route::get('/edit-regular-medicine-variable-dose-three/{id}',[MedicationChartController::class,'editRegularMedicineVariableDoseMedicineThree']);
Route::post('/update-regular-medicine-variable-dose-three/{id}',[MedicationChartController::class,'updateRegularMedicineVariableDoseMedicineThree']);

// table-4
Route::post('/save-regular-medicine-variable-dose-four',[MedicationChartController::class,'saveRegularMedicineVariableDoseMedicineFour']);
Route::get('/get-regular-medicine-variable-dose-four/{id}',[MedicationChartController::class,'getRegularMedicineVariableDoseMedicineFour']);

Route::get('/edit-regular-medicine-variable-dose-four/{id}',[MedicationChartController::class,'editRegularMedicineVariableDoseMedicineFour']);
Route::post('/update-regular-medicine-variable-dose-four/{id}',[MedicationChartController::class,'updateRegularMedicineVariableDoseMedicineFour']);

Route::delete('/delete-get-regular-medicine-variable-dose-four/{id}',[MedicationChartController::class,'deleteRegularMedicineVariableDoseMedicineFour']);
// MhpMedication Chart Part Three Regular Medicine Variable Dose Medicine Table
// table-7
Route::post('/save-regular-medicine-prescriber-must-seven',[MedicationChartController::class,'saveRegularMedicinePrescriberMustMedicineSeven']);
Route::get('/get-regular-medicine-prescriber-must-seven/{id}',[MedicationChartController::class,'getRegularMedicinePrescriberMustMedicineSeven']);

Route::get('/edit-regular-medicine-prescriber-must-seven/{id}',[MedicationChartController::class,'editRegularMedicinePrescriberMustMedicineSeven']);
Route::post('/update-regular-medicine-prescriber-must-seven/{id}',[MedicationChartController::class,'updateRegularMedicinePrescriberMustMedicineSeven']);
Route::delete('/delete-get-regular-medicine-variable-dose-saven/{id}',[MedicationChartController::class,'deleteRegularMedicineVariableDoseMedicineSeven']);
// MhpMedication Chart Part Four Regular Medicine As required PRN Medicine Table
// table-8
Route::post('/save-regular-medicine-as-required-prn-eight',[MedicationChartController::class,'saveRegularMedicineAsRequiredPRNMedicineEight']);
Route::get('/get-regular-medicine-as-required-prn-eight/{id}',[MedicationChartController::class,'getRegularMedicineAsRequiredPRNMedicineEight']);

Route::get('/edit-regular-medicine-as-required-prn-eight/{id}',[MedicationChartController::class,'editRegularMedicineAsRequiredPRNMedicineEight']);
Route::post('/update-regular-medicine-as-required-prn-eight/{id}',[MedicationChartController::class,'updateRegularMedicineAsRequiredPRNMedicineEight']);

Route::delete('/delete-regular-medicine-as-required-prn-eight/{id}',[MedicationChartController::class,'deleteRegularMedicineVariableDoseMedicineEight']);

// MhpMedication Chart Part Five Regular Medicine Allergies and adverse drug reactions (ADR) Table
// table-9
Route::post('/save-regular-medicine-allergies-and-adverse-nine',[MedicationChartController::class,'saveRegularMedicineAllergiesAndAdverseMedicineNine']);
Route::get('/get-regular-medicine-allergies-and-adverse-nine/{id}',[MedicationChartController::class,'getRegularMedicineAllergiesAndAdverseMedicineNine']);

Route::get('/edit-regular-medicine-allergies-and-adverse-nine/{id}',[MedicationChartController::class,'editRegularMedicineAllergiesAndAdverseMedicineNine']);
Route::post('/update-regular-medicine-allergies-and-adverse-nine/{id}',[MedicationChartController::class,'updateRegularMedicineAllergiesAndAdverseMedicineNine']);

Route::delete('/delete-regular-medicine-allergies-and-adverse-nine/{id}',[MedicationChartController::class,'deleteRegularMedicineAllergiesAndAdverseMedicineNine']);

/////????????????????????????????? MhpMedication Chart Part  ??????????????????? ///////////
Route::post('/save-medication-chart-part-one', [MedicationChartController::class, 'save__medication__chart__part__one__all']);
Route::post('/save-medication-chart-part-two', [MedicationChartController::class, 'save__medication__chart__part__two__all']);
Route::post('/save-medication-chart-part-three', [MedicationChartController::class, 'save__medication__chart__part__three__all']);
Route::post('/save-medication-chart-part-four', [MedicationChartController::class, 'save__medication__chart__part__four__all']);






//care suggesstion 
Route::get('/care-suggestion',[CareSuggestionController::class,'index']);
Route::post('/save-care-suggestion',[CareSuggestionController::class,'store']);
Route::get('/edit-care-suggestion/{id}', [CareSuggestionController::class, 'edit']);
Route::post('/update-care-suggestion/{id}', [CareSuggestionController::class, 'update']);
Route::delete('delete-care-suggestion/{id}',[CareSuggestionController::class,'destroy']);


//save great doc care suggestion
Route::post('/save-greatdoc-care-suggestion',[GreatDocCareSuggesionController::class,'store']);

//save past observation
Route::post('/save-greatdoc-past-obserbation',[GreatDocCareSuggesionController::class,'saveObserbation']);

//care details
Route::get('/care-details',[CareDetailsController::class,'index']);
Route::post('/save-care-details',[CareDetailsController::class,'store']);
Route::get('/edit-care-details/{id}', [CareDetailsController::class, 'edit']);
Route::post('/update-care-details/{id}', [CareDetailsController::class, 'update']);
Route::delete('delete-care-details/{id}',[CareDetailsController::class,'destroy']);

//custom-medicine restriction routes
Route::get('/restriction',[CustomRestrictionController::class,'index']);
Route::post('/save-restriction',[CustomRestrictionController::class,'store']);
Route::get('/edit-restriction/{id}', [CustomRestrictionController::class, 'edit']);
Route::put('/update-restriction/{id}', [CustomRestrictionController::class, 'update']);
Route::delete('delete-restriction/{id}',[CustomRestrictionController::class,'destroy']);

//medicine category routes
Route::get('/medicinecategory',[MedicineCategoryController::class,'index']);
Route::post('/save-medicinecategory',[MedicineCategoryController::class,'store']);
Route::get('/edit-medicinecategory/{id}', [MedicineCategoryController::class, 'edit']);
Route::put('/update-medicinecategory/{id}', [MedicineCategoryController::class, 'update']);
Route::delete('delete-medicinecategory/{id}',[MedicineCategoryController::class,'destroy']);


//custom medicine routes
Route::get('/custom-medicine',[CustomMedicineController::class,'index']);
Route::post('/save-custom-medicine',[CustomMedicineController::class,'store']);
Route::get('/edit-custom-medicine/{id}', [CustomMedicineController::class, 'edit']);
Route::post('/update-custom-medicine/{id}', [CustomMedicineController::class, 'update']);
Route::delete('delete-custom-medicine/{id}',[CustomMedicineController::class,'destroy']);
Route::post('save-ingredients-children',[CustomMedicineController::class,'saveIngredientChildren']);
Route::post('update-medicine/{id}',[CustomMedicineController::class,'updateCustomMedicine']);
//get ingredient name by ingredient id
Route::get('ingredient/{id}',[CustomMedicineController::class,'getIngredientName']);

Route::get('/custom-medicine-for-rx',[CustomMedicineController::class,'custom_medicine']);
Route::get('/custom-medicine-search/{name}',[CustomMedicineController::class,'custom_medicine_search']);
Route::get('/find-ingredient/{medicenID}',[CustomMedicineController::class,'custom_medicine_ingredient']);


//Billing Provider
Route::get('/billing-provider',[MhpBillingProviderController::class,'index']);
Route::post('/add-billing-provider',[MhpBillingProviderController::class,'store']);
Route::get('/edit-billing-provider/{id}', [MhpBillingProviderController::class, 'edit']);
Route::put('/update-billing-provider/{id}', [MhpBillingProviderController::class, 'update']);
Route::delete('delete-billing-provider/{id}',[MhpBillingProviderController::class,'destroy']);


//Given By 
Route::get('/given-by',[MhpGivenByController::class,'index']);
Route::post('/add-given-by',[MhpGivenByController::class,'store']);
Route::get('/edit-given-by/{id}', [MhpGivenByController::class, 'edit']);
Route::put('/update-given-by/{id}', [MhpGivenByController::class, 'update']);
Route::delete('delete-given-by/{id}',[MhpGivenByController::class,'destroy']);


//Billing Provider
Route::get('/batch-no',[MhpBatchNoController::class,'index']);
Route::post('/add-batch-no',[MhpBatchNoController::class,'store']);
Route::get('/edit-batch-no/{id}', [MhpBatchNoController::class, 'edit']);
Route::put('/update-batch-no/{id}', [MhpBatchNoController::class, 'update']);
Route::delete('delete-batch-no/{id}',[MhpBatchNoController::class,'destroy']);


//immunisation route
Route::get('/immunisation-route',[MhpImmunisationRouteController::class,'index']);
Route::post('/add-immunisation-route',[MhpImmunisationRouteController::class,'store']);
Route::get('/edit-immunisation-route/{id}', [MhpImmunisationRouteController::class, 'edit']);
Route::put('/update-immunisation-route/{id}', [MhpImmunisationRouteController::class, 'update']);
Route::delete('delete-immunisation-route/{id}',[MhpImmunisationRouteController::class,'destroy']);


//immunisation site
Route::get('/immunisation-site',[MhpImmunisationSiteController::class,'index']);
Route::post('/add-immunisation-site',[MhpImmunisationSiteController::class,'store']);
Route::get('/edit-immunisation-site/{id}', [MhpImmunisationSiteController::class, 'edit']);
Route::put('/update-immunisation-site/{id}', [MhpImmunisationSiteController::class, 'update']);
Route::delete('delete-immunisation-site/{id}',[MhpImmunisationSiteController::class,'destroy']);


//great doc immunisation

Route::post('/add-immunisation-greatdoc',[MhpGreateDocController::class,'saveGreatdocImmunisation']);
Route::get('/get-immunisation/{id}',[MhpGreateDocController::class,'immunisation']);
Route::delete('/delete-immunisation/{id}',[MhpGreateDocController::class,'deletImmunisation']);

//vaccine name

Route::get('/vaccine-name',[VaccineNameController::class,'index']);
Route::post('/add-vaccine-name',[VaccineNameController::class,'store']);
Route::get('/edit-vaccine-name/{id}', [VaccineNameController::class, 'edit']);
Route::put('/update-vaccine-name/{id}', [VaccineNameController::class, 'update']);
Route::delete('delete-vaccine-name/{id}',[VaccineNameController::class,'destroy']);


//vaccine against

Route::get('/vaccine-against',[VaccineAgainstController::class,'index']);
Route::post('/add-vaccine-against',[VaccineAgainstController::class,'store']);
Route::get('/edit-vaccine-against/{id}', [VaccineAgainstController::class, 'edit']);
Route::put('/update-vaccine-against/{id}', [VaccineAgainstController::class, 'update']);
Route::delete('delete-vaccine-against/{id}',[VaccineAgainstController::class,'destroy']);



// alcohol-consumption
Route::get('/alcohol-consumption',[PastAlcoholConsumptionController::class,'index']);
Route::post('save-alcohol-consumption',[PastAlcoholConsumptionController::class,'store']);
Route::get('/edit-alcohol-consumption/{id}', [PastAlcoholConsumptionController::class, 'edit']);
Route::put('/update-alcohol-consumption/{id}', [PastAlcoholConsumptionController::class, 'update']);
Route::delete('delete-alcohol-consumption/{id}',[PastAlcoholConsumptionController::class,'destroy']);

Route::get('patients-additional-dropdown',[PatientsController::class, 'patients_additional_dropdown']);
Route::get('/patients-family-social/{id}', [PatientsController::class, 'patients_family_social']);
Route::post('/add-family-details/{id}', [PatientsController::class, 'Add_family_details']);
Route::post('/update-family-details/{id}', [PatientsController::class, 'Update_family_details']);

// occupational-hazards
Route::get('/occupational-hazards',[OccupationalHazardsController::class,'index']);
Route::post('save-occupational-hazards',[OccupationalHazardsController::class,'store']);
Route::get('/edit-occupational-hazards/{id}', [OccupationalHazardsController::class, 'edit']);
Route::put('/update-occupational-hazards/{id}', [OccupationalHazardsController::class, 'update']);
Route::delete('delete-occupational-hazards/{id}',[OccupationalHazardsController::class,'destroy']);

// smoking-history
Route::get('/smoking-histories',[CurrentSmokingHistoryController::class,'index']);
Route::post('save-smoking-histories',[CurrentSmokingHistoryController::class,'store']);
Route::get('/edit-smoking-histories/{id}', [CurrentSmokingHistoryController::class, 'edit']);
Route::put('/update-smoking-histories/{id}', [CurrentSmokingHistoryController::class, 'update']);
Route::delete('delete-smoking-histories/{id}',[CurrentSmokingHistoryController::class,'destroy']);

// smoking-history
Route::get('/tobacco-type',[TobaccoTypeController::class,'index']);
Route::post('save-tobacco-type',[TobaccoTypeController::class,'store']);
Route::get('/edit-tobacco-type/{id}', [TobaccoTypeController::class, 'edit']);
Route::put('/update-tobacco-type/{id}', [TobaccoTypeController::class, 'update']);
Route::delete('delete-tobacco-type/{id}',[TobaccoTypeController::class,'destroy']);

// diagnosis start
Route::get('/diagnosis-action', [DiagnosisActionController::class, 'index']);
Route::post('/add-diagnosis-action', [DiagnosisActionController::class, 'store']);
Route::get('/edit-diagnosis-action/{id}', [DiagnosisActionController::class, 'edit']);
Route::put('/update-diagnosis-action/{id}', [DiagnosisActionController::class, 'update']);
Route::delete('delete-diagnosis-action/{id}',[DiagnosisActionController::class,'destroy']);
// diagnosis end

//Generic Name
Route::get('/generic-name', [DrugNameController::class, 'Generic']);
Route::post('/add-generic-name', [DrugNameController::class, 'Generic_store']);
Route::get('/edit-generic-name/{id}', [DrugNameController::class, 'Generic_edit']);
Route::put('/update-generic-name/{id}', [DrugNameController::class, 'Generic_update']);
Route::delete('/delete-generic-name/{id}',[DrugNameController::class,'Generic_destroy']);

//Get Medicen By Generic Name
Route::get('/drugs-by-generic/{id}', [DrugNameController::class, 'drugs_by_generic']);
Route::get('/search-drug/{name}', [DrugNameController::class, 'search_drug']);
Route::get('/search-drug-asc/{name}', [DrugNameController::class, 'search_drug_Asc_desc']);


Route::get('/drugs-of-mims', [DrugNameController::class, 'drugs_of_mims']);


//drug name start
Route::get('/drug-name', [DrugNameController::class, 'index']);
Route::post('/add-drug-name', [DrugNameController::class, 'store']);
Route::get('/edit-drug-name/{id}', [DrugNameController::class, 'edit']);
Route::put('/update-drug-name/{id}', [DrugNameController::class, 'update']);
Route::delete('delete-drug-name/{id}',[DrugNameController::class,'destroy']);


Route::post('/fav-dug-update/{id}', [DrugNameController::class, 'fav_dug_update']);
Route::get('/fav-drug', [DrugNameController::class, 'fav_drug']);

//drug name end

//drug unit start
Route::get('/drug-unit', [DrugUnitController::class, 'index']);
Route::post('/add-drug-unit', [DrugUnitController::class, 'store']);
Route::get('/edit-drug-unit/{id}', [DrugUnitController::class, 'edit']);
Route::put('/update-drug-unit/{id}', [DrugUnitController::class, 'update']);
Route::delete('delete-drug-unit/{id}',[DrugUnitController::class,'destroy']);
//drug unit start

//route name start
Route::get('/route-name', [RouteNameController::class, 'index']);
Route::post('/add-route-name', [RouteNameController::class, 'store']);
Route::get('/edit-route-name/{id}', [RouteNameController::class, 'edit']);
Route::put('/update-route-name/{id}', [RouteNameController::class, 'update']);
Route::delete('delete-route-name/{id}',[RouteNameController::class,'destroy']);
//route name end


//dose name start
Route::get('/dose-name', [DoseNameController::class, 'index']);
Route::post('/add-dose-name', [DoseNameController::class, 'store']);
Route::get('/edit-dose-name/{id}', [DoseNameController::class, 'edit']);
Route::put('/update-dose-name/{id}', [DoseNameController::class, 'update']);
Route::delete('delete-dose-name/{id}',[DoseNameController::class,'destroy']);
//dose name end

//frequency name start
Route::get('/frequency-name', [FrequencyNameController::class, 'index']);
Route::post('/add-frequency-name', [FrequencyNameController::class, 'store']);
Route::get('/edit-frequency-name/{id}', [FrequencyNameController::class, 'edit']);
Route::put('/update-frequency-name/{id}', [FrequencyNameController::class, 'update']);
Route::delete('delete-frequency-name/{id}',[FrequencyNameController::class,'destroy']);
//frequency name end

//procedure name start
Route::get('/procedure-name', [ProcedureNameController::class, 'index']);
Route::post('/add-procedure-name', [ProcedureNameController::class, 'store']);
Route::get('/edit-procedure-name/{id}', [ProcedureNameController::class, 'edit']);
Route::put('/update-procedure-name/{id}', [ProcedureNameController::class, 'update']);
Route::delete('delete-procedure-name/{id}',[ProcedureNameController::class,'destroy']);
//procedure name end

//doctor fee name start
Route::get('/doctorFeeName', [DoctorFeeNameController::class, 'index']);
Route::post('/save-doctorFeeName', [DoctorFeeNameController::class, 'store']);
Route::get('/edit-doctorFeeName/{id}', [DoctorFeeNameController::class, 'edit']);
Route::put('/update-doctorFeeName/{id}', [DoctorFeeNameController::class, 'update']);
Route::delete('delete-doctorFeeName/{id}',[DoctorFeeNameController::class,'destroy']);

//doctor fee name end



//procedure fee start

Route::get('/procedure-dropdown',[ProcedureFeeController::class, 'procedure_dropdown']);
Route::get('/procedureFee',[ProcedureFeeController::class, 'index']);
Route::post('/save-procedureFee',[ProcedureFeeController::class, 'store']);
Route::get('/edit-procedureFee/{id}',[ProcedureFeeController::class, 'edit']);
Route::post('/update-procedureFee/{id}',[ProcedureFeeController::class, 'update']);
Route::delete('/delete-procedureFee/{id}',[ProcedureFeeController::class, 'destroy']);


//procedure fee by id
Route::get('/subProcedureById/{id}',[ProcedureFeeController::class,'subProcedureById']);



//food name start
Route::get('/food-name', [FoodNameController::class, 'index']);
Route::post('/add-food-name', [FoodNameController::class, 'store']);
Route::get('/edit-food-name/{id}', [FoodNameController::class, 'edit']);
Route::put('/update-food-name/{id}', [FoodNameController::class, 'update']);
Route::delete('delete-food-name/{id}',[FoodNameController::class,'destroy']);
//food name end

//others name start
Route::get('/others-name', [OthersNameController::class, 'index']);
Route::post('/add-others-name', [OthersNameController::class, 'store']);
Route::get('/edit-others-name/{id}', [OthersNameController::class, 'edit']);
Route::put('/update-others-name/{id}', [OthersNameController::class, 'update']);
Route::delete('delete-others-name/{id}',[OthersNameController::class,'destroy']);
//others name end

// tobacco-cost
Route::get('/tobacco-cost',[TobaccoCostAmountController::class,'index']);
Route::post('save-tobacco-cost',[TobaccoCostAmountController::class,'store']);
Route::get('/edit-tobacco-cost/{id}', [TobaccoCostAmountController::class, 'edit']);
Route::put('/update-tobacco-cost/{id}', [TobaccoCostAmountController::class, 'update']);
Route::delete('delete-tobacco-cost/{id}',[TobaccoCostAmountController::class,'destroy']);

// advice-suggestion
Route::get('/advice-suggestion',[AdviceSuggestionController::class,'index']);
Route::post('save-advice-suggestion',[AdviceSuggestionController::class,'store']);
Route::get('/edit-advice-suggestion/{id}', [AdviceSuggestionController::class, 'edit']);
Route::put('/update-advice-suggestion/{id}', [AdviceSuggestionController::class, 'update']);
Route::delete('delete-advice-suggestion/{id}',[AdviceSuggestionController::class,'destroy']);

// appointment-length
Route::get('/appointment-lengths',[AppointmentLengthController::class,'index']);
Route::post('save-appointment-lengths',[AppointmentLengthController::class,'store']);
Route::get('/edit-appointment-lengths/{id}', [AppointmentLengthController::class, 'edit']);
Route::put('/update-appointment-lengths/{id}', [AppointmentLengthController::class, 'update']);
Route::delete('delete-appointment-lengths/{id}',[AppointmentLengthController::class,'destroy']);

// appointment-type
Route::get('/appointment-types',[AppointmentTypeController::class,'index']);
Route::post('save-appointment-types',[AppointmentTypeController::class,'store']);
Route::get('/edit-appointment-types/{id}', [AppointmentTypeController::class, 'edit']);
Route::put('/update-appointment-types/{id}', [AppointmentTypeController::class, 'update']);
Route::delete('delete-appointment-types/{id}',[AppointmentTypeController::class,'destroy']);

// department
// Route::get('/opreation-department',[DepartmentController::class,'opreation_department']);

Route::get('/department',[DepartmentController::class,'index']);
Route::post('save-department',[DepartmentController::class,'store']);
Route::get('/edit-department/{id}', [DepartmentController::class, 'edit']);
Route::put('/update-department/{id}', [DepartmentController::class, 'update']);
Route::delete('delete-department/{id}',[DepartmentController::class,'destroy']);

// blood-group
Route::get('/blood-group',[BloodGroupController::class,'index']);
Route::post('/save-blood-group',[BloodGroupController::class,'store']);
Route::get('/edit-blood-group/{id}', [BloodGroupController::class, 'edit']);
Route::put('/update-blood-group/{id}', [BloodGroupController::class, 'update']);
Route::delete('delete-blood-group/{id}',[BloodGroupController::class,'destroy']);

// vital-sign-unit
Route::get('/vital-unit',[VitalSignUnit::class,'index']);
Route::post('save-vital-unit',[VitalSignUnit::class,'store']);
Route::get('/edit-vital-unit/{id}', [VitalSignUnit::class, 'edit']);
Route::put('/update-vital-unit/{id}', [VitalSignUnit::class, 'update']);
Route::delete('delete-vital-unit/{id}',[VitalSignUnit::class,'destroy']);

// time-slots
Route::get('/time-slots',[TimeSlotsController::class,'index']);
Route::post('save-time-slots',[TimeSlotsController::class,'store']);
Route::get('/edit-time-slots/{id}', [TimeSlotsController::class, 'edit']);
Route::put('/update-time-slots/{id}', [TimeSlotsController::class, 'update']);
Route::delete('delete-time-slots/{id}',[TimeSlotsController::class,'destroy']);


//appointment status color

Route::get('get-appointment-status-color',[AppointmentStatusColorController::class,'index']);
Route::post('appointment-status-color',[AppointmentStatusColorController::class,'store']);
Route::get('edit-appointment-status-color/{id}',[AppointmentStatusColorController::class,'edit']);
Route::post('update-appointment-status-color/{id}',[AppointmentStatusColorController::class,'update']);


/////mobile api for doctor available times/////

Route::get('/getDoctorTime/{id}/{date}',[TimeSlotsController::class,'getDoctorTime']);




// time-limits
Route::get('/time-limits',[TimeLimitsController::class,'index']);
Route::post('save-time-limits',[TimeLimitsController::class,'store']);
Route::get('/edit-time-limits/{id}', [TimeLimitsController::class, 'edit']);
Route::put('/update-time-limits/{id}', [TimeLimitsController::class, 'update']);
Route::delete('delete-time-limits/{id}',[TimeLimitsController::class,'destroy']);

// examination
Route::get('/examination',[ExaminationController::class,'index']);
Route::post('save-examination',[ExaminationController::class,'store']);
Route::get('/edit-examination/{id}', [ExaminationController::class, 'edit']);
Route::post('/update-examination/{id}', [ExaminationController::class, 'update']);
Route::delete('delete-examination/{id}',[ExaminationController::class,'destroy']);

// history
Route::get('/history',[HistoryController::class,'index']);
Route::post('save-history',[HistoryController::class,'store']);
Route::get('/edit-history/{id}', [HistoryController::class, 'edit']);
Route::post('/update-history/{id}', [HistoryController::class, 'update']);
Route::delete('delete-history/{id}',[HistoryController::class,'destroy']);

// selection-parameter
Route::get('/selection-parameter',[ExamHistSelectParamController::class,'index']);
Route::post('save-selection-parameter',[ExamHistSelectParamController::class,'store']);
Route::get('/edit-selection-parameter/{id}', [ExamHistSelectParamController::class, 'edit']);
Route::post('/update-selection-parameter/{id}', [ExamHistSelectParamController::class, 'update']);
Route::delete('delete-selection-parameter/{id}',[ExamHistSelectParamController::class,'destroy']);

// history-extension
Route::get('/examhistext-dropdown',[ExamHistExtensionController::class,'examhistext_dropdown']);
Route::get('/history-extension',[ExamHistExtensionController::class,'index']);
Route::post('save-history-extension',[ExamHistExtensionController::class,'store']);
Route::get('/edit-history-extension/{id}', [ExamHistExtensionController::class, 'edit']);
Route::post('/update-history-extension/{id}', [ExamHistExtensionController::class, 'update']);
Route::delete('delete-history-extension/{id}',[ExamHistExtensionController::class,'destroy']);

// specialist
Route::get('department-dropdown',[SpecialistController::class,'department_dropdown']);
Route::get('/specialist',[SpecialistController::class,'index']);
Route::post('save-specialist',[SpecialistController::class,'store']);
Route::get('/edit-specialist/{id}', [SpecialistController::class, 'edit']);
Route::put('/update-specialist/{id}', [SpecialistController::class, 'update']);
Route::delete('delete-specialist/{id}',[SpecialistController::class,'destroy']);

// carotid
Route::get('/carotid',[CarotidController::class,'index']);
Route::post('save-carotid',[CarotidController::class,'store']);
Route::get('/edit-carotid/{id}', [CarotidController::class, 'edit']);
Route::post('/update-carotid/{id}', [CarotidController::class, 'update']);
Route::delete('delete-carotid/{id}',[CarotidController::class,'destroy']);

// carotid
Route::get('/user-type',[UserTypeController::class,'index']);
Route::post('save-user-type',[UserTypeController::class,'store']);
Route::get('/edit-user-type/{id}', [UserTypeController::class, 'edit']);
Route::post('/update-user-type/{id}', [UserTypeController::class, 'update']);
Route::delete('delete-user-type/{id}',[UserTypeController::class,'destroy']);

// media type
Route::get('/media-type',[MediaTypeController::class,'index']);
Route::post('save-media-type',[MediaTypeController::class,'store']);
Route::get('/edit-media-type/{id}', [MediaTypeController::class, 'edit']);
Route::post('/update-media-type/{id}', [MediaTypeController::class, 'update']);
Route::delete('delete-media-type/{id}',[MediaTypeController::class,'destroy']);


// carotid
Route::get('/selection-criteria',[SelectionCriteriaController::class,'index']);
Route::post('save-selection-criteria',[SelectionCriteriaController::class,'store']);
Route::get('/edit-selection-criteria/{id}', [SelectionCriteriaController::class, 'edit']);
Route::post('/update-selection-criteria/{id}', [SelectionCriteriaController::class, 'update']);
Route::delete('delete-selection-criteria/{id}',[SelectionCriteriaController::class,'destroy']);

// exam-history-mapping
Route::get('/exam-history-mapping',[ExamHistoryMappingController::class,'index']);
Route::post('save-exam-history-mapping',[ExamHistoryMappingController::class,'store']);
Route::get('/edit-exam-history-mapping/{id}', [ExamHistoryMappingController::class, 'edit']);
Route::post('/update-exam-history-mapping/{id}', [ExamHistoryMappingController::class, 'update']);
Route::delete('delete-exam-history-mapping/{id}',[ExamHistoryMappingController::class,'destroy']);

// apex_beat
Route::get('/apex-beat',[ApexBeatController::class,'index']);
Route::post('save-apex-beat',[ApexBeatController::class,'store']);
Route::get('/edit-apex-beat/{id}', [ApexBeatController::class, 'edit']);
Route::post('/update-apex-beat/{id}', [ApexBeatController::class, 'update']);
Route::delete('delete-apex-beat/{id}',[ApexBeatController::class,'destroy']);
Route::get('selection-criteria-dropdown',[ApexBeatController::class,'selection_criteria_dropdown']);

// intercostal_space
Route::get('/intercostal-space',[IntercostalSpaceController::class,'index']);
Route::post('save-intercostal-space',[IntercostalSpaceController::class,'store']);
Route::get('/edit-intercostal-space/{id}', [IntercostalSpaceController::class, 'edit']);
Route::post('/update-intercostal-space/{id}', [IntercostalSpaceController::class, 'update']);
Route::delete('delete-intercostal-space/{id}',[IntercostalSpaceController::class,'destroy']);
Route::get('selection-criteria-dropdown',[IntercostalSpaceController::class,'selection_criteria_dropdown']);



//heart-sound

Route::get('/examination-status-dropdown',[HeartSoundController::class, 'examination_dropdown']);
Route::get('/heartSound',[HeartSoundController::class, 'index']);
Route::post('/save-heartSound',[HeartSoundController::class, 'store']);
Route::get('/edit-heartSound/{id}',[HeartSoundController::class, 'edit']);
Route::post('/update-heartSound/{id}',[HeartSoundController::class, 'update']);
Route::delete('/delete-heartSound/{id}',[HeartSoundController::class, 'destroy']);
Route::get('/heartSound-status',[HeartSoundController::class, 'examination_dropdown']);



//volume

Route::get('/examination-status-dropdown',[VolumeController::class, 'examination_dropdown']);
Route::get('/volume',[VolumeController::class, 'index']);
Route::post('/save-volume',[VolumeController::class, 'store']);
Route::get('/edit-volume/{id}',[VolumeController::class, 'edit']);
Route::post('/update-volume/{id}',[VolumeController::class, 'update']);
Route::delete('/delete-volume/{id}',[VolumeController::class, 'destroy']);
Route::get('/volume-status',[VolumeController::class, 'examination_dropdown']);

//rediation 

Route::get('/examination-status-dropdown',[RediationController::class, 'examination_dropdown']);
Route::get('/rediation',[RediationController::class, 'index']);
Route::post('/save-rediation',[RediationController::class, 'store']);
Route::get('/edit-rediation/{id}',[RediationController::class, 'edit']);
Route::post('/update-rediation/{id}',[RediationController::class, 'update']);
Route::delete('/delete-rediation/{id}',[RediationController::class, 'destroy']);
Route::get('/rediation-status',[RediationController::class, 'examination_dropdown']);

//murmur 

Route::get('/examination-status-dropdown',[MurmurController::class, 'examination_dropdown']);
Route::get('/murmur',[MurmurController::class, 'index']);
Route::post('/save-murmur',[MurmurController::class, 'store']);
Route::get('/edit-murmur/{id}',[MurmurController::class, 'edit']);
Route::post('/update-murmur/{id}',[MurmurController::class, 'update']);
Route::delete('/delete-murmur/{id}',[MurmurController::class, 'destroy']);
Route::get('/murmur-status',[MurmurController::class, 'examination_dropdown']);

//others 

Route::get('/examination-status-dropdown',[OthersController::class, 'examination_dropdown']);
Route::get('/others',[OthersController::class, 'index']);
Route::post('/save-others',[OthersController::class, 'store']);
Route::get('/edit-others/{id}',[OthersController::class, 'edit']);
Route::post('/update-others/{id}',[OthersController::class, 'update']);
Route::delete('/delete-others/{id}',[OthersController::class, 'destroy']);
Route::get('/others-status',[OthersController::class, 'examination_dropdown']);

// DiagnosisProcedure
Route::get('/diagnosis-procedure',[MhpDiagnosisProcedureController::class, 'index']);

Route::get('/diagnosis-procedure-reason/{type}',[MhpDiagnosisProcedureController::class, 'dia_pro_reason']);


Route::post('/save-diagnosis-procedure',[MhpDiagnosisProcedureController::class, 'store']);
Route::get('/edit-diagnosis-procedure/{id}',[MhpDiagnosisProcedureController::class, 'edit']);
Route::post('/update-diagnosis-procedure/{id}',[MhpDiagnosisProcedureController::class, 'update']);
Route::delete('/delete-diagnosis-procedure/{id}',[MhpDiagnosisProcedureController::class, 'destroy']);

// DiagnosisProcedureFor
Route::get('/diagnosis-procedure-for',[MhpDiagnosisProcedureForController::class, 'index']);
Route::get('/diagnosis-procedure-reason-for/{type}',[MhpDiagnosisProcedureForController::class, 'dia_pro_reason_for']);

Route::post('/save-diagnosis-procedure-for',[MhpDiagnosisProcedureForController::class, 'store']);
Route::get('/edit-diagnosis-procedure-for/{id}',[MhpDiagnosisProcedureForController::class, 'edit']);
Route::post('/update-diagnosis-procedure-for/{id}',[MhpDiagnosisProcedureForController::class, 'update']);
Route::delete('/delete-diagnosis-procedure-for/{id}',[MhpDiagnosisProcedureForController::class, 'destroy']);

// DiagnosisProcedureActions
Route::get('/diagnosis-procedure-actions',[MhpDiagnosisProcedureActionsController::class, 'index']);
Route::get('/diagnosis-procedure-reason-action/{type}',[MhpDiagnosisProcedureActionsController::class, 'dia_pro_reason_action']);
Route::post('/save-diagnosis-procedure-actions',[MhpDiagnosisProcedureActionsController::class, 'store']);
Route::get('/edit-diagnosis-procedure-actions/{id}',[MhpDiagnosisProcedureActionsController::class, 'edit']);
Route::post('/update-diagnosis-procedure-actions/{id}',[MhpDiagnosisProcedureActionsController::class, 'update']);
Route::delete('/delete-diagnosis-procedure-actions/{id}',[MhpDiagnosisProcedureActionsController::class, 'destroy']);

// AutoFill
Route::get('/auto-fill',[MhpAutoFillController::class, 'index']);
Route::post('/save-auto-fill',[MhpAutoFillController::class, 'store']);
Route::get('/edit-auto-fill/{id}',[MhpAutoFillController::class, 'edit']);
Route::post('/update-auto-fill/{id}',[MhpAutoFillController::class, 'update']);
Route::delete('/delete-auto-fill/{id}',[MhpAutoFillController::class, 'destroy']);

Route::get('/autofill/{id}',[MhpAutoFillController::class, 'autoFillById']);


Route::get('timeslots-dropdown',[DocTimeSlotsController::class,'timeslots_dropdown']);
Route::get('exam-history-dropdown',[ExamHistoryMappingController::class,'exam_history_dropdown']);
//patients

//Route::get('save-patient',[PatientsController::class,'save_patient']);

Route::get('/patients',[PatientsController::class,'index']);
Route::post('save-patients',[PatientsController::class,'store']);
Route::get('/edit-patients/{id}', [PatientsController::class, 'edit']);
Route::post('/update-patients/{id}', [PatientsController::class, 'update']);
Route::post('/update-patients-lactation/{id}', [PatientsController::class, 'lactation_update']);
Route::delete('delete-patients/{id}',[PatientsController::class,'destroy']);
Route::get('patient-search/{name}',[PatientsController::class,'search']);
Route::get('patient-search-by-id/{id}',[PatientsController::class,'search_by_id']);
Route::post('/patient-search-by-phone-or-hin/{id}',[PatientsController::class,'search_by_phone_or_hin']);



Route::get('/doctors',[DoctorsController::class,'index']);
Route::post('save-doctors',[DoctorsController::class,'store']);

Route::post('save-doctors-academic',[DoctorsController::class,'academic']);
Route::post('save-doctors-certificate',[DoctorsController::class,'certificate']);
Route::post('save-doctors-tarinnig',[DoctorsController::class,'tarinnig']);
Route::post('save-doctors-work',[DoctorsController::class,'work']);



//get doctor acadamic info,licesne by doctor-id

Route::get('/doctor-academic-info/{docId}',[DoctorsController::class,'doctorAcademicInfo']);
Route::get('/doctor-license-training/{docId}',[DoctorsController::class,'doctorLicenseTrainingInfo']);
Route::get('/doctor-work-experience/{docId}',[DoctorsController::class,'doctorWorkExperience']);
Route::get('/doctor-certificate/{docId}',[DoctorsController::class,'doctorCertificate']);





Route::get('/edit-doctors/{id}', [DoctorsController::class, 'edit']);
Route::post('/update-doctors/{id}', [DoctorsController::class, 'update']);
Route::delete('delete-doctors/{id}',[DoctorsController::class,'destroy']);



//Update
Route::post('/update-doctors-academic/{id}', [DoctorsController::class, 'AcademicUpdate']);
Route::post('/update-doctors-certificate/{id}', [DoctorsController::class, 'CetificateUpdate']);
Route::post('/update-doctors-trainig/{id}', [DoctorsController::class, 'trainingUpdate']);
Route::post('/update-doctors-work/{id}', [DoctorsController::class, 'workUpdate']);

//Destroy
Route::delete('/destroy-doctors-academic/{id}', [DoctorsController::class, 'AcademicDestroy']);
Route::delete('/destroy-doctors-certificate/{id}', [DoctorsController::class, 'CetificateDestroy']);
Route::delete('/destroy-doctors-trainig/{id}', [DoctorsController::class, 'trainingDestroy']);
Route::delete('/destroy-doctors-work/{id}', [DoctorsController::class, 'workDestroy']);


//GreatDoc Controller
Route::post('/save-dugs-details',[MhpGreateDocController::class,'storeDrugs']);
Route::get('/get-pescriped-dugs/{id}',[MhpGreateDocController::class,'pescriped_dugs']);
Route::get('/past-dugs-history/{id}',[MhpGreateDocController::class,'past_dugs']);
Route::put('/current-to-past-rx/{id}',[MhpGreateDocController::class,'update_dugs_to_past']);
Route::put('/past-to-current-rx/{id}',[MhpGreateDocController::class,'update_dugs_to_current']);



Route::post('/save-prescription',[MhpGreateDocController::class,'store_prescription']);
Route::get('/get-prescription-details/{name}',[MhpGreateDocController::class,'prescription_details']);

Route::post('/save-prescription-name',[MhpGreateDocController::class,'store_prescription_name']);
Route::get('/get-prescription-name/{id}',[MhpGreateDocController::class,'prescription_name']);

//past history
Route::get('/past-history/{id}',[MhpGreateDocController::class,'past_history']);
Route::post('/past-history-save',[MhpGreateDocController::class,'past_history_store']);
Route::get("/past-history-edit/{id}", [MhpGreateDocController::class, 'past_history_edit']);
Route::delete('/past-history-delete/{id}',[MhpGreateDocController::class,'past_history_delete']);
Route::post('/past-history-update/{id}',[MhpGreateDocController::class,'past_history_update']);

// Pregnancy history
Route::get('/pregnancy-history/{id}',[MhpGreateDocController::class,'pregnancy']);
Route::post('/add-pregnancy-history',[MhpGreateDocController::class,'save_pregnancy']);
Route::get("/pregnancy-history-edit/{id}", [MhpGreateDocController::class, 'pregnancy_edit']);
Route::delete('/pregnancy-history-delete/{id}',[MhpGreateDocController::class,'pregnancy_delete']);
Route::post('/pregnancy-history-update/{id}',[MhpGreateDocController::class,'pregnancy_update']);

//ischaemic risk factor
Route::get('/ischaemic-risk-factor', [MhpIschaemicRiskFactorController::class,'index']);
Route::post('/add-ischaemic-risk-factor', [MhpIschaemicRiskFactorController::class,'store']);
Route::delete('/delete-ischaemic-risk-factor/{id}', [MhpIschaemicRiskFactorController::class,'destroy']);
Route::get('/edit-ischaemic-risk-factor/{id}', [MhpIschaemicRiskFactorController::class,'edit']);
Route::post('/update-ischaemic-risk-factor/{id}', [MhpIschaemicRiskFactorController::class,'update']);

// Add contact 
Route::get("/all-contact", [MhpGreateDocController::class, 'allContact']);
Route::delete('/delete-contact/{id}',[MhpGreateDocController::class,'deleteContact']);
Route::post('/add-contact',[MhpGreateDocController::class,'saveContact']);

//add medicine reaction 
Route::get('/added-reaction/{id}',[MhpGreateDocController::class,'index']);
Route::post('/add-reaction-save',[MhpGreateDocController::class,'store']);
Route::delete('/added-allergy-delete/{id}',[MhpGreateDocController::class,'destroy']);

//add medicine reaction 
Route::get('/institutions',[MhpInstitutionController::class,'index']);
Route::post('/institutions-save',[MhpInstitutionController::class,'store']);
Route::delete('/institutions-delete/{id}',[MhpInstitutionController::class,'destroy']);
Route::get('/institutions-edit/{id}',[MhpInstitutionController::class,'edit']);
Route::post('/institutions-update/{id}',[MhpInstitutionController::class,'update']);



//Employee

Route::get('/employee',[MhpEmployeeController::class,'index']);
Route::get('/all-nurses',[MhpEmployeeController::class,'nurse']);
Route::post('/save-employee',[MhpEmployeeController::class,'store']);

Route::post('save-employee-academic',[MhpEmployeeController::class,'academic']);
Route::post('save-employee-certificate',[MhpEmployeeController::class,'certificate']);
Route::post('save-employee-tarinnig',[MhpEmployeeController::class,'tarinnig']);
Route::post('save-employee-work',[MhpEmployeeController::class,'work']);

Route::delete('delete-employee/{id}',[MhpEmployeeController::class,'destroy']);

Route::get('employee-profile/{id}',[MhpEmployeeController::class,'employee_profile']);

Route::get('/edit-employee/{id}', [MhpEmployeeController::class, 'edit']);
Route::post('/update-employee/{id}', [MhpEmployeeController::class, 'update']);

//Update
Route::post('/update-employee-academic/{id}', [MhpEmployeeController::class, 'AcademicUpdate']);
Route::post('/update-employee-certificate/{id}', [MhpEmployeeController::class, 'CetificateUpdate']);
Route::post('/update-employee-trainig/{id}', [MhpEmployeeController::class, 'trainingUpdate']);
Route::post('/update-employee-work/{id}', [MhpEmployeeController::class, 'workUpdate']);

//Destroy
Route::delete('/destroy-employee-academic/{id}', [MhpEmployeeController::class, 'AcademicDestroy']);
Route::delete('/destroy-employee-certificate/{id}', [MhpEmployeeController::class, 'CetificateDestroy']);
Route::delete('/destroy-employee-trainig/{id}', [MhpEmployeeController::class, 'trainingDestroy']);
Route::delete('/destroy-employee-work/{id}', [MhpEmployeeController::class, 'workDestroy']);




//doctor chambers all routes 

Route::get('/doctor-chamber-times/{doctorId}', [DoctorChamberController::class, 'index']);
Route::post('/save-doctor-chamber-times', [DoctorChamberController::class, 'store']);
Route::get('/get-doctor-name/{doctorId}', [DoctorChamberController::class, 'getDoctorName']);
Route::get('/get-chamber-name/{chamberId}', [DoctorChamberController::class, 'getChamberName']);
Route::get('/doctor-id/{doctorId}', [DoctorChamberController::class, 'doctorSearchById']);
Route::get('/doctor-chamber-all', [DoctorChamberController::class, 'allTimeSlots']);
Route::get('/edit-doctors-chamber/{id}', [DoctorChamberController::class, 'edit']);
Route::post('/update-doctors-chamber/{id}', [DoctorChamberController::class, 'update']);
Route::post('/delete-doctors-chamber/{id}', [DoctorChamberController::class, 'destroy']);



//lab module routes
Route::post('/save-lab-modules', [LabModuleController::class, 'store']);
Route::get('/lab-modules/{patientId}', [LabModuleController::class, 'labModuleSearchById']);
Route::get('/all-test-name-by-test-type-id/{testTypeId}', [LabModuleController::class, 'allTestNameSearchById']);
Route::post('/delete-lab-module/{id}', [LabModuleController::class, 'destroy']);
Route::get('/download-lab-module/{Id}', [LabModuleController::class, 'download_lab_file']);
Route::get('/doctor-inbox-lab-module/{id}', [LabModuleController::class, 'patientLabWithDoctor']);
Route::get('/doctor-inbox-lab-module-patients-report/{docId}/{patientId}', [LabModuleController::class, 'patientLabReport']);


//doctor inbox save data
Route::post('/save-doctor-inbox', [LabModuleController::class, 'saveDoctorInbox']);


//Search Docotrs
Route::get('doctor-search/{dept}',[DoctorsController::class,'doctor_search_by_dept']);
Route::get('doctor-search-id/{id}',[DoctorsController::class,'doctor_search_by_Id']);
Route::get('doctor-search-by-name/{name}',[DoctorsController::class,'doctor_search_by_name']);
Route::get('doctor-search/{dept}/{name}',[DoctorsController::class,'doctor_search']);
Route::get('doctor-search-by-multiple-name',[DoctorsController::class,'doctor_search_by_multiple_name']);

Route::get('/single-doctor/{doctorId}', [DoctorsController::class, 'singleDoctorById']);

Route::get('title-dropdown',[TitleController::class,'title_dropdown']);
Route::get('gender-dropdown',[BirthSexController::class,'gender_dropdown']);
Route::get('religion-dropdown',[ReligionController::class,'religion_dropdown']);
Route::get('ethnicity-dropdown',[EthnicityController::class, 'ethnicity_dropdown']);
Route::get('pstatus-dropdown',[StatusController::class, 'pstatus_dropdown']);
Route::get('city-dropdown',[CityController::class, 'city_dropdown']);
Route::get('visittype-dropdown',[VisitTypeController::class, 'visittype_dropdown']);



//billing
Route::get('billingPatient',[SchedulerController::class, 'billingPatient']);
Route::get('billingPatientSearch/{id}',[SchedulerController::class, 'billingPatientSearch']);

//add billing routes
Route::post('addBilling',[BillingController::class, 'store']);
Route::get('getBilling/{id}/{ivoiceNumber}',[BillingController::class, 'index']);
Route::get('edit-billing/{id}',[BillingController::class, 'edit']);
Route::post('update-billing/{id}',[BillingController::class, 'update']);
Route::post('/destroy-billing/{id}',[BillingController::class, 'destroy']);

Route::post('/save-invoice',[BillingController::class, 'save_invoice']);

Route::get('/get-all-billing',[BillingController::class, 'get_all_billing']);
 Route::get('/get-billing-invoice/{Id}',[BillingController::class, 'get_billing']);






//doctor fees dataasss  doctor fee with corrospendent data get

Route::get('/doctorFeesDatas/{doctorFeeId}/{doctorid}',[BillingController::class,'doctorFeesDatas']);

Route::get('/getdoctors-by-fee-name/{feeId}',[BillingController::class,'getdoctors_by_fee_name']);


//billling and payment routes

Route::post('addPayment',[PaymentController::class, 'store']);
Route::get('paymentget/{id}/{invoiceNumber}',[PaymentController::class, 'getAllPayment']);
Route::get('editPayment/{id}',[PaymentController::class, 'edit']);
Route::post('update-payment/{id}',[PaymentController::class, 'update']);
Route::post('/destroy-payment/{id}',[PaymentController::class, 'destroy']);
Route::get('/allPaymentAmount/{id}',[PaymentController::class, 'allPaymentAmount']);



####### Physical Activity Prescription #################
Route::post('/save-physical-activity-advice', [MhpPhysicalActivityAdviceController::class, 'store']);
Route::post('/save-physical-activity-aerobic-exercise', [MhpPhysicalActivityAdviceController::class, 'save__physical__aerobic__exercise']);
Route::post('/save-physical-activity-strength-building', [MhpPhysicalActivityAdviceController::class, 'save__physical__strength__building']);
Route::post('/save-physical-activity-endurance', [MhpPhysicalActivityAdviceController::class, 'save__physical__endurance']);

######## AntenatalVisits ##########
Route::post('/save-antenatal-visits', [MhpAntenatalVisitsController::class, 'store']);
Route::post('/save-antenatal-visits-bmi-target', [MhpAntenatalVisitsController::class, 'save__antenatal__visits__bmi__target']);


//CurrentExcerciseLevel
Route::get('/current-excercise-level',[MhpCurrentExcerciseLevelController::class, 'index']);
Route::post('/save-current-excercise-level',[MhpCurrentExcerciseLevelController::class, 'store']);
Route::get('/edit-current-excercise-level/{id}',[MhpCurrentExcerciseLevelController::class, 'edit']);
Route::post('/update-current-excercise-level/{id}',[MhpCurrentExcerciseLevelController::class, 'update']);
Route::delete('/delete-current-excercise-level/{id}',[MhpCurrentExcerciseLevelController::class, 'destroy']);

//AerobicExercise
Route::get('/aerobic-exercise',[MhpAerobicExerciseController::class, 'index']);
Route::post('/save-aerobic-exercise',[MhpAerobicExerciseController::class, 'store']);
Route::get('/edit-aerobic-exercise/{id}',[MhpAerobicExerciseController::class, 'edit']);
Route::post('/update-aerobic-exercise/{id}',[MhpAerobicExerciseController::class, 'update']);
Route::delete('/delete-aerobic-exercise/{id}',[MhpAerobicExerciseController::class, 'destroy']);

//StrengthBuilding
Route::get('/strength-building',[MhpStrengthBuildingController::class, 'index']);
Route::post('/save-strength-building',[MhpStrengthBuildingController::class, 'store']);
Route::get('/edit-strength-building/{id}',[MhpStrengthBuildingController::class, 'edit']);
Route::post('/update-strength-building/{id}',[MhpStrengthBuildingController::class, 'update']);
Route::delete('/delete-strength-building/{id}',[MhpStrengthBuildingController::class, 'destroy']);


//reminder reason

Route::get('/reminder-reason',[ReminderReasonController::class, 'index']);
Route::post('/save-reminder-reason',[ReminderReasonController::class, 'store']);
Route::get('/edit-reminder-reason/{id}',[ReminderReasonController::class, 'edit']);
Route::post('/update-reminder-reason/{id}',[ReminderReasonController::class, 'update']);
Route::delete('/delete-reminder-reason/{id}',[ReminderReasonController::class, 'destroy']);


//Endurance
Route::get('/endurance',[MhpEnduranceController::class, 'index']);
Route::post('/save-endurance',[MhpEnduranceController::class, 'store']);
Route::get('/edit-endurance/{id}',[MhpEnduranceController::class, 'edit']);
Route::post('/update-endurance/{id}',[MhpEnduranceController::class, 'update']);
Route::delete('/delete-endurance/{id}',[MhpEnduranceController::class, 'destroy']);

//FrequencyPhysical
Route::get('/frequency-physical',[MhpFrequencyPhysicalController::class, 'index']);
Route::post('/save-frequency-physical',[MhpFrequencyPhysicalController::class, 'store']);
Route::get('/edit-frequency-physical/{id}',[MhpFrequencyPhysicalController::class, 'edit']);
Route::post('/update-frequency-physical/{id}',[MhpFrequencyPhysicalController::class, 'update']);
Route::delete('/delete-frequency-physical/{id}',[MhpFrequencyPhysicalController::class, 'destroy']);



//Appointment Schedule
Route::post('save-scheduler',[SchedulerController::class,'save_scheduler']);
Route::post('update-scheduler/{id}',[SchedulerController::class,'update_shedule_data']);
Route::post('delete-scheduler/{id}',[SchedulerController::class,'delete_shedule_data']);
Route::get('scheduler',[SchedulerController::class, 'scheduler']);
Route::get('great-doc-today-patient-appointment/{docId}',[SchedulerController::class, 'GDPatientAppointmentToday']);
Route::get('great-doc-upcomming-patient-appointment/{docId}',[SchedulerController::class, 'GDPatientAppointmentUpcommig']);



//ear canal routes
Route::get('/ear-canal',[EarCanalController::class, 'index']);
Route::post('/save-canal',[EarCanalController::class, 'store']);
Route::get('/edit-canal/{id}',[EarCanalController::class, 'edit']);
Route::post('/update-canal/{id}',[EarCanalController::class, 'update']);
Route::delete('/delete-canal/{id}',[EarCanalController::class, 'destroy']);
Route::get('/ear-canal-status',[EarCanalController::class, 'getStatus']);

// carotid
Route::get('/history-exam-status',[HistoryExamStatusController::class,'index']);
Route::post('save-history-exam-status',[HistoryExamStatusController::class,'store']);
Route::get('/edit-history-exam-status/{id}', [HistoryExamStatusController::class, 'edit']);
Route::post('/update-history-exam-status/{id}', [HistoryExamStatusController::class, 'update']);
Route::delete('delete-history-exam-status/{id}',[HistoryExamStatusController::class,'destroy']);




//ear lesion routes
Route::get('/ear-lesion',[EarLesionController::class, 'index']);
Route::post('/save-ear-lesion',[EarLesionController::class, 'store']);
Route::get('/edit-ear-lesion/{id}',[EarLesionController::class, 'edit']);
Route::post('/update-ear-lesion/{id}',[EarLesionController::class, 'update']);
Route::delete('/delete-ear-lesion/{id}',[EarLesionController::class, 'destroy']);
Route::get('/ear-lesion-status',[EarLesionController::class, 'getStatus']);



//tympanic_membrane routes
Route::get('/tympanic',[TympanicMembraneController::class, 'index']);
Route::post('/save-tympanic',[TympanicMembraneController::class, 'store']);
Route::get('/edit-tympanic/{id}',[TympanicMembraneController::class, 'edit']);
Route::post('/update-tympanic/{id}',[TympanicMembraneController::class, 'update']);
Route::delete('/delete-tympanic/{id}',[TympanicMembraneController::class, 'destroy']);
Route::get('/tympanic-status',[TympanicMembraneController::class, 'getStatus']);


//mastoid

Route::get('/mastoid',[MastoidController::class, 'index']);
Route::post('/save-mastoid',[MastoidController::class, 'store']);
Route::get('/edit-mastoid/{id}',[MastoidController::class, 'edit']);
Route::post('/update-mastoid/{id}',[MastoidController::class, 'update']);
Route::delete('/delete-mastoid/{id}',[MastoidController::class, 'destroy']);
Route::get('/mastoid-status',[MastoidController::class, 'getStatus']);



//posterior

Route::get('/posterior',[PosteriorController::class, 'index']);
Route::post('/save-posterior',[PosteriorController::class, 'store']);
Route::get('/edit-posterior/{id}',[PosteriorController::class, 'edit']);
Route::post('/update-posterior/{id}',[PosteriorController::class, 'update']);
Route::delete('/delete-posterior/{id}',[PosteriorController::class, 'destroy']);
Route::get('/posterior-status',[PosteriorController::class, 'getStatus']);



//tunning-fork

Route::get('/tunning',[TunningForkController::class, 'index']);
Route::post('/save-tunning',[TunningForkController::class, 'store']);
Route::get('/edit-tunning/{id}',[TunningForkController::class, 'edit']);
Route::post('/update-tunning/{id}',[TunningForkController::class, 'update']);
Route::delete('/delete-tunning/{id}',[TunningForkController::class, 'destroy']);
Route::get('/tunning-status',[TunningForkController::class, 'getStatus']);


//weber-test

Route::get('/weber-test',[WeberTestController::class, 'index']);
Route::post('/save-weber-test',[WeberTestController::class, 'store']);
Route::get('/edit-weber-test/{id}',[WeberTestController::class, 'edit']);
Route::post('/update-weber-test/{id}',[WeberTestController::class, 'update']);
Route::delete('/delete-weber-test/{id}',[WeberTestController::class, 'destroy']);
Route::get('/weber-test-status',[WeberTestController::class, 'getStatus']);

//throat

Route::get('/throat',[ThroatController::class, 'index']);
Route::post('/save-throat',[ThroatController::class, 'store']);
Route::get('/edit-throat/{id}',[ThroatController::class, 'edit']);
Route::post('/update-throat/{id}',[ThroatController::class, 'update']);
Route::delete('/delete-throat/{id}',[ThroatController::class, 'destroy']);
Route::get('/throat-status',[ThroatController::class, 'getStatus']);


//tongue

Route::get('/tongue',[TongueController::class, 'index']);
Route::post('/save-tongue',[TongueController::class, 'store']);
Route::get('/edit-tongue/{id}',[TongueController::class, 'edit']);
Route::post('/update-tongue/{id}',[TongueController::class, 'update']);
Route::delete('/delete-tongue/{id}',[TongueController::class, 'destroy']);
Route::get('/tongue-status',[TongueController::class, 'getStatus']);



//tonsil

Route::get('/tonsil',[TonsilController::class, 'index']);
Route::post('/save-tonsil',[TonsilController::class, 'store']);
Route::get('/edit-tonsil/{id}',[TonsilController::class, 'edit']);
Route::post('/update-tonsil/{id}',[TonsilController::class, 'update']);
Route::delete('/delete-tonsil/{id}',[TonsilController::class, 'destroy']);
Route::get('/tonsil-status',[TonsilController::class, 'getStatus']);


//nose
Route::get('/nose',[NoseController::class, 'index']);
Route::post('/save-nose',[NoseController::class, 'store']);
Route::get('/edit-nose/{id}',[NoseController::class, 'edit']);
Route::post('/update-nose/{id}',[NoseController::class, 'update']);
Route::delete('/delete-nose/{id}',[NoseController::class, 'destroy']);
Route::get('/nose-status',[NoseController::class, 'getStatus']);


//ulser
Route::get('/ulser',[MhpUlserController::class, 'index']);
Route::post('/save-ulser',[MhpUlserController::class, 'store']);
Route::get('/edit-ulser/{id}',[MhpUlserController::class, 'edit']);
Route::post('/update-ulser/{id}',[MhpUlserController::class, 'update']);
Route::delete('/delete-ulser/{id}',[MhpUlserController::class, 'destroy']);



//tongue Lesion
Route::get('/tongueLesion',[TongueLesionController::class, 'index']);
Route::post('/save-tongueLesion',[TongueLesionController::class, 'store']);
Route::get('/edit-tongueLesion/{id}',[TongueLesionController::class, 'edit']);
Route::post('/update-tongueLesion/{id}',[TongueLesionController::class, 'update']);
Route::delete('/delete-tongueLesion/{id}',[TongueLesionController::class, 'destroy']);
Route::get('/tongueLesion-status',[TongueLesionController::class, 'getStatus']);

// Ear
Route::get('/ear',[MhpEarController::class, 'index']);
Route::post('/save-ear',[MhpEarController::class, 'store']);
Route::get('/edit-ear/{id}',[MhpEarController::class, 'edit']);
Route::post('/update-ear/{id}',[MhpEarController::class, 'update']);
Route::delete('/delete-ear/{id}',[MhpEarController::class, 'destroy']);

// Ear Discharge
Route::get('/ear-discharge',[MhpEarDischargeController::class, 'index']);
Route::post('/save-ear-discharge',[MhpEarDischargeController::class, 'store']);
Route::get('/edit-ear-discharge/{id}',[MhpEarDischargeController::class, 'edit']);
Route::post('/update-ear-discharge/{id}',[MhpEarDischargeController::class, 'update']);
Route::delete('/delete-ear-discharge/{id}',[MhpEarDischargeController::class, 'destroy']);


// Deafness
Route::get('/deafness',[MhpDeafnessController::class, 'index']);
Route::post('/save-deafness',[MhpDeafnessController::class, 'store']);
Route::get('/edit-deafness/{id}',[MhpDeafnessController::class, 'edit']);
Route::post('/update-deafness/{id}',[MhpDeafnessController::class, 'update']);
Route::delete('/delete-deafness/{id}',[MhpDeafnessController::class, 'destroy']);


// EntOthers
Route::get('/ent-others',[MhpEntOthersController::class, 'index']);
Route::post('/save-ent-others',[MhpEntOthersController::class, 'store']);
Route::get('/edit-ent-others/{id}',[MhpEntOthersController::class, 'edit']);
Route::post('/update-ent-others/{id}',[MhpEntOthersController::class, 'update']);
Route::delete('/delete-ent-others/{id}',[MhpEntOthersController::class, 'destroy']);


// RenneTest
Route::get('/renne-test',[MhpRenneTestController::class, 'index']);
Route::post('/save-renne-test',[MhpRenneTestController::class, 'store']);
Route::get('/edit-renne-test/{id}',[MhpRenneTestController::class, 'edit']);
Route::post('/update-renne-test/{id}',[MhpRenneTestController::class, 'update']);
Route::delete('/delete-renne-test/{id}',[MhpRenneTestController::class, 'destroy']);



//olfactory
Route::get('/examination-status-dropdown',[OlFactoryController::class, 'examination_dropdown']);
Route::get('/olfactory',[OlFactoryController::class, 'index']);
Route::post('/save-olfactory',[OlFactoryController::class, 'store']);
Route::get('/edit-olfactory/{id}',[OlFactoryController::class, 'edit']);
Route::post('/update-olfactory/{id}',[OlFactoryController::class, 'update']);
Route::delete('/delete-olfactory/{id}',[OlFactoryController::class, 'destroy']);
Route::get('/olfactory-status',[OlFactoryController::class, 'getStatus']);

//fundoscopy


Route::get('/examination-status-dropdown',[FundoscopyController::class, 'examination_dropdown']);
Route::get('/fundoscopy',[FundoscopyController::class, 'index']);
Route::post('/save-fundoscopy',[FundoscopyController::class, 'store']);
Route::get('/edit-fundoscopy/{id}',[FundoscopyController::class, 'edit']);
Route::post('/update-fundoscopy/{id}',[FundoscopyController::class, 'update']);
Route::delete('/delete-fundoscopy/{id}',[FundoscopyController::class, 'destroy']);
Route::get('/fundoscopy-status',[FundoscopyController::class, 'getStatus']);

//visual acuity


Route::get('/examination-status-dropdown',[VisualacuityController::class, 'examination_dropdown']);
Route::get('/visualacuity',[VisualacuityController::class, 'index']);
Route::post('/save-visualacuity',[VisualacuityController::class, 'store']);
Route::get('/edit-visualacuity/{id}',[VisualacuityController::class, 'edit']);
Route::post('/update-visualacuity/{id}',[VisualacuityController::class, 'update']);
Route::delete('/delete-visualacuity/{id}',[VisualacuityController::class, 'destroy']);
Route::get('/visualacuity-status',[VisualacuityController::class, 'getStatus']);


//visual field

Route::get('/examination-status-dropdown',[VisualfieldController::class, 'examination_dropdown']);
Route::get('/visualfield',[VisualfieldController::class, 'index']);
Route::post('/save-visualfield',[VisualfieldController::class, 'store']);
Route::get('/edit-visualfield/{id}',[VisualfieldController::class, 'edit']);
Route::post('/update-visualfield/{id}',[VisualfieldController::class, 'update']);
Route::delete('/delete-visualfield/{id}',[VisualfieldController::class, 'destroy']);
Route::get('/visualfield-status',[VisualfieldController::class, 'getStatus']);



//pappilary oedema

Route::get('/examination-status-dropdown',[PapillaryoedemaController::class, 'examination_dropdown']);
Route::get('/papillaryoedema',[PapillaryoedemaController::class, 'index']);
Route::post('/save-papillaryoedema',[PapillaryoedemaController::class, 'store']);
Route::get('/edit-papillaryoedema/{id}',[PapillaryoedemaController::class, 'edit']);
Route::post('/update-papillaryoedema/{id}',[PapillaryoedemaController::class, 'update']);
Route::delete('/delete-papillaryoedema/{id}',[PapillaryoedemaController::class, 'destroy']);
Route::get('/papillaryoedema-status',[PapillaryoedemaController::class, 'getStatus']);



//pupil

Route::get('/pupil',[PupilController::class, 'index']);
Route::post('/save-pupil',[PupilController::class, 'store']);
Route::get('/edit-pupil/{id}',[PupilController::class, 'edit']);
Route::post('/update-pupil/{id}',[PupilController::class, 'update']);
Route::delete('/delete-pupil/{id}',[PupilController::class, 'destroy']);
Route::get('/pupil-status',[PupilController::class, 'getStatus']);


//light reflex

Route::get('/examination-status-dropdown',[LightreflexController::class, 'examination_dropdown']);
Route::get('/lightreflex',[LightreflexController::class, 'index']);
Route::post('/save-lightreflex',[LightreflexController::class, 'store']);
Route::get('/edit-lightreflex/{id}',[LightreflexController::class, 'edit']);
Route::post('/update-lightreflex/{id}',[LightreflexController::class, 'update']);
Route::delete('/delete-lightreflex/{id}',[LightreflexController::class, 'destroy']);
Route::get('/lightreflex-status',[LightreflexController::class, 'getStatus']);




//eye-movements

Route::get('/examination-status-dropdown',[EyemovementsController::class, 'examination_dropdown']);
Route::get('/eyemovements',[EyemovementsController::class, 'index']);
Route::post('/save-eyemovements',[EyemovementsController::class, 'store']);
Route::get('/edit-eyemovements/{id}',[EyemovementsController::class, 'edit']);
Route::post('/update-eyemovements/{id}',[EyemovementsController::class, 'update']);
Route::delete('/delete-eyemovements/{id}',[EyemovementsController::class, 'destroy']);
Route::get('/eyemovements-status',[EyemovementsController::class, 'getStatus']);



//sensory

Route::get('/examination-status-dropdown',[SensoryController::class, 'examination_dropdown']);
Route::get('/sensory',[SensoryController::class, 'index']);
Route::post('/save-sensory',[SensoryController::class, 'store']);
Route::get('/edit-sensory/{id}',[SensoryController::class, 'edit']);
Route::post('/update-sensory/{id}',[SensoryController::class, 'update']);
Route::delete('/delete-sensory/{id}',[SensoryController::class, 'destroy']);
Route::get('/sensory-status',[SensoryController::class, 'getStatus']);



//jawjerk

Route::get('/examination-status-dropdown',[JawJerkController::class, 'examination_dropdown']);
Route::get('/jawjerk',[JawJerkController::class, 'index']);
Route::post('/save-jawjerk',[JawJerkController::class, 'store']);
Route::get('/edit-jawjerk/{id}',[JawJerkController::class, 'edit']);
Route::post('/update-jawjerk/{id}',[JawJerkController::class, 'update']);
Route::delete('/delete-jawjerk/{id}',[JawJerkController::class, 'destroy']);
Route::get('/jawjerk-status',[JawJerkController::class, 'getStatus']);


//looking up

Route::get('/examination-status-dropdown',[LookingUpController::class, 'examination_dropdown']);
Route::get('/lookingup',[LookingUpController::class, 'index']);
Route::post('/save-lookingup',[LookingUpController::class, 'store']);
Route::get('/edit-lookingup/{id}',[LookingUpController::class, 'edit']);
Route::post('/update-lookingup/{id}',[LookingUpController::class, 'update']);
Route::delete('/delete-lookingup/{id}',[LookingUpController::class, 'destroy']);
Route::get('/lookingup-status',[LookingUpController::class, 'getStatus']);



//drooping corner

Route::get('/examination-status-dropdown',[DroopingCornerController::class, 'examination_dropdown']);
Route::get('/droopingcorner',[DroopingCornerController::class, 'index']);
Route::post('/save-droopingcorner',[DroopingCornerController::class, 'store']);
Route::get('/edit-droopingcorner/{id}',[DroopingCornerController::class, 'edit']);
Route::post('/update-droopingcorner/{id}',[DroopingCornerController::class, 'update']);
Route::delete('/delete-droopingcorner/{id}',[DroopingCornerController::class, 'destroy']);
Route::get('/droopingcorner-status',[DroopingCornerController::class, 'examination_dropdown']);


//ear palate

Route::get('/examination-status-dropdown',[EarPalateController::class, 'examination_dropdown']);
Route::get('/earpalate',[EarPalateController::class, 'index']);
Route::post('/save-earpalate',[EarPalateController::class, 'store']);
Route::get('/edit-earpalate/{id}',[EarPalateController::class, 'edit']);
Route::post('/update-earpalate/{id}',[EarPalateController::class, 'update']);
Route::delete('/delete-earpalate/{id}',[EarPalateController::class, 'destroy']);
Route::get('/earpalate-status',[EarPalateController::class, 'examination_dropdown']);


//whisperTest

Route::get('/examination-status-dropdown',[WhisperTestController::class, 'examination_dropdown']);
Route::get('/whispertest',[WhisperTestController::class, 'index']);
Route::post('/save-whispertest',[WhisperTestController::class, 'store']);
Route::get('/edit-whispertest/{id}',[WhisperTestController::class, 'edit']);
Route::post('/update-whispertest/{id}',[WhisperTestController::class, 'update']);
Route::delete('/delete-whispertest/{id}',[WhisperTestController::class, 'destroy']);
Route::get('/whispertest-status',[WhisperTestController::class, 'examination_dropdown']);


//pinnesTest

Route::get('/examination-status-dropdown',[PinnesTestController::class, 'examination_dropdown']);
Route::get('/pinnestest',[PinnesTestController::class, 'index']);
Route::post('/save-pinnestest',[PinnesTestController::class, 'store']);
Route::get('/edit-pinnestest/{id}',[PinnesTestController::class, 'edit']);
Route::post('/update-pinnestest/{id}',[PinnesTestController::class, 'update']);
Route::delete('/delete-pinnestest/{id}',[PinnesTestController::class, 'destroy']);
Route::get('/pinnestest-status',[PinnesTestController::class, 'examination_dropdown']);



//hallpike

Route::get('/examination-status-dropdown',[HallpikeController::class, 'examination_dropdown']);
Route::get('/hallpike',[HallpikeController::class, 'index']);
Route::post('/save-hallpike',[hallpikeController::class, 'store']);
Route::get('/edit-hallpike/{id}',[hallpikeController::class, 'edit']);
Route::post('/update-hallpike/{id}',[hallpikeController::class, 'update']);
Route::delete('/delete-hallpike/{id}',[hallpikeController::class, 'destroy']);
Route::get('/hallpike-status',[hallpikeController::class, 'examination_dropdown']);


//Vital Sign Setup

//uvula

Route::get('/examination-status-dropdown',[UvulaController::class, 'examination_dropdown']);
Route::get('/uvula',[UvulaController::class, 'index']);
Route::post('/save-uvula',[UvulaController::class, 'store']);
Route::get('/edit-uvula/{id}',[UvulaController::class, 'edit']);
Route::post('/update-uvula/{id}',[UvulaController::class, 'update']);
Route::delete('/delete-uvula/{id}',[UvulaController::class, 'destroy']);
Route::get('/uvula-status',[UvulaController::class, 'examination_dropdown']);


//gas reflex

Route::get('/examination-status-dropdown',[GasReflexController::class, 'examination_dropdown']);
Route::get('/gasreflex',[GasReflexController::class, 'index']);
Route::post('/save-gasreflex',[GasReflexController::class, 'store']);
Route::get('/edit-gasreflex/{id}',[GasReflexController::class, 'edit']);
Route::post('/update-gasreflex/{id}',[GasReflexController::class, 'update']);
Route::delete('/delete-gasreflex/{id}',[GasReflexController::class, 'destroy']);
Route::get('/gasreflex-status',[GasReflexController::class, 'examination_dropdown']);

//NeckMovement

Route::get('/examination-status-dropdown',[NeckMovementController::class, 'examination_dropdown']);
Route::get('/neckmovement',[NeckMovementController::class, 'index']);
Route::post('/save-neckmovement',[NeckMovementController::class, 'store']);
Route::get('/edit-neckmovement/{id}',[NeckMovementController::class, 'edit']);
Route::post('/update-neckmovement/{id}',[NeckMovementController::class, 'update']);
Route::delete('/delete-neckmovement/{id}',[NeckMovementController::class, 'destroy']);
Route::get('/neckmovement-status',[NeckMovementController::class, 'examination_dropdown']);


//shruk shoulder

Route::get('/examination-status-dropdown',[ShrugShoulderController::class, 'examination_dropdown']);
Route::get('/shrugshoulder',[ShrugShoulderController::class, 'index']);
Route::post('/save-shrugshoulder',[ShrugShoulderController::class, 'store']);
Route::get('/edit-shrugshoulder/{id}',[ShrugShoulderController::class, 'edit']);
Route::post('/update-shrugshoulder/{id}',[ShrugShoulderController::class, 'update']);
Route::delete('/delete-shrugshoulder/{id}',[ShrugShoulderController::class, 'destroy']);
Route::get('/shrugshoulder-status',[ShrugShoulderController::class, 'examination_dropdown']);


//tasciculation

Route::get('/examination-status-dropdown',[TasciculationController::class, 'examination_dropdown']);
Route::get('/tasciculation',[TasciculationController::class, 'index']);
Route::post('/save-tasciculation',[TasciculationController::class, 'store']);
Route::get('/edit-tasciculation/{id}',[TasciculationController::class, 'edit']);
Route::post('/update-tasciculation/{id}',[TasciculationController::class, 'update']);
Route::delete('/delete-tasciculation/{id}',[TasciculationController::class, 'destroy']);
Route::get('/tasciculation-status',[TasciculationController::class, 'examination_dropdown']);


//sensation

Route::get('/examination-status-dropdown',[SensationController::class, 'examination_dropdown']);
Route::get('/sensation',[SensationController::class, 'index']);
Route::post('/save-sensation',[SensationController::class, 'store']);
Route::get('/edit-sensation/{id}',[SensationController::class, 'edit']);
Route::post('/update-sensation/{id}',[SensationController::class, 'update']);
Route::delete('/delete-sensation/{id}',[SensationController::class, 'destroy']);
Route::get('/sensation-status',[SensationController::class, 'examination_dropdown']);


//mood


Route::get('/examination-status-dropdown',[MoodController::class, 'examination_dropdown']);
Route::get('/mood',[MoodController::class, 'index']);
Route::post('/save-mood',[MoodController::class, 'store']);
Route::get('/edit-mood/{id}',[MoodController::class, 'edit']);
Route::post('/update-mood/{id}',[MoodController::class, 'update']);
Route::delete('/delete-mood/{id}',[MoodController::class, 'destroy']);
Route::get('/mood-status',[MoodController::class, 'examination_dropdown']);


//affect

Route::get('/examination-status-dropdown',[AffectController::class, 'examination_dropdown']);
Route::get('/affect',[AffectController::class, 'index']);
Route::post('/save-affect',[AffectController::class, 'store']);
Route::get('/edit-affect/{id}',[AffectController::class, 'edit']);
Route::post('/update-affect/{id}',[AffectController::class, 'update']);
Route::delete('/delete-affect/{id}',[AffectController::class, 'destroy']);
Route::get('/affect-status',[AffectController::class, 'examination_dropdown']);

//appropriteness

Route::get('/examination-status-dropdown',[AppropritenessController::class, 'examination_dropdown']);
Route::get('/appropriteness',[AppropritenessController::class, 'index']);
Route::post('/save-appropriteness',[AppropritenessController::class, 'store']);
Route::get('/edit-appropriteness/{id}',[AppropritenessController::class, 'edit']);
Route::post('/update-appropriteness/{id}',[AppropritenessController::class, 'update']);
Route::delete('/delete-appropriteness/{id}',[AppropritenessController::class, 'destroy']);
Route::get('/appropriteness-status',[AppropritenessController::class, 'examination_dropdown']);


//AttituteTowardsController

Route::get('/examination-status-dropdown',[AttituteTowardsController::class, 'examination_dropdown']);
Route::get('/attitute',[AttituteTowardsController::class, 'index']);
Route::post('/save-attitute',[AttituteTowardsController::class, 'store']);
Route::get('/edit-attitute/{id}',[AttituteTowardsController::class, 'edit']);
Route::post('/update-attitute/{id}',[AttituteTowardsController::class, 'update']);
Route::delete('/delete-attitute/{id}',[AttituteTowardsController::class, 'destroy']);
Route::get('/attitute-status',[AttituteTowardsController::class, 'examination_dropdown']);

//speechController

Route::get('/examination-status-dropdown',[SpeechController::class, 'examination_dropdown']);
Route::get('/speech',[SpeechController::class, 'index']);
Route::post('/save-speech',[SpeechController::class, 'store']);
Route::get('/edit-speech/{id}',[SpeechController::class, 'edit']);
Route::post('/update-speech/{id}',[SpeechController::class, 'update']);
Route::delete('/delete-speech/{id}',[SpeechController::class, 'destroy']);
Route::get('/speech-status',[SpeechController::class, 'examination_dropdown']);


//cns tongue
Route::get('/examination-status-dropdown',[CnsTongueController::class, 'examination_dropdown']);
Route::get('/cnstongue',[CnsTongueController::class, 'index']);
Route::post('/save-cnstongue',[CnsTongueController::class, 'store']);
Route::get('/edit-cnstongue/{id}',[CnsTongueController::class, 'edit']);
Route::post('/update-cnstongue/{id}',[CnsTongueController::class, 'update']);
Route::delete('/delete-cnstongue/{id}',[CnsTongueController::class, 'destroy']);
Route::get('/cnstongue-status',[CnsTongueController::class, 'examination_dropdown']);

//Allergy Sign
Route::post('/save-vital-sign',[MhpVitalSignController::class, 'store']);
Route::get('/vital-sign',[MhpVitalSignController::class, 'index']);
Route::get('/get-vital-sign-by-id/{id}',[MhpVitalSignController::class, 'getVitalValue']);
Route::post('/update-vital-sign/{id}',[MhpVitalSignController::class, 'update']);
Route::delete('/delete-vital-sign/{id}',[MhpVitalSignController::class, 'destroy']);
Route::get('/vital-sign-patient',[MhpVitalSignController::class, 'vital_patient']);

//Allergy Setup

Route::post('/save-allergy',[MhpAllergyController::class, 'store']);
Route::get('/allergy',[MhpAllergyController::class, 'index']);
Route::post('/update-allergy/{id}',[MhpAllergyController::class, 'update']);
Route::delete('/delete-allergy/{id}',[MhpAllergyController::class, 'destroy']);
Route::get('/allergy-patient',[MhpAllergyController::class, 'vital_patient']);

Route::post('/save-allergy-patient',[MhpAllergyController::class, 'save_allergy_patient']);

//Patient Vital Sign

Route::post('/save-vital-sign-patient',[MhpPatientsVitalSignController::class, 'store']);
Route::get('/get-todays-vital-sign-patient/{id}',[MhpPatientsVitalSignController::class, 'getTodaysVitalSign']);
Route::delete('/delete-vital-sign-patient/{id}',[MhpPatientsVitalSignController::class, 'deletePatientVital']);
Route::get('/edit-vital-sign-patient/{id}',[MhpPatientsVitalSignController::class, 'editPatientVital']);
Route::post('/update-vital-sign-patient/{id}',[MhpPatientsVitalSignController::class, 'updatePatientVital']);



//////////mobile api for vital signs ///////  get vital signs by patient id 




//perceptual disturbances

Route::get('/examination-status-dropdown',[PerceptualController::class, 'examination_dropdown']);
Route::get('/perceptual',[PerceptualController::class, 'index']);
Route::post('/save-perceptual',[PerceptualController::class, 'store']);
Route::get('/edit-perceptual/{id}',[PerceptualController::class, 'edit']);
Route::post('/update-perceptual/{id}',[PerceptualController::class, 'update']);
Route::delete('/delete-perceptual/{id}',[PerceptualController::class, 'destroy']);
Route::get('/perceptual-status',[PerceptualController::class, 'examination_dropdown']);


//chest shape

Route::get('/examination-status-dropdown',[ChestShapeController::class, 'examination_dropdown']);
Route::get('/chestshape',[ChestShapeController::class, 'index']);
Route::post('/save-chestshape',[ChestShapeController::class, 'store']);
Route::get('/edit-chestshape/{id}',[ChestShapeController::class, 'edit']);
Route::post('/update-chestshape/{id}',[ChestShapeController::class, 'update']);
Route::delete('/delete-chestshape/{id}',[ChestShapeController::class, 'destroy']);
Route::get('/chestshape-status',[ChestShapeController::class, 'examination_dropdown']);



//percussion

Route::get('/examination-status-dropdown',[PercussionController::class, 'examination_dropdown']);
Route::get('/percussion',[PercussionController::class, 'index']);
Route::post('/save-percussion',[PercussionController::class, 'store']);
Route::get('/edit-percussion/{id}',[PercussionController::class, 'edit']);
Route::post('/update-percussion/{id}',[PercussionController::class, 'update']);
Route::delete('/delete-percussion/{id}',[PercussionController::class, 'destroy']);
Route::get('/percussion-status',[PercussionController::class, 'examination_dropdown']);


//breath sound

Route::get('/examination-status-dropdown',[BreathSoundController::class, 'examination_dropdown']);
Route::get('/breathsound',[BreathSoundController::class, 'index']);
Route::post('/save-breathsound',[BreathSoundController::class, 'store']);
Route::get('/edit-breathsound/{id}',[BreathSoundController::class, 'edit']);
Route::post('/update-breathsound/{id}',[BreathSoundController::class, 'update']);
Route::delete('/delete-breathsound/{id}',[BreathSoundController::class, 'destroy']);
Route::get('/breathsound-status',[BreathSoundController::class, 'examination_dropdown']);


//abnormal breathing

Route::get('/examination-status-dropdown',[AbnormalBreathingController::class, 'examination_dropdown']);
Route::get('/abnormal-breathing',[AbnormalBreathingController::class, 'index']);
Route::post('/save-abnormal-breathing',[AbnormalBreathingController::class, 'store']);
Route::get('/edit-abnormal-breathing/{id}',[AbnormalBreathingController::class, 'edit']);
Route::post('/update-abnormal-breathing/{id}',[AbnormalBreathingController::class, 'update']);
Route::delete('/delete-abnormal-breathing/{id}',[AbnormalBreathingController::class, 'destroy']);
Route::get('/abnormal-breathing-status',[AbnormalBreathingController::class, 'examination_dropdown']);

//vocal fermitus

Route::get('/examination-status-dropdown',[VocalFremitusController::class, 'examination_dropdown']);
Route::get('/vocal-fremitus',[VocalFremitusController::class, 'index']);
Route::post('/save-vocal-fremitus',[VocalFremitusController::class, 'store']);
Route::get('/edit-vocal-fremitus/{id}',[VocalFremitusController::class, 'edit']);
Route::post('/update-vocal-fremitus/{id}',[VocalFremitusController::class, 'update']);
Route::delete('/delete-vocal-fremitus/{id}',[VocalFremitusController::class, 'destroy']);
Route::get('/vocal-fremitus-status',[VocalFremitusController::class, 'examination_dropdown']);

//chest expansion

Route::get('/examination-status-dropdown',[ChestExpansionController::class, 'examination_dropdown']);
Route::get('/chest-expansion',[ChestExpansionController::class, 'index']);
Route::post('/save-chest-expansion',[ChestExpansionController::class, 'store']);
Route::get('/edit-chest-expansion/{id}',[ChestExpansionController::class, 'edit']);
Route::post('/update-chest-expansion/{id}',[ChestExpansionController::class, 'update']);
Route::delete('/delete-chest-expansion/{id}',[ChestExpansionController::class, 'destroy']);
Route::get('/chest-expansion-status',[ChestExpansionController::class, 'examination_dropdown']);

//wheering
Route::get('/examination-status-dropdown',[WheeringController::class, 'examination_dropdown']);
Route::get('/wheering',[WheeringController::class, 'index']);
Route::post('/save-wheering',[WheeringController::class, 'store']);
Route::get('/edit-wheering/{id}',[WheeringController::class, 'edit']);
Route::post('/update-wheering/{id}',[WheeringController::class, 'update']);
Route::delete('/delete-wheering/{id}',[WheeringController::class, 'destroy']);
Route::get('/wheering-status',[WheeringController::class, 'examination_dropdown']);


//vocal resonance
Route::get('/examination-status-dropdown',[VocalResonanceController::class, 'examination_dropdown']);
Route::get('/vocal-resonance',[VocalResonanceController::class, 'index']);
Route::post('/save-vocal-resonance',[VocalResonanceController::class, 'store']);
Route::get('/edit-vocal-resonance/{id}',[VocalResonanceController::class, 'edit']);
Route::post('/update-vocal-resonance/{id}',[VocalResonanceController::class, 'update']);
Route::delete('/delete-vocal-resonance/{id}',[VocalResonanceController::class, 'destroy']);
Route::get('/vocal-resonance-status',[VocalResonanceController::class, 'examination_dropdown']);


//SymptomsController

Route::get('/examination-status-dropdown',[SymptomsController::class, 'examination_dropdown']);
Route::get('/symptoms',[SymptomsController::class, 'index']);
Route::post('/save-symptoms',[SymptomsController::class, 'store']);
Route::get('/edit-symptoms/{id}',[SymptomsController::class, 'edit']);
Route::post('/update-symptoms/{id}',[SymptomsController::class, 'update']);
Route::delete('/delete-symptoms/{id}',[SymptomsController::class, 'destroy']);
Route::get('/symptoms-status',[SymptomsController::class, 'examination_dropdown']);

//pembertons

Route::get('/examination-status-dropdown',[PembertonsController::class, 'examination_dropdown']);
Route::get('/pembertons',[PembertonsController::class, 'index']);
Route::post('/save-pembertons',[PembertonsController::class, 'store']);
Route::get('/edit-pembertons/{id}',[PembertonsController::class, 'edit']);
Route::post('/update-pembertons/{id}',[PembertonsController::class, 'update']);
Route::delete('/delete-pembertons/{id}',[PembertonsController::class, 'destroy']);
Route::get('/pembertons-status',[PembertonsController::class, 'examination_dropdown']);


//cns cnI

Route::get('/cnOne',[CnsCnOneController::class, 'index']);
Route::post('/save-cnOne',[CnsCnOneController::class, 'store']);
Route::get('/edit-cnOne/{id}',[CnsCnOneController::class, 'edit']);
Route::post('/update-cnOne/{id}',[CnsCnOneController::class, 'update']);
Route::delete('/delete-cnOne/{id}',[CnsCnOneController::class, 'destroy']);

//cns cnII

Route::get('/cnTwo',[CnsCnTwoController::class, 'index']);
Route::post('/save-cnTwo',[CnsCnTwoController::class, 'store']);
Route::get('/edit-cnTwo/{id}',[CnsCnTwoController::class, 'edit']);
Route::post('/update-cnTwo/{id}',[CnsCnTwoController::class, 'update']);
Route::delete('/delete-cnTwo/{id}',[CnsCnTwoController::class, 'destroy']);

//cns cnIII

Route::get('/cnThree',[CnsCnThreeController::class, 'index']);
Route::post('/save-cnThree',[CnsCnThreeController::class, 'store']);
Route::get('/edit-cnThree/{id}',[CnsCnThreeController::class, 'edit']);
Route::post('/update-cnThree/{id}',[CnsCnThreeController::class, 'update']);
Route::delete('/delete-cnThree/{id}',[CnsCnThreeController::class, 'destroy']);

//cns cnIV

Route::get('/cnFour',[CnsCnFourController::class, 'index']);
Route::post('/save-cnFour',[CnsCnFourController::class, 'store']);
Route::get('/edit-cnFour/{id}',[CnsCnFourController::class, 'edit']);
Route::post('/update-cnFour/{id}',[CnsCnFourController::class, 'update']);
Route::delete('/delete-cnFour/{id}',[CnsCnFourController::class, 'destroy']);

//cns cnV

Route::get('/cnFive',[CnsCnFiveController::class, 'index']);
Route::post('/save-cnFive',[CnsCnFiveController::class, 'store']);
Route::get('/edit-cnFive/{id}',[CnsCnFiveController::class, 'edit']);
Route::post('/update-cnFive/{id}',[CnsCnFiveController::class, 'update']);
Route::delete('/delete-cnFive/{id}',[CnsCnFiveController::class, 'destroy']);


//cns cnVI

Route::get('/cnSix',[CnsCnSixController::class, 'index']);
Route::post('/save-cnSix',[CnsCnSixController::class, 'store']);
Route::get('/edit-cnSix/{id}',[CnsCnSixController::class, 'edit']);
Route::post('/update-cnSix/{id}',[CnsCnSixController::class, 'update']);
Route::delete('/delete-cnSix/{id}',[CnsCnSixController::class, 'destroy']);

//cns cnVII

Route::get('/cnSeven',[CnsCnSevenController::class, 'index']);
Route::post('/save-cnSeven',[CnsCnSevenController::class, 'store']);
Route::get('/edit-cnSeven/{id}',[CnsCnSevenController::class, 'edit']);
Route::post('/update-cnSeven/{id}',[CnsCnSevenController::class, 'update']);
Route::delete('/delete-cnSeven/{id}',[CnsCnSevenController::class, 'destroy']);

//cns cnVIII

Route::get('/cnEight',[CnsCnEightController::class, 'index']);
Route::post('/save-cnEight',[CnsCnEightController::class, 'store']);
Route::get('/edit-cnEight/{id}',[CnsCnEightController::class, 'edit']);
Route::post('/update-cnEight/{id}',[CnsCnEightController::class, 'update']);
Route::delete('/delete-cnEight/{id}',[CnsCnEightController::class, 'destroy']);

//cns cnIX

Route::get('/cnNine',[CnsCnNineController::class, 'index']);
Route::post('/save-cnNine',[CnsCnNineController::class, 'store']);
Route::get('/edit-cnNine/{id}',[CnsCnNineController::class, 'edit']);
Route::post('/update-cnNine/{id}',[CnsCnNineController::class, 'update']);
Route::delete('/delete-cnNine/{id}',[CnsCnNineController::class, 'destroy']);


//cns cnX
Route::get('/cnTen',[CnsCnTenController::class, 'index']);
Route::post('/save-cnTen',[CnsCnTenController::class, 'store']);
Route::get('/edit-cnTen/{id}',[CnsCnTenController::class, 'edit']);
Route::post('/update-cnTen/{id}',[CnsCnTenController::class, 'update']);
Route::delete('/delete-cnTen/{id}',[CnsCnTenController::class, 'destroy']);


//Left Value
Route::get('/left-value',[CnsLeftValueController::class, 'index']);
Route::post('/save-left-value',[CnsLeftValueController::class, 'store']);
Route::get('/edit-left-value/{id}',[CnsLeftValueController::class, 'edit']);
Route::post('/update-left-value/{id}',[CnsLeftValueController::class, 'update']);
Route::delete('/delete-left-value/{id}',[CnsLeftValueController::class, 'destroy']);


//Right Value
Route::get('/right-value',[CnsRightValueController::class, 'index']);
Route::post('/save-right-value',[CnsRightValueController::class, 'store']);
Route::get('/edit-right-value/{id}',[CnsRightValueController::class, 'edit']);
Route::post('/update-right-value/{id}',[CnsRightValueController::class, 'update']);
Route::delete('/delete-right-value/{id}',[CnsRightValueController::class, 'destroy']);


//UPPER LIMB
Route::get('/upper-limb',[CnsUpperLimbController::class, 'index']);
Route::post('/save-upper-limb',[CnsUpperLimbController::class, 'store']);
Route::get('/edit-upper-limb/{id}',[CnsUpperLimbController::class, 'edit']);
Route::post('/update-upper-limb/{id}',[CnsUpperLimbController::class, 'update']);
Route::delete('/delete-upper-limb/{id}',[CnsUpperLimbController::class, 'destroy']);


//Power
Route::get('/power',[CnsPowerController::class, 'index']);
Route::post('/save-power',[CnsPowerController::class, 'store']);
Route::get('/edit-power/{id}',[CnsPowerController::class, 'edit']);
Route::post('/update-power/{id}',[CnsPowerController::class, 'update']);
Route::delete('/delete-power/{id}',[CnsPowerController::class, 'destroy']);


//The Radial Nerve
Route::get('/the-radial-nerve',[CnsTheRadialNerveController::class, 'index']);
Route::post('/save-the-radial-nerve',[CnsTheRadialNerveController::class, 'store']);
Route::get('/edit-the-radial-nerve/{id}',[CnsTheRadialNerveController::class, 'edit']);
Route::post('/update-the-radial-nerve/{id}',[CnsTheRadialNerveController::class, 'update']);
Route::delete('/delete-the-radial-nerve/{id}',[CnsTheRadialNerveController::class, 'destroy']);


//Jerk (C1,C8)
Route::get('/jerk-c1-c8',[CnsJerkC1C8Controller::class, 'index']);
Route::post('/save-jerk-c1-c8',[CnsJerkC1C8Controller::class, 'store']);
Route::get('/edit-jerk-c1-c8/{id}',[CnsJerkC1C8Controller::class, 'edit']);
Route::post('/update-jerk-c1-c8/{id}',[CnsJerkC1C8Controller::class, 'update']);
Route::delete('/delete-jerk-c1-c8/{id}',[CnsJerkC1C8Controller::class, 'destroy']);


//Finger nose test
Route::get('/finger-nose-test',[CnsFingerNoseTestController::class, 'index']);
Route::post('/save-finger-nose-test',[CnsFingerNoseTestController::class, 'store']);
Route::get('/edit-finger-nose-test/{id}',[CnsFingerNoseTestController::class, 'edit']);
Route::post('/update-finger-nose-test/{id}',[CnsFingerNoseTestController::class, 'update']);
Route::delete('/delete-finger-nose-test/{id}',[CnsFingerNoseTestController::class, 'destroy']);

//Picture upper limb dermatomes 
Route::get('/picture-upper-limb-dermatomes',[CnsPictureUpperLimbDermatomesController::class, 'index']);
Route::post('/save-picture-upper-limb-dermatomes',[CnsPictureUpperLimbDermatomesController::class, 'store']);
Route::get('/edit-picture-upper-limb-dermatomes/{id}',[CnsPictureUpperLimbDermatomesController::class, 'edit']);
Route::post('/update-picture-upper-limb-dermatomes/{id}',[CnsPictureUpperLimbDermatomesController::class, 'update']);
Route::delete('/delete-picture-upper-limb-dermatomes/{id}',[CnsPictureUpperLimbDermatomesController::class, 'destroy']);



//Crepitation

Route::get('/examination-status-dropdown',[SymptomsController::class, 'examination_dropdown']);
Route::get('/crepitation',[CrepitationController::class, 'index']);
Route::post('/save-crepitation',[CrepitationController::class, 'store']);
Route::get('/edit-crepitation/{id}',[CrepitationController::class, 'edit']);
Route::post('/update-crepitation/{id}',[CrepitationController::class, 'update']);
Route::delete('/delete-crepitation/{id}',[CrepitationController::class, 'destroy']);
Route::get('/crepitation-status',[CrepitationController::class, 'examination_dropdown']);




//ExaminationHeadingRoutes

Route::get('/examinationHeading',[ExaminationHeadingController::class, 'index']);
Route::post('/save-examinationHeading',[ExaminationHeadingController::class, 'store']);
Route::get('/edit-examinationHeading/{id}',[ExaminationHeadingController::class, 'edit']);
Route::post('/update-examinationHeading/{id}',[ExaminationHeadingController::class, 'update']);
Route::delete('/delete-examinationHeading/{id}',[ExaminationHeadingController::class, 'destroy']);



//common-history
Route::get('/examination-name-dropdown',[CommonHistoryController::class, 'examination_dropdown']);
Route::get('/commonHistory',[CommonHistoryController::class, 'index']);
Route::post('/save-commonHistory',[CommonHistoryController::class, 'store']);
Route::get('/edit-commonHistory/{id}',[CommonHistoryController::class, 'edit']);
Route::post('/update-commonHistory/{id}',[CommonHistoryController::class, 'update']);
Route::delete('/delete-commonHistory/{id}',[CommonHistoryController::class, 'destroy']);


Route::get('/commonHistory-general',[CommonHistoryController::class, 'commonHistory_general']);
Route::get('/commonHistory-Cardivascular',[CommonHistoryController::class, 'CommonHistory_Cardivascular']);
Route::get('/commonHistory-Respiratory',[CommonHistoryController::class, 'commonHistory_Respiratory']);
Route::get('/commonHistory-gestro',[CommonHistoryController::class, 'commonHistory_gestro']);

Route::get('/commonHistory-all/{name}',[CommonHistoryController::class, 'commonHistory_for_all']);


// morshed start 
//cough
Route::get('/cough',[MhpCoughController::class, 'index']);
Route::post('/save-cough',[MhpCoughController::class, 'store']);
Route::get('/edit-cough/{id}',[MhpCoughController::class, 'edit']);
Route::post('/update-cough/{id}',[MhpCoughController::class, 'update']);
Route::delete('/delete-cough/{id}',[MhpCoughController::class, 'destroy']);

// Dyspnea
Route::get('/dyspnea',[MhpDyspneaController::class, 'index']);
Route::post('/save-dyspnea',[MhpDyspneaController::class, 'store']);
Route::get('/edit-dyspnea/{id}',[MhpDyspneaController::class, 'edit']);
Route::post('/update-dyspnea/{id}',[MhpDyspneaController::class, 'update']);
Route::delete('/delete-dyspnea/{id}',[MhpDyspneaController::class, 'destroy']);

// Dyspnea Class
Route::get('/dyspnea-class',[MhpDyspneaClassController::class, 'index']);
Route::post('/save-dyspnea-class',[MhpDyspneaClassController::class, 'store']);
Route::get('/edit-dyspnea-class/{id}',[MhpDyspneaClassController::class, 'edit']);
Route::post('/update-dyspnea-class/{id}',[MhpDyspneaClassController::class, 'update']);
Route::delete('/delete-dyspnea-class/{id}',[MhpDyspneaController::class, 'destroy']);

// Medical History
Route::get('/medical-history',[MhpMedicalHistoryController::class, 'index']);
Route::post('/save-medical-history',[MhpMedicalHistoryController::class, 'store']);
Route::get('/edit-medical-history/{id}',[MhpMedicalHistoryController::class, 'edit']);
Route::post('/update-medical-history/{id}',[MhpMedicalHistoryController::class, 'update']);
Route::delete('/delete-medical-history/{id}',[MhpMedicalHistoryController::class, 'destroy']);

// Sleep Apnoea Risk
Route::get('/sleep-apnoea-risk',[MhpSleepApnoeaRiskController::class, 'index']);
Route::post('/save-sleep-apnoea-risk',[MhpSleepApnoeaRiskController::class, 'store']);
Route::get('/edit-sleep-apnoea-risk/{id}',[MhpSleepApnoeaRiskController::class, 'edit']);
Route::post('/update-sleep-apnoea-risk/{id}',[MhpSleepApnoeaRiskController::class, 'update']);
Route::delete('/delete-sleep-apnoea-risk/{id}',[MhpSleepApnoeaRiskController::class, 'destroy']);

// Questionnaire
Route::get('/questionnaire',[MhpQuestionnaireController::class, 'index']);
Route::post('/save-ques',[MhpQuestionnaireController::class, 'store']);
Route::get('/edit-questionnaire/{id}',[MhpQuestionnaireController::class, 'edit']);
Route::post('/update-questionnaire/{id}',[MhpQuestionnaireController::class, 'update']);
Route::delete('/delete-questionnaire/{id}',[MhpQuestionnaireController::class, 'destroy']);

// Exmanination List
Route::get('/exmanination-list',[MhpExmaninationListController::class, 'index']);
Route::post('/save-exmanination-list',[MhpExmaninationListController::class, 'store']);
Route::get('/edit-exmanination-list/{id}',[MhpExmaninationListController::class, 'edit']);
Route::post('/update-exmanination-list/{id}',[MhpExmaninationListController::class, 'update']);
Route::delete('/delete-exmanination-list/{id}',[MhpExmaninationListController::class, 'destroy']);

// Main Body Part
Route::get('/main-body-part',[MhpMainBodyPartController::class, 'index']);
Route::post('/save-main-body-part',[MhpMainBodyPartController::class, 'store']);
Route::get('/edit-main-body-part/{id}',[MhpMainBodyPartController::class, 'edit']);
Route::post('/update-main-body-part/{id}',[MhpMainBodyPartController::class, 'update']);
Route::delete('/delete-main-body-part/{id}',[MhpMainBodyPartController::class, 'destroy']);

//get all subbody parts by main body id
Route::get('/sub-body-part/{id}',[MhpSubBodyPartController::class, 'getAllSubBody']);

//get all subbody parts by main body name mobile api 
Route::get('/sub-body-parts/{name}',[MhpSubBodyPartController::class, 'getAllSubBodyName']);

Route::get('/get-all-sub-body-part-symptoms-by-subId/{name}',[MhpSymptomsAnatomyController::class, 'getAllSubBodySymptoms']);


Route::get('/get-symptoms-by-main-body-part-name/{name}',[MhpSymptomsAnatomyController::class, 'getSymptomsByMainBodyPartName']);


//get all symptoms names by main body parts and subbody parts name and gender mobile api 

Route::get('/patient-symptomsByGender/{name}/{gender}',[MhpSymptomsAnatomyController::class, 'getAllSymptomsByGender']);

Route::get('/patient-symptoms-by-sub-or-main-body-partname/{name}',[MhpSymptomsAnatomyController::class, 'getAllSymptomsBySubOrMainBodyPartName']);

Route::get('/female-symptoms-by-sub-or-main-body-partname/{name}',[MhpSymptomsAnatomyController::class, 'getFemaleSymptomsBySubOrMainBodyPartName']);


Route::post('/save-patient-symptom-anatomy',[MhpSymptomsAnatomyController::class, 'saveSymptomAnatomy']);

//Sub Body Part
Route::get('/main-body-part-dropdown',[MhpSubBodyPartController::class, 'mainbodypart_dropdown']);
Route::get('/sub-body-part',[MhpSubBodyPartController::class, 'index']);
Route::post('/save-sub-body-part',[MhpSubBodyPartController::class, 'store']);
Route::get('/edit-sub-body-part/{id}',[MhpSubBodyPartController::class, 'edit']);
Route::post('/update-sub-body-part/{id}',[MhpSubBodyPartController::class, 'update']);
Route::delete('/delete-sub-body-part/{id}',[MhpSubBodyPartController::class, 'destroy']);







//Symptoms Anatomy
Route::get('/symptoms-anatomy',[MhpSymptomsAnatomyController::class, 'index']);
Route::post('/save-symptoms-anatomy',[MhpSymptomsAnatomyController::class, 'store']);
Route::get('/edit-symptoms-anatomy/{id}',[MhpSymptomsAnatomyController::class, 'edit']);
Route::post('/update-symptoms-anatomy/{id}',[MhpSymptomsAnatomyController::class, 'update']);
Route::delete('/delete-symptoms-anatomy/{id}',[MhpSymptomsAnatomyController::class, 'destroy']);


// Cripatation Left
Route::get('/cripatation-left',[MhpCripatationLeftController::class, 'index']);
Route::post('/save-cripatation-left',[MhpCripatationLeftController::class, 'store']);
Route::get('/edit-cripatation-left/{id}',[MhpCripatationLeftController::class, 'edit']);
Route::post('/update-cripatation-left/{id}',[MhpCripatationLeftController::class, 'update']);
Route::delete('/delete-cripatation-left/{id}',[MhpCripatationLeftController::class, 'destroy']);

// Cripatation Right
Route::get('/cripatation-right',[MhpCripatationRightController::class, 'index']);
Route::post('/save-cripatation-right',[MhpCripatationRightController::class, 'store']);
Route::get('/edit-cripatation-right/{id}',[MhpCripatationRightController::class, 'edit']);
Route::post('/update-cripatation-right/{id}',[MhpCripatationRightController::class, 'update']);
Route::delete('/delete-cripatation-right/{id}',[MhpCripatationRightController::class, 'destroy']);

// Cripatation Both
Route::get('/cripatation-both',[MhpCripatationBothController::class, 'index']);
Route::post('/save-cripatation-both',[MhpCripatationBothController::class, 'store']);
Route::get('/edit-cripatation-both/{id}',[MhpCripatationBothController::class, 'edit']);
Route::post('/update-cripatation-both/{id}',[MhpCripatationBothController::class, 'update']);
Route::delete('/delete-cripatation-both/{id}',[MhpCripatationBothController::class, 'destroy']);

// Wheezing Left
Route::get('/wheezing-left',[MhpWheezingLeftController::class, 'index']);
Route::post('/save-wheezing-left',[MhpWheezingLeftController::class, 'store']);
Route::get('/edit-wheezing-left/{id}',[MhpWheezingLeftController::class, 'edit']);
Route::post('/update-wheezing-left/{id}',[MhpWheezingLeftController::class, 'update']);
Route::delete('/delete-wheezing-left/{id}',[MhpWheezingLeftController::class, 'destroy']);

// Wheezing Right
Route::get('/wheezing-right',[MhpWheezingRightController::class, 'index']);
Route::post('/save-wheezing-right',[MhpWheezingRightController::class, 'store']);
Route::get('/edit-wheezing-right/{id}',[MhpWheezingRightController::class, 'edit']);
Route::post('/update-wheezing-right/{id}',[MhpWheezingRightController::class, 'update']);
Route::delete('/delete-wheezing-right/{id}',[MhpWheezingRightController::class, 'destroy']);

// Wheezing Both
Route::get('/wheezing-both',[MhpWheezingBothController::class, 'index']);
Route::post('/save-wheezing-both',[MhpWheezingBothController::class, 'store']);
Route::get('/edit-wheezing-both/{id}',[MhpWheezingBothController::class, 'edit']);
Route::post('/update-wheezing-both/{id}',[MhpWheezingBothController::class, 'update']);
Route::delete('/delete-wheezing-both/{id}',[MhpWheezingBothController::class, 'destroy']);

// Motor
Route::get('/motor',[MhpMotorController::class, 'index']);
Route::post('/save-motor',[MhpMotorController::class, 'store']);
Route::get('/edit-motor/{id}',[MhpMotorController::class, 'edit']);
Route::post('/update-motor/{id}',[MhpMotorController::class, 'update']);
Route::delete('/delete-motor/{id}',[MhpMotorController::class, 'destroy']);

// On Shutting Eye
Route::get('/on-shutting-eye',[MhpOnShuttingEyeController::class, 'index']);
Route::post('/save-on-shutting-eye',[MhpOnShuttingEyeController::class, 'store']);
Route::get('/edit-on-shutting-eye/{id}',[MhpOnShuttingEyeController::class, 'edit']);
Route::post('/update-on-shutting-eye/{id}',[MhpOnShuttingEyeController::class, 'update']);
Route::delete('/delete-on-shutting-eye/{id}',[MhpOnShuttingEyeController::class, 'destroy']);

// Skin 
Route::get('/skin',[MhpSkinController::class, 'index']);
Route::post('/save-skin',[MhpSkinController::class, 'store']);
Route::get('/edit-skin/{id}',[MhpSkinController::class, 'edit']);
Route::post('/update-skin/{id}',[MhpSkinController::class, 'update']);
Route::delete('/delete-skin/{id}',[MhpSkinController::class, 'destroy']);

// Hand And Finger
Route::get('/hand-and-finger',[MhpHandAndFingerController::class, 'index']);
Route::post('/save-hand-and-finger',[MhpHandAndFingerController::class, 'store']);
Route::get('/edit-hand-and-finger/{id}',[MhpHandAndFingerController::class, 'edit']);
Route::post('/update-hand-and-finger/{id}',[MhpHandAndFingerController::class, 'update']);
Route::delete('/delete-hand-and-finger/{id}',[MhpHandAndFingerController::class, 'destroy']);

// Hand And Finger
Route::get('/left-supraclavicular-node',[MhpLeftSupraclavicularNodeController::class, 'index']);
Route::post('/save-left-supraclavicular-node',[MhpLeftSupraclavicularNodeController::class, 'store']);
Route::get('/edit-left-supraclavicular-node/{id}',[MhpLeftSupraclavicularNodeController::class, 'edit']);
Route::post('/update-left-supraclavicular-node/{id}',[MhpLeftSupraclavicularNodeController::class, 'update']);
Route::delete('/delete-left-supraclavicular-node/{id}',[MhpLeftSupraclavicularNodeController::class, 'destroy']);

// Tongue Mouth
Route::get('/tongue-mouth',[MhpTongueMouthController::class, 'index']);
Route::post('/save-tongue-mouth',[MhpTongueMouthController::class, 'store']);
Route::get('/edit-tongue-mouth/{id}',[MhpTongueMouthController::class, 'edit']);
Route::post('/update-tongue-mouth/{id}',[MhpTongueMouthController::class, 'update']);
Route::delete('/delete-tongue-mouth/{id}',[MhpTongueMouthController::class, 'destroy']);

// Abdomen
Route::get('/abdomen',[MhpAbdomenController::class, 'index']);
Route::post('/save-abdomen',[MhpAbdomenController::class, 'store']);
Route::get('/edit-abdomen/{id}',[MhpAbdomenController::class, 'edit']);
Route::post('/update-abdomen/{id}',[MhpAbdomenController::class, 'update']);
Route::delete('/delete-abdomen/{id}',[MhpAbdomenController::class, 'destroy']);

// Bruit
Route::get('/bruit',[MhpBruitController::class, 'index']);
Route::post('/save-bruit',[MhpBruitController::class, 'store']);
Route::get('/edit-bruit/{id}',[MhpBruitController::class, 'edit']);
Route::post('/update-bruit/{id}',[MhpBruitController::class, 'update']);
Route::delete('/delete-bruit/{id}',[MhpBruitController::class, 'destroy']);

//Non Tender Tenderness
Route::get('/non-tender-tenderness',[MhpNonTenderTendernessController::class, 'index']);
Route::post('/save-non-tender-tenderness',[MhpNonTenderTendernessController::class, 'store']);
Route::get('/edit-non-tender-tenderness/{id}',[MhpNonTenderTendernessController::class, 'edit']);
Route::post('/update-non-tender-tenderness/{id}',[MhpNonTenderTendernessController::class, 'update']);
Route::delete('/delete-non-tender-tenderness/{id}',[MhpNonTenderTendernessController::class, 'destroy']);

//No masses Mass
Route::get('/no-masses-mass',[MhpNoMassesMassController::class, 'index']);
Route::post('/save-no-masses-mass',[MhpNoMassesMassController::class, 'store']);
Route::get('/edit-no-masses-mass/{id}',[MhpNoMassesMassController::class, 'edit']);
Route::post('/update-no-masses-mass/{id}',[MhpNoMassesMassController::class, 'update']);
Route::delete('/delete-no-masses-mass/{id}',[MhpNoMassesMassController::class, 'destroy']);

//No masses Mass
Route::get('/hernias',[MhpHerniasController::class, 'index']);
Route::post('/save-hernias',[MhpHerniasController::class, 'store']);
Route::get('/edit-hernias/{id}',[MhpHerniasController::class, 'edit']);
Route::post('/update-hernias/{id}',[MhpHerniasController::class, 'update']);
Route::delete('/delete-hernias/{id}',[MhpHerniasController::class, 'destroy']);

//Hernias Inguinal
Route::get('/hernias-inguinal',[MhpHerniasInguinalController::class, 'index']);
Route::post('/save-hernias-inguinal',[MhpHerniasInguinalController::class, 'store']);
Route::get('/edit-hernias-inguinal/{id}',[MhpHerniasInguinalController::class, 'edit']);
Route::post('/update-hernias-inguinal/{id}',[MhpHerniasInguinalController::class, 'update']);
Route::delete('/delete-hernias-inguinal/{id}',[MhpHerniasInguinalController::class, 'destroy']);


//Hernias Femoral
Route::get('/hernias-femoral',[MhpHerniasFemoralController::class, 'index']);
Route::post('/save-hernias-femoral',[MhpHerniasFemoralController::class, 'store']);
Route::get('/edit-hernias-femoral/{id}',[MhpHerniasFemoralController::class, 'edit']);
Route::post('/update-hernias-femoral/{id}',[MhpHerniasFemoralController::class, 'update']);
Route::delete('/delete-hernias-femoral/{id}',[MhpHerniasFemoralController::class, 'destroy']);


// Per Rectal
Route::get('/per-rectal',[MhpPerRectalController::class, 'index']);
Route::post('/save-per-rectal',[MhpPerRectalController::class, 'store']);
Route::get('/edit-per-rectal/{id}',[MhpPerRectalController::class, 'edit']);
Route::post('/update-per-rectal/{id}',[MhpPerRectalController::class, 'update']);
Route::delete('/delete-per-rectal/{id}',[MhpPerRectalController::class, 'destroy']);


// Sigmoidoscopy
Route::get('/sigmoidoscopy',[MhpSigmoidoscopyController::class, 'index']);
Route::post('/save-sigmoidoscopy',[MhpSigmoidoscopyController::class, 'store']);
Route::get('/edit-sigmoidoscopy/{id}',[MhpSigmoidoscopyController::class, 'edit']);
Route::post('/update-sigmoidoscopy/{id}',[MhpSigmoidoscopyController::class, 'update']);
Route::delete('/delete-sigmoidoscopy/{id}',[MhpSigmoidoscopyController::class, 'destroy']);


// Sigmoidoscopy-Guaiac Test (FOBT)
Route::get('/sigmoidoscopy-guaiac-test',[MhpSigmoidoscopyGuaiacTestController::class, 'index']);
Route::post('/save-sigmoidoscopy-guaiac-test',[MhpSigmoidoscopyGuaiacTestController::class, 'store']);
Route::get('/edit-sigmoidoscopy-guaiac-test/{id}',[MhpSigmoidoscopyGuaiacTestController::class, 'edit']);
Route::post('/update-sigmoidoscopy-guaiac-test/{id}',[MhpSigmoidoscopyGuaiacTestController::class, 'update']);
Route::delete('/delete-sigmoidoscopy-guaiac-test/{id}',[MhpSigmoidoscopyGuaiacTestController::class, 'destroy']);


// Site
Route::get('/site',[MhpSiteController::class, 'index']);
Route::post('/save-site',[MhpSiteController::class, 'store']);
Route::get('/edit-site/{id}',[MhpSiteController::class, 'edit']);
Route::post('/update-site/{id}',[MhpSiteController::class, 'update']);
Route::delete('/delete-site/{id}',[MhpSiteController::class, 'destroy']);

// Radiation
Route::get('/radiation',[MhpRadiationController::class, 'index']);
Route::post('/save-radiation',[MhpRadiationController::class, 'store']);
Route::get('/edit-radiation/{id}',[MhpRadiationController::class, 'edit']);
Route::post('/update-radiation/{id}',[MhpRadiationController::class, 'update']);
Route::delete('/delete-radiation/{id}',[MhpRadiationController::class, 'destroy']);

// Pattern
Route::get('/pattern',[MhpPatternController::class, 'index']);
Route::post('/save-pattern',[MhpPatternController::class, 'store']);
Route::get('/edit-pattern/{id}',[MhpPatternController::class, 'edit']);
Route::post('/update-pattern/{id}',[MhpPatternController::class, 'update']);
Route::delete('/delete-pattern/{id}',[MhpPatternController::class, 'destroy']);


// Duration
Route::get('/duration',[MhpDurationController::class, 'index']);
Route::post('/save-duration',[MhpDurationController::class, 'store']);
Route::get('/edit-duration/{id}',[MhpDurationController::class, 'edit']);
Route::post('/update-duration/{id}',[MhpDurationController::class, 'update']);
Route::delete('/delete-duration/{id}',[MhpDurationController::class, 'destroy']);


// Frequency
Route::get('/frequency',[MhpFrequencyController::class, 'index']);
Route::post('/save-frequency',[MhpFrequencyController::class, 'store']);
Route::get('/edit-frequency/{id}',[MhpFrequencyController::class, 'edit']);
Route::post('/update-frequency/{id}',[MhpFrequencyController::class, 'update']);
Route::delete('/delete-frequency/{id}',[MhpFrequencyController::class, 'destroy']);


// Score
Route::get('/score',[MhpScoreController::class, 'index']);
Route::post('/save-score',[MhpScoreController::class, 'store']);
Route::get('/edit-score/{id}',[MhpScoreController::class, 'edit']);
Route::post('/update-score/{id}',[MhpScoreController::class, 'update']);
Route::delete('/delete-score/{id}',[MhpScoreController::class, 'destroy']);


// Vomiting
Route::get('/vomiting',[MhpVomitingController::class, 'index']);
Route::post('/save-vomiting',[MhpVomitingController::class, 'store']);
Route::get('/edit-vomiting/{id}',[MhpVomitingController::class, 'edit']);
Route::post('/update-vomiting/{id}',[MhpVomitingController::class, 'update']);
Route::delete('/delete-vomiting/{id}',[MhpVomitingController::class, 'destroy']);


// Dysphagia
Route::get('/dysphagia',[MhpDysphagiaController::class, 'index']);
Route::post('/save-dysphagia',[MhpDysphagiaController::class, 'store']);
Route::get('/edit-dysphagia/{id}',[MhpDysphagiaController::class, 'edit']);
Route::post('/update-dysphagia/{id}',[MhpDysphagiaController::class, 'update']);
Route::delete('/delete-dysphagia/{id}',[MhpDysphagiaController::class, 'destroy']);


// Diarrhoea
Route::get('/diarrhoea',[MhpDiarrhoeaController::class, 'index']);
Route::post('/save-diarrhoea',[MhpDiarrhoeaController::class, 'store']);
Route::get('/edit-diarrhoea/{id}',[MhpDiarrhoeaController::class, 'edit']);
Route::post('/update-diarrhoea/{id}',[MhpDiarrhoeaController::class, 'update']);
Route::delete('/delete-diarrhoea/{id}',[MhpDiarrhoeaController::class, 'destroy']);


// Stool Type
Route::get('/stool-type',[MhpStoolTypeController::class, 'index']);
Route::post('/save-stool-type',[MhpStoolTypeController::class, 'store']);
Route::get('/edit-stool-type/{id}',[MhpStoolTypeController::class, 'edit']);
Route::post('/update-stool-type/{id}',[MhpStoolTypeController::class, 'update']);
Route::delete('/delete-stool-type/{id}',[MhpStoolTypeController::class, 'destroy']);


// PR bleed
Route::get('/pr-bleed',[MhpPRBleedController::class, 'index']);
Route::post('/save-pr-bleed',[MhpPRBleedController::class, 'store']);
Route::get('/edit-pr-bleed/{id}',[MhpPRBleedController::class, 'edit']);
Route::post('/update-pr-bleed/{id}',[MhpPRBleedController::class, 'update']);
Route::delete('/delete-pr-bleed/{id}',[MhpPRBleedController::class, 'destroy']);


// // RUQ
// Route::get('/ruq',[MhpRUQController::class, 'index']);
// Route::post('/save-ruq',[MhpRUQController::class, 'store']);
// Route::get('/edit-ruq/{id}',[MhpRUQController::class, 'edit']);
// Route::post('/update-ruq/{id}',[MhpRUQController::class, 'update']);
// Route::delete('/delete-ruq/{id}',[MhpRUQController::class, 'destroy']);


// // Epigastric
// Route::get('/epigastric',[MhpEpigastricController::class, 'index']);
// Route::post('/save-epigastric',[MhpEpigastricController::class, 'store']);
// Route::get('/edit-epigastric/{id}',[MhpEpigastricController::class, 'edit']);
// Route::post('/update-epigastric/{id}',[MhpEpigastricController::class, 'update']);
// Route::delete('/delete-epigastric/{id}',[MhpEpigastricController::class, 'destroy']);


// // LUQ
// Route::get('/luq',[MhpLUQController::class, 'index']);
// Route::post('/save-luq',[MhpLUQController::class, 'store']);
// Route::get('/edit-luq/{id}',[MhpLUQController::class, 'edit']);
// Route::post('/update-luq/{id}',[MhpLUQController::class, 'update']);
// Route::delete('/delete-luq/{id}',[MhpLUQController::class, 'destroy']);


// // RightLumber
// Route::get('/right-lumber',[MhpRightLumberController::class, 'index']);
// Route::post('/save-right-lumber',[MhpRightLumberController::class, 'store']);
// Route::get('/edit-right-lumber/{id}',[MhpRightLumberController::class, 'edit']);
// Route::post('/update-right-lumber/{id}',[MhpRightLumberController::class, 'update']);
// Route::delete('/delete-right-lumber/{id}',[MhpRightLumberController::class, 'destroy']);


// Renal Mass
Route::get('/renal-mass',[MhpRenalMassController::class, 'index']);
Route::post('/save-renal-mass',[MhpRenalMassController::class, 'store']);
Route::get('/edit-renal-mass/{id}',[MhpRenalMassController::class, 'edit']);
Route::post('/update-renal-mass/{id}',[MhpRenalMassController::class, 'update']);
Route::delete('/delete-renal-mass/{id}',[MhpRenalMassController::class, 'destroy']);


// Urine Analysis
Route::get('/urine-analysis',[MhpUrineAnalysisController::class, 'index']);
Route::post('/save-urine-analysis',[MhpUrineAnalysisController::class, 'store']);
Route::get('/edit-urine-analysis/{id}',[MhpUrineAnalysisController::class, 'edit']);
Route::post('/update-urine-analysis/{id}',[MhpUrineAnalysisController::class, 'update']);
Route::delete('/delete-urine-analysis/{id}',[MhpUrineAnalysisController::class, 'destroy']);


// dehydration
Route::get('/dehydration',[MhpDehydrationController::class, 'index']);
Route::post('/save-dehydration',[MhpDehydrationController::class, 'store']);
Route::get('/edit-dehydration/{id}',[MhpDehydrationController::class, 'edit']);
Route::post('/update-dehydration/{id}',[MhpDehydrationController::class, 'update']);
Route::delete('/delete-dehydration/{id}',[MhpDehydrationController::class, 'destroy']);


// Urine Analysis
Route::get('/radio-femoral-delay',[MhpRadioFemoralDelayController::class, 'index']);
Route::post('/save-radio-femoral-delay',[MhpRadioFemoralDelayController::class, 'store']);
Route::get('/edit-radio-femoral-delay/{id}',[MhpRadioFemoralDelayController::class, 'edit']);
Route::post('/update-radio-femoral-delay/{id}',[MhpRadioFemoralDelayController::class, 'update']);
Route::delete('/delete-radio-femoral-delay/{id}',[MhpRadioFemoralDelayController::class, 'destroy']);


// Nail Sign
Route::get('/nail-sign',[MhpNailSignController::class, 'index']);
Route::post('/save-nail-sign',[MhpNailSignController::class, 'store']);
Route::get('/edit-nail-sign/{id}',[MhpNailSignController::class, 'edit']);
Route::post('/update-nail-sign/{id}',[MhpNailSignController::class, 'update']);
Route::delete('/delete-nail-sign/{id}',[MhpNailSignController::class, 'destroy']);


// // Double Vision
// Route::get('/double-vision',[MhpDoubleVisionController::class, 'index']);
// Route::post('/save-double-vision',[MhpDoubleVisionController::class, 'store']);
// Route::get('/edit-double-vision/{id}',[MhpDoubleVisionController::class, 'edit']);
// Route::post('/update-double-vision/{id}',[MhpDoubleVisionController::class, 'update']);
// Route::delete('/delete-double-vision/{id}',[MhpDoubleVisionController::class, 'destroy']);


// // Haloes
// Route::get('/haloes',[MhpHaloesController::class, 'index']);
// Route::post('/save-haloes',[MhpHaloesController::class, 'store']);
// Route::get('/edit-haloes/{id}',[MhpHaloesController::class, 'edit']);
// Route::post('/update-haloes/{id}',[MhpHaloesController::class, 'update']);
// Route::delete('/delete-haloes/{id}',[MhpHaloesController::class, 'destroy']);


// // Flore
// Route::get('/flore',[MhpFloreController::class, 'index']);
// Route::post('/save-flore',[MhpFloreController::class, 'store']);
// Route::get('/edit-flore/{id}',[MhpFloreController::class, 'edit']);
// Route::post('/update-flore/{id}',[MhpFloreController::class, 'update']);
// Route::delete('/delete-flore/{id}',[MhpFloreController::class, 'destroy']);


// // Caruncle
// Route::get('/caruncle',[MhpCaruncleController::class, 'index']);
// Route::post('/save-caruncle',[MhpCaruncleController::class, 'store']);
// Route::get('/edit-caruncle/{id}',[MhpCaruncleController::class, 'edit']);
// Route::post('/update-caruncle/{id}',[MhpCaruncleController::class, 'update']);
// Route::delete('/delete-caruncle/{id}',[MhpCaruncleController::class, 'destroy']);


// // Ghoosting
// Route::get('/ghoosting',[MhpGhoostingController::class, 'index']);
// Route::post('/save-ghoosting',[MhpGhoostingController::class, 'store']);
// Route::get('/edit-ghoosting/{id}',[MhpGhoostingController::class, 'edit']);
// Route::post('/update-ghoosting/{id}',[MhpGhoostingController::class, 'update']);
// Route::delete('/delete-ghoosting/{id}',[MhpGhoostingController::class, 'destroy']);


// // Enterior Chamber
// Route::get('/enterior-chamber',[MhpEnteriorChamberController::class, 'index']);
// Route::post('/save-enterior-chamber',[MhpEnteriorChamberController::class, 'store']);
// Route::get('/edit-enterior-chamber/{id}',[MhpEnteriorChamberController::class, 'edit']);
// Route::post('/update-enterior-chamber/{id}',[MhpEnteriorChamberController::class, 'update']);
// Route::delete('/delete-enterior-chamber/{id}',[MhpEnteriorChamberController::class, 'destroy']);


// LesionMiddle
Route::get('/lesion-middle',[MhpLesionMiddleController::class, 'index']);
Route::post('/save-lesion-middle',[MhpLesionMiddleController::class, 'store']);
Route::get('/edit-lesion-middle/{id}',[MhpLesionMiddleController::class, 'edit']);
Route::post('/update-lesion-middle/{id}',[MhpLesionMiddleController::class, 'update']);
Route::delete('/delete-lesion-middle/{id}',[MhpLesionMiddleController::class, 'destroy']);

// LesionRight
Route::get('/lesion-right',[MhpLesionRightController::class, 'index']);
Route::post('/save-lesion-right',[MhpLesionRightController::class, 'store']);
Route::get('/edit-lesion-right/{id}',[MhpLesionRightController::class, 'edit']);
Route::post('/update-lesion-right/{id}',[MhpLesionRightController::class, 'update']);
Route::delete('/delete-lesion-right/{id}',[MhpLesionRightController::class, 'destroy']);

// ExternalObservation
Route::get('/external-observation',[MhpExternalObservationController::class, 'index']);
Route::post('/save-external-observation',[MhpExternalObservationController::class, 'store']);
Route::get('/edit-external-observation/{id}',[MhpExternalObservationController::class, 'edit']);
Route::post('/update-external-observation/{id}',[MhpExternalObservationController::class, 'update']);
Route::delete('/delete-external-observation/{id}',[MhpExternalObservationController::class, 'destroy']);

// PhoriaOne
Route::get('/phoria-one',[MhpPhoriaOneController::class, 'index']);
Route::post('/save-phoria-one',[MhpPhoriaOneController::class, 'store']);
Route::get('/edit-phoria-one/{id}',[MhpPhoriaOneController::class, 'edit']);
Route::post('/update-phoria-one/{id}',[MhpPhoriaOneController::class, 'update']);
Route::delete('/delete-phoria-one/{id}',[MhpPhoriaOneController::class, 'destroy']);

// PhoriaTwo
Route::get('/phoria-two',[MhpPhoriaTwoController::class, 'index']);
Route::post('/save-phoria-two',[MhpPhoriaTwoController::class, 'store']);
Route::get('/edit-phoria-two/{id}',[MhpPhoriaTwoController::class, 'edit']);
Route::post('/update-phoria-two/{id}',[MhpPhoriaTwoController::class, 'update']);
Route::delete('/delete-phoria-two/{id}',[MhpPhoriaTwoController::class, 'destroy']);

// shape
Route::get('/shape',[MhpShapeController::class, 'index']);
Route::post('/save-shape',[MhpShapeController::class, 'store']);
Route::get('/edit-shape/{id}',[MhpShapeController::class, 'edit']);
Route::post('/update-shape/{id}',[MhpShapeController::class, 'update']);
Route::delete('/delete-shape/{id}',[MhpShapeController::class, 'destroy']);

// pursuits
Route::get('/pursuits',[MhpPursuitsController::class, 'index']);
Route::post('/save-pursuits',[MhpPursuitsController::class, 'store']);
Route::get('/edit-pursuits/{id}',[MhpPursuitsController::class, 'edit']);
Route::post('/update-pursuits/{id}',[MhpPursuitsController::class, 'update']);
Route::delete('/delete-pursuits/{id}',[MhpPursuitsController::class, 'destroy']);

// saccades
Route::get('/saccades',[MhpSaccadesController::class, 'index']);
Route::post('/save-saccades',[MhpSaccadesController::class, 'store']);
Route::get('/edit-saccades/{id}',[MhpSaccadesController::class, 'edit']);
Route::post('/update-saccades/{id}',[MhpSaccadesController::class, 'update']);
Route::delete('/delete-saccades/{id}',[MhpSaccadesController::class, 'destroy']);

// neuro-opthal
Route::get('/neuro-opthal',[MhpNeuroOpthalController::class, 'index']);
Route::post('/save-neuro-opthal',[MhpNeuroOpthalController::class, 'store']);
Route::get('/edit-neuro-opthal/{id}',[MhpNeuroOpthalController::class, 'edit']);
Route::post('/update-neuro-opthal/{id}',[MhpNeuroOpthalController::class, 'update']);
Route::delete('/delete-neuro-opthal/{id}',[MhpNeuroOpthalController::class, 'destroy']);
Route::delete('/delete-neuro-opthal/{id}',[MhpNeuroOpthalmologyController::class, 'destroy']);

// neuro-opthalmology
Route::get('/neuro-opthalmology',[MhpNeuroOpthalmologyController::class, 'index']);
Route::post('/save-neuro-opthalmology',[MhpNeuroOpthalmologyController::class, 'store']);
Route::get('/edit-neuro-opthalmology/{id}',[MhpNeuroOpthalmologyController::class, 'edit']);
Route::post('/update-neuro-opthalmology/{id}',[MhpNeuroOpthalmologyController::class, 'update']);
Route::delete('/delete-neuro-opthalmology/{id}',[MhpNeuroOpthalmologyController::class, 'destroy']);
Route::delete('/delete-neuro-opthalmology/{id}',[MhpNeuroOpthalmologymologyController::class, 'destroy']);


// SwollenEyeLid
Route::get('/swollen-eye-lid',[MhpSwollenEyeLidController::class, 'index']);
Route::post('/save-swollen-eye-lid',[MhpSwollenEyeLidController::class, 'store']);
Route::get('/edit-swollen-eye-lid/{id}',[MhpSwollenEyeLidController::class, 'edit']);
Route::post('/update-swollen-eye-lid/{id}',[MhpSwollenEyeLidController::class, 'update']);
Route::delete('/delete-swollen-eye-lid/{id}',[MhpSwollenEyeLidController::class, 'destroy']);


// Lesion
Route::get('/lesion',[MhpLesionController::class, 'index']);
Route::post('/save-lesion',[MhpLesionController::class, 'store']);
Route::get('/edit-lesion/{id}',[MhpLesionController::class, 'edit']);
Route::post('/update-lesion/{id}',[MhpLesionController::class, 'update']);
Route::delete('/delete-lesion/{id}',[MhpLesionController::class, 'destroy']);


// Entrance Test
Route::get('/entrance-test',[MhpEntranceTestController::class, 'index']);
Route::post('/save-entrance-test',[MhpEntranceTestController::class, 'store']);
Route::get('/edit-entrance-test/{id}',[MhpEntranceTestController::class, 'edit']);
Route::post('/update-entrance-test/{id}',[MhpEntranceTestController::class, 'update']);
Route::delete('/delete-entrance-test/{id}',[MhpEntranceTestController::class, 'destroy']);


// Visual Acuity Eye
Route::get('/visual-acuity-eye',[MhpVisualAcuityEyeController::class, 'index']);
Route::post('/save-visual-acuity-eye',[MhpVisualAcuityEyeController::class, 'store']);
Route::get('/edit-visual-acuity-eye/{id}',[MhpVisualAcuityEyeController::class, 'edit']);
Route::post('/update-visual-acuity-eye/{id}',[MhpVisualAcuityEyeController::class, 'update']);
Route::delete('/delete-visual-acuity-eye/{id}',[MhpVisualAcuityEyeController::class, 'destroy']);


// Cover Test
Route::get('/cover-test',[MhpCoverTestController::class, 'index']);
Route::post('/save-cover-test',[MhpCoverTestController::class, 'store']);
Route::get('/edit-cover-test/{id}',[MhpCoverTestController::class, 'edit']);
Route::post('/update-cover-test/{id}',[MhpCoverTestController::class, 'update']);
Route::delete('/delete-cover-test/{id}',[MhpCoverTestController::class, 'destroy']);


// Pupils
Route::get('/pupils-eye',[MhpPupilsEyeController::class, 'index']);
Route::post('/save-pupils-eye',[MhpPupilsEyeController::class, 'store']);
Route::get('/edit-pupils-eye/{id}',[MhpPupilsEyeController::class, 'edit']);
Route::post('/update-pupils-eye/{id}',[MhpPupilsEyeController::class, 'update']);
Route::delete('/delete-pupils-eye/{id}',[MhpPupilsEyeController::class, 'destroy']);


//review-name routes
Route::get('/review-name',[ReviewNameSetupController::class, 'index']);
Route::post('/save-review-name',[ReviewNameSetupController::class, 'store']);
Route::get('/edit-review-name/{id}',[ReviewNameSetupController::class, 'edit']);
Route::post('/update-review-name/{id}',[ReviewNameSetupController::class, 'update']);
Route::delete('/delete-review-name/{id}',[ReviewNameSetupController::class, 'destroy']);


/////radiology routesssss//////

Route::get('/radiology-center',[RadiologyCenterController::class, 'index']);
Route::post('/save-radiology-center',[RadiologyCenterController::class, 'store']);
Route::get('/edit-radiology-center/{id}',[RadiologyCenterController::class, 'edit']);
Route::post('/update-radiology-center/{id}',[RadiologyCenterController::class, 'update']);
Route::delete('/delete-radiology-center/{id}',[RadiologyCenterController::class, 'destroy']);

/////pathalogy routessss//////

Route::get('/get-labratory-name',[LabratoryNameController::class, 'index']);
Route::post('/save-labratory-name',[LabratoryNameController::class, 'store']);
Route::get('/edit-labratory-name/{id}',[LabratoryNameController::class, 'edit']);
Route::post('/update-labratory-name/{id}',[LabratoryNameController::class, 'update']);
Route::delete('/delete-labratory-name/{id}',[LabratoryNameController::class, 'destroy']);


//pathalogy test name
Route::get('/get-patalogy-test-name',[PathalogyTestNameController::class, 'index']);
Route::post('/save-patalogy-test-name',[PathalogyTestNameController::class, 'store']);
Route::get('/edit-pathalogy-test-name/{id}',[PathalogyTestNameController::class, 'edit']);
Route::post('/update-patalogy-test-name/{id}',[PathalogyTestNameController::class, 'update']);
Route::delete('/delete-patalogy-test-name/{id}',[PathalogyTestNameController::class, 'destroy']);


//clinical details
Route::get('/clinical-details',[ClinicalDetailsController::class, 'index']);
Route::post('/save-clinical-details',[ClinicalDetailsController::class, 'store']);
Route::get('/edit-clinical-details/{id}',[ClinicalDetailsController::class, 'edit']);
Route::post('/update-clinical-details/{id}',[ClinicalDetailsController::class, 'update']);
Route::delete('/delete-clinical-details/{id}',[ClinicalDetailsController::class, 'destroy']);

//favourite test
Route::get('/pathalogy-favourite-test',[FavouriteTestController::class, 'index']);
Route::post('/save-pathalogy-favourite-test',[FavouriteTestController::class, 'store']);
Route::get('/edit-favourite-test/{id}',[FavouriteTestController::class, 'edit']);
Route::post('/update-pathalogy-favourite-test/{id}',[FavouriteTestController::class, 'update']);
Route::delete('/delete-pathalogy-favourite-test/{id}',[FavouriteTestController::class, 'destroy']);



Route::get('/radiology-test-name',[RadiologyTestNameController::class, 'index']);
Route::post('/save-radiology-test-name',[RadiologyTestNameController::class, 'store']);
Route::get('/edit-radiology-test-name/{id}',[RadiologyTestNameController::class, 'edit']);
Route::post('/update-radiology-test-name/{id}',[RadiologyTestNameController::class, 'update']);
Route::delete('/delete-radiology-test-name/{id}',[RadiologyTestNameController::class, 'destroy']);


Route::get('/radiology-test-name-by-test-type-id/{id}',[RadiologyTestNameController::class, 'getAllRadiologyTestName']);

Route::get('/radiology-test-type',[RadiologyTestTypeController::class, 'index']);
Route::post('/save-radiology-test-type',[RadiologyTestTypeController::class, 'store']);
Route::get('/edit-radiology-test-type/{id}',[RadiologyTestTypeController::class, 'edit']);
Route::post('/update-radiology-test-type/{id}',[RadiologyTestTypeController::class, 'update']);
Route::delete('/delete-radiology-test-type/{id}',[RadiologyTestTypeController::class, 'destroy']);


Route::get('/clinical-indications',[ClinicalIndicationsController::class, 'index']);
Route::post('/save-clinical-indications',[ClinicalIndicationsController::class, 'store']);
Route::get('/edit-clinical-indications/{id}',[ClinicalIndicationsController::class, 'edit']);
Route::post('/update-clinical-indications/{id}',[ClinicalIndicationsController::class, 'update']);
Route::delete('/delete-clinical-indications/{id}',[ClinicalIndicationsController::class, 'destroy']);

Route::get('/radiology',[RadiologyController::class, 'index']);
Route::post('/save-radiology',[RadiologyController::class, 'store']);
Route::delete('/delete-radiology/{id}',[RadiologyController::class, 'destroy']);


//great doc patient diganosis,diagnosis/procedureFor routes

Route::post('/save-great-doc-dignosis',[GreatDocDiagnosisController::class, 'store']);
Route::get('/great-doc-dignosis',[GreatDocDiagnosisController::class, 'index']);

Route::post('/save-great-doc-procedure',[GreatDocProcedureController::class, 'store']);
Route::get('/great-doc-procedure',[GreatDocProcedureController::class, 'index']);

Route::post('/save-great-doc-reson',[GreatDocResonController::class, 'store']);
Route::get('/get-great-doc-reson/{id}',[GreatDocResonController::class, 'index']);
Route::get('/get-great-doc-reson-for-visit/{id}',[GreatDocResonController::class, 'reson_for_visit']);
Route::delete('/delete-great-doc-reson/{id}',[GreatDocResonController::class, 'deleteReasonForVisit']);
Route::get('/edit-great-doc-reson/{id}',[GreatDocResonController::class, 'editReasonForVisit']);
Route::post('/update-great-doc-reson/{id}',[GreatDocResonController::class, 'updateReasonForVisit']);

Route::post('/save-great-doc-autofill',[MhpAutoFillController::class, 'saveGreatDocAutoFill']);

//great-doc-review-post
Route::post('/save-great-doc-review',[ReviewNameController::class, 'store']);

//great-doc pathology 

Route::post('/save-great-doc-pathology',[GreatDocPathologyController::class, 'store']);
Route::get('/great-doc-pathology/{id}',[GreatDocPathologyController::class, 'index']);
Route::delete('/delete-great-doc-pathology/{id}',[GreatDocPathologyController::class, 'destroy']);
Route::post('/email-send-great-doc-pathology/{id}',[GreatDocPathologyController::class, 'sendMail']);

//great-doc-reminder

Route::post('/save-great-doc-reminder',[GreatDocReminderController::class, 'store']);


// Worth 4 Dot
Route::get('/worth-4-dot',[MhpWorth4DotController::class, 'index']);
Route::post('/save-worth-4-dot',[MhpWorth4DotController::class, 'store']);
Route::get('/edit-worth-4-dot/{id}',[MhpWorth4DotController::class, 'edit']);
Route::post('/update-worth-4-dot/{id}',[MhpWorth4DotController::class, 'update']);
Route::delete('/delete-worth-4-dot/{id}',[MhpWorth4DotController::class, 'destroy']);


// EOM Convergence
Route::get('/eom-convergence',[MhpEOMConvergenceController::class, 'index']);
Route::post('/save-eom-convergence',[MhpEOMConvergenceController::class, 'store']);
Route::get('/edit-eom-convergence/{id}',[MhpEOMConvergenceController::class, 'edit']);
Route::post('/update-eom-convergence/{id}',[MhpEOMConvergenceController::class, 'update']);
Route::delete('/delete-eom-convergence/{id}',[MhpEOMConvergenceController::class, 'destroy']);


// EOM Accomodation
Route::get('/eom-accomodation',[MhpEOMAccomodationController::class, 'index']);
Route::post('/save-eom-accomodation',[MhpEOMAccomodationController::class, 'store']);
Route::get('/edit-eom-accomodation/{id}',[MhpEOMAccomodationController::class, 'edit']);
Route::post('/update-eom-accomodation/{id}',[MhpEOMAccomodationController::class, 'update']);
Route::delete('/delete-eom-accomodation/{id}',[MhpEOMAccomodationController::class, 'destroy']);



// Dry Retinoscopy
Route::get('/dry-retinoscopy',[MhpDryRetinoscopyController::class, 'index']);
Route::post('/save-dry-retinoscopy',[MhpDryRetinoscopyController::class, 'store']);
Route::get('/edit-dry-retinoscopy/{id}',[MhpDryRetinoscopyController::class, 'edit']);
Route::post('/update-dry-retinoscopy/{id}',[MhpDryRetinoscopyController::class, 'update']);
Route::delete('/delete-dry-retinoscopy/{id}',[MhpDryRetinoscopyController::class, 'destroy']);



// Maddox Wing
Route::get('/maddox-wing',[MhpMaddoxWingController::class, 'index']);
Route::post('/save-maddox-wing',[MhpMaddoxWingController::class, 'store']);
Route::get('/edit-maddox-wing/{id}',[MhpMaddoxWingController::class, 'edit']);
Route::post('/update-maddox-wing/{id}',[MhpMaddoxWingController::class, 'update']);
Route::delete('/delete-maddox-wing/{id}',[MhpMaddoxWingController::class, 'destroy']);



// Mid Line Crossing
Route::get('/mid-line-crossing',[MhpMidLineCrossingController::class, 'index']);
Route::post('/save-mid-line-crossing',[MhpMidLineCrossingController::class, 'store']);
Route::get('/edit-mid-line-crossing/{id}',[MhpMidLineCrossingController::class, 'edit']);
Route::post('/update-mid-line-crossing/{id}',[MhpMidLineCrossingController::class, 'update']);
Route::delete('/delete-mid-line-crossing/{id}',[MhpMidLineCrossingController::class, 'destroy']);



// Pen  Grip
Route::get('/pen-grip',[MhpPenGripController::class, 'index']);
Route::post('/save-pen-grip',[MhpPenGripController::class, 'store']);
Route::get('/edit-pen-grip/{id}',[MhpPenGripController::class, 'edit']);
Route::post('/update-pen-grip/{id}',[MhpPenGripController::class, 'update']);
Route::delete('/delete-pen-grip/{id}',[MhpPenGripController::class, 'destroy']);

// Pen  Grip Right
Route::get('/pen-grip-right',[MhpPenGripRightController::class, 'index']);
Route::post('/save-pen-grip-right',[MhpPenGripRightController::class, 'store']);
Route::get('/edit-pen-grip-right/{id}',[MhpPenGripRightController::class, 'edit']);
Route::post('/update-pen-grip-right/{id}',[MhpPenGripRightController::class, 'update']);
Route::delete('/delete-pen-grip-right/{id}',[MhpPenGripRightController::class, 'destroy']);



// Posture
Route::get('/posture',[MhpPostureController::class, 'index']);
Route::post('/save-posture',[MhpPostureController::class, 'store']);
Route::get('/edit-posture/{id}',[MhpPostureController::class, 'edit']);
Route::post('/update-posture/{id}',[MhpPostureController::class, 'update']);
Route::delete('/delete-posture/{id}',[MhpPostureController::class, 'destroy']);



// Color Vision
Route::get('/color-vision',[MhpColorVisionController::class, 'index']);
Route::post('/save-color-vision',[MhpColorVisionController::class, 'store']);
Route::get('/edit-color-vision/{id}',[MhpColorVisionController::class, 'edit']);
Route::post('/update-color-vision/{id}',[MhpColorVisionController::class, 'update']);
Route::delete('/delete-color-vision/{id}',[MhpColorVisionController::class, 'destroy']);



// Dilate
Route::get('/dilate',[MhpDilateController::class, 'index']);
Route::post('/save-dilate',[MhpDilateController::class, 'store']);
Route::get('/edit-dilate/{id}',[MhpDilateController::class, 'edit']);
Route::post('/update-dilate/{id}',[MhpDilateController::class, 'update']);
Route::delete('/delete-dilate/{id}',[MhpDilateController::class, 'destroy']);



// CD Disc
Route::get('/cd-disc',[MhpCDDiscController::class, 'index']);
Route::post('/save-cd-disc',[MhpCDDiscController::class, 'store']);
Route::get('/edit-cd-disc/{id}',[MhpCDDiscController::class, 'edit']);
Route::post('/update-cd-disc/{id}',[MhpCDDiscController::class, 'update']);
Route::delete('/delete-cd-disc/{id}',[MhpCDDiscController::class, 'destroy']);


// Movement
Route::get('/movement',[MhpMovementController::class, 'index']);
Route::post('/save-movement',[MhpMovementController::class, 'store']);
Route::get('/edit-movement/{id}',[MhpMovementController::class, 'edit']);
Route::post('/update-movement/{id}',[MhpMovementController::class, 'update']);
Route::delete('/delete-movement/{id}',[MhpMovementController::class, 'destroy']);


// TenderOverSpinusProcessAt
Route::get('/tender-over-spinus-process-at',[MhpTenderOverSpinusProcessAtController::class, 'index']);
Route::post('/save-tender-over-spinus-process-at',[MhpTenderOverSpinusProcessAtController::class, 'store']);
Route::get('/edit-tender-over-spinus-process-at/{id}',[MhpTenderOverSpinusProcessAtController::class, 'edit']);
Route::post('/update-tender-over-spinus-process-at/{id}',[MhpTenderOverSpinusProcessAtController::class, 'update']);
Route::delete('/delete-tender-over-spinus-process-at/{id}',[MhpTenderOverSpinusProcessAtController::class, 'destroy']);


// TenernessOverFacetJoin
Route::get('/tenerness-over-facet-join',[MhpTenernessOverFacetJoinController::class, 'index']);
Route::post('/save-tenerness-over-facet-join',[MhpTenernessOverFacetJoinController::class, 'store']);
Route::get('/edit-tenerness-over-facet-join/{id}',[MhpTenernessOverFacetJoinController::class, 'edit']);
Route::post('/update-tenerness-over-facet-join/{id}',[MhpTenernessOverFacetJoinController::class, 'update']);
Route::delete('/delete-tenerness-over-facet-join/{id}',[MhpTenernessOverFacetJoinController::class, 'destroy']);


// Inspection
Route::get('/inspection',[MhpInspectionController::class, 'index']);
Route::post('/save-inspection',[MhpInspectionController::class, 'store']);
Route::get('/edit-inspection/{id}',[MhpInspectionController::class, 'edit']);
Route::post('/update-inspection/{id}',[MhpInspectionController::class, 'update']);
Route::delete('/delete-inspection/{id}',[MhpInspectionController::class, 'destroy']);


// Sudden Anaesthesia
Route::get('/sudden-anaesthesia',[MhpSuddenAnaesthesiaController::class, 'index']);
Route::post('/save-sudden-anaesthesia',[MhpSuddenAnaesthesiaController::class, 'store']);
Route::get('/edit-sudden-anaesthesia/{id}',[MhpSuddenAnaesthesiaController::class, 'edit']);
Route::post('/update-sudden-anaesthesia/{id}',[MhpSuddenAnaesthesiaController::class, 'update']);
Route::delete('/delete-sudden-anaesthesia/{id}',[MhpSuddenAnaesthesiaController::class, 'destroy']);


// Sudden Anaesthesia
Route::get('/thoracic-kyphosis',[MhpThoracicKyphosisController::class, 'index']);
Route::post('/save-thoracic-kyphosis',[MhpThoracicKyphosisController::class, 'store']);
Route::get('/edit-thoracic-kyphosis/{id}',[MhpThoracicKyphosisController::class, 'edit']);
Route::post('/update-thoracic-kyphosis/{id}',[MhpThoracicKyphosisController::class, 'update']);
Route::delete('/delete-thoracic-kyphosis/{id}',[MhpThoracicKyphosisController::class, 'destroy']);



// Lumber Lordosis
Route::get('/lumber-lordosis',[MhpLumberLordosisController::class, 'index']);
Route::post('/save-lumber-lordosis',[MhpLumberLordosisController::class, 'store']);
Route::get('/edit-lumber-lordosis/{id}',[MhpLumberLordosisController::class, 'edit']);
Route::post('/update-lumber-lordosis/{id}',[MhpLumberLordosisController::class, 'update']);
Route::delete('/delete-lumber-lordosis/{id}',[MhpLumberLordosisController::class, 'destroy']);


// Spine
Route::get('/spine',[MhpSpineController::class, 'index']);
Route::post('/save-spine',[MhpSpineController::class, 'store']);
Route::get('/edit-spine/{id}',[MhpSpineController::class, 'edit']);
Route::post('/update-spine/{id}',[MhpSpineController::class, 'update']);
Route::delete('/delete-spine/{id}',[MhpSpineController::class, 'destroy']);


// PainIntoKnee
Route::get('/pain-into-knee',[MhpPainIntoKneeController::class, 'index']);
Route::post('/save-pain-into-knee',[MhpPainIntoKneeController::class, 'store']);
Route::get('/edit-pain-into-knee/{id}',[MhpPainIntoKneeController::class, 'edit']);
Route::post('/update-pain-into-knee/{id}',[MhpPainIntoKneeController::class, 'update']);
Route::delete('/delete-pain-into-knee/{id}',[MhpPainIntoKneeController::class, 'destroy']);



// Shape And Contour
Route::get('/shape-and-contour',[MhpShapeAndContourController::class, 'index']);
Route::post('/save-shape-and-contour',[MhpShapeAndContourController::class, 'store']);
Route::get('/edit-shape-and-contour/{id}',[MhpShapeAndContourController::class, 'edit']);
Route::post('/update-shape-and-contour/{id}',[MhpShapeAndContourController::class, 'update']);
Route::delete('/delete-shape-and-contour/{id}',[MhpShapeAndContourController::class, 'destroy']);


// Anterior View
Route::get('/anterior-view',[MhpAnteriorViewController::class, 'index']);
Route::post('/save-anterior-view',[MhpAnteriorViewController::class, 'store']);
Route::get('/edit-anterior-view/{id}',[MhpAnteriorViewController::class, 'edit']);
Route::post('/update-anterior-view/{id}',[MhpAnteriorViewController::class, 'update']);
Route::delete('/delete-anterior-view/{id}',[MhpAnteriorViewController::class, 'destroy']);


// Level of spine of scapula
Route::get('/level-of-spine-of-scapula',[MhpLevelOfSpineOfScapulaController::class, 'index']);
Route::post('/save-level-of-spine-of-scapula',[MhpLevelOfSpineOfScapulaController::class, 'store']);
Route::get('/edit-level-of-spine-of-scapula/{id}',[MhpLevelOfSpineOfScapulaController::class, 'edit']);
Route::post('/update-level-of-spine-of-scapula/{id}',[MhpLevelOfSpineOfScapulaController::class, 'update']);
Route::delete('/delete-level-of-spine-of-scapula/{id}',[MhpLevelOfSpineOfScapulaController::class, 'destroy']);


// Winged scapula
Route::get('/winged-scapula',[MhpWingedScapulaController::class, 'index']);
Route::post('/save-winged-scapula',[MhpWingedScapulaController::class, 'store']);
Route::get('/edit-winged-scapula/{id}',[MhpWingedScapulaController::class, 'edit']);
Route::post('/update-winged-scapula/{id}',[MhpWingedScapulaController::class, 'update']);
Route::delete('/delete-winged-scapula/{id}',[MhpWingedScapulaController::class, 'destroy']);


// Wrist
Route::get('/wrist',[MhpWristController::class, 'index']);
Route::post('/save-wrist',[MhpWristController::class, 'store']);
Route::get('/edit-wrist/{id}',[MhpWristController::class, 'edit']);
Route::post('/update-wrist/{id}',[MhpWristController::class, 'update']);
Route::delete('/delete-wrist/{id}',[MhpWristController::class, 'destroy']);


// Metacarpophalangeal Joint
Route::get('/metacarpophalangeal-joint',[MhpMetacarpophalangealJointController::class, 'index']);
Route::post('/save-metacarpophalangeal-joint',[MhpMetacarpophalangealJointController::class, 'store']);
Route::get('/edit-metacarpophalangeal-joint/{id}',[MhpMetacarpophalangealJointController::class, 'edit']);
Route::post('/update-metacarpophalangeal-joint/{id}',[MhpMetacarpophalangealJointController::class, 'update']);
Route::delete('/delete-metacarpophalangeal-joint/{id}',[MhpMetacarpophalangealJointController::class, 'destroy']);



// Proximal Interphalangeal Joint
Route::get('/proximal-interphalangeal-joint',[MhpProximalInterphalangealJointController::class, 'index']);
Route::post('/save-proximal-interphalangeal-joint',[MhpProximalInterphalangealJointController::class, 'store']);
Route::get('/edit-proximal-interphalangeal-joint/{id}',[MhpProximalInterphalangealJointController::class, 'edit']);
Route::post('/update-proximal-interphalangeal-joint/{id}',[MhpProximalInterphalangealJointController::class, 'update']);
Route::delete('/delete-proximal-interphalangeal-joint/{id}',[MhpProximalInterphalangealJointController::class, 'destroy']);



// Distal Interphalangeal Joint
Route::get('/distal-interphalangeal-joint',[MhpDistalInterphalangealJointController::class, 'index']);
Route::post('/save-distal-interphalangeal-joint',[MhpDistalInterphalangealJointController::class, 'store']);
Route::get('/edit-distal-interphalangeal-joint/{id}',[MhpDistalInterphalangealJointController::class, 'edit']);
Route::post('/update-distal-interphalangeal-joint/{id}',[MhpDistalInterphalangealJointController::class, 'update']);
Route::delete('/delete-distal-interphalangeal-joint/{id}',[MhpDistalInterphalangealJointController::class, 'destroy']);



// Parietal Lobe
Route::get('/parietal-lobe',[MhpParietalLobeController::class, 'index']);
Route::post('/save-parietal-lobe',[MhpParietalLobeController::class, 'store']);
Route::get('/edit-parietal-lobe/{id}',[MhpParietalLobeController::class, 'edit']);
Route::post('/update-parietal-lobe/{id}',[MhpParietalLobeController::class, 'update']);
Route::delete('/delete-parietal-lobe/{id}',[MhpParietalLobeController::class, 'destroy']);


// Continuous
Route::get('/continuous',[MhpContinuousController::class, 'index']);
Route::post('/save-continuous',[MhpContinuousController::class, 'store']);
Route::get('/edit-continuous/{id}',[MhpContinuousController::class, 'edit']);
Route::post('/update-continuous/{id}',[MhpContinuousController::class, 'update']);
Route::delete('/delete-continuous/{id}',[MhpContinuousController::class, 'destroy']);


// Intermittent
Route::get('/intermittent',[MhpIntermittentController::class, 'index']);
Route::post('/save-intermittent',[MhpIntermittentController::class, 'store']);
Route::get('/edit-intermittent/{id}',[MhpIntermittentController::class, 'edit']);
Route::post('/update-intermittent/{id}',[MhpIntermittentController::class, 'update']);
Route::delete('/delete-intermittent/{id}',[MhpIntermittentController::class, 'destroy']);


// Speech Nurologies
Route::get('/speech-nurologies',[MhpSpeechNurologiesController::class, 'index']);
Route::post('/save-speech-nurologies',[MhpSpeechNurologiesController::class, 'store']);
Route::get('/edit-speech-nurologies/{id}',[MhpSpeechNurologiesController::class, 'edit']);
Route::post('/update-speech-nurologies/{id}',[MhpSpeechNurologiesController::class, 'update']);
Route::delete('/delete-speech-nurologies/{id}',[MhpSpeechNurologiesController::class, 'destroy']);



// Frontal Lobe
Route::get('/frontal-lobe',[MhpFrontalLobeController::class, 'index']);
Route::post('/save-frontal-lobe',[MhpFrontalLobeController::class, 'store']);
Route::get('/edit-frontal-lobe/{id}',[MhpFrontalLobeController::class, 'edit']);
Route::post('/update-frontal-lobe/{id}',[MhpFrontalLobeController::class, 'update']);
Route::delete('/delete-frontal-lobe/{id}',[MhpFrontalLobeController::class, 'destroy']);



// Temporal Lobe
Route::get('/temporal-lobe',[MhpTemporalLobeController::class, 'index']);
Route::post('/save-temporal-lobe',[MhpTemporalLobeController::class, 'store']);
Route::get('/edit-temporal-lobe/{id}',[MhpTemporalLobeController::class, 'edit']);
Route::post('/update-temporal-lobe/{id}',[MhpTemporalLobeController::class, 'update']);
Route::delete('/delete-temporal-lobe/{id}',[MhpTemporalLobeController::class, 'destroy']);



// Occipital Lobe
Route::get('/occipital-lobe',[MhpOccipitalLobeController::class, 'index']);
Route::post('/save-occipital-lobe',[MhpOccipitalLobeController::class, 'store']);
Route::get('/edit-occipital-lobe/{id}',[MhpOccipitalLobeController::class, 'edit']);
Route::post('/update-occipital-lobe/{id}',[MhpOccipitalLobeController::class, 'update']);
Route::delete('/delete-occipital-lobe/{id}',[MhpOccipitalLobeController::class, 'destroy']);



// All Body Part Front Back
Route::get('/all-body-part-front-back',[MhpAllBodyPartFrontBackController::class, 'index']);
Route::post('/save-all-body-part-front-back',[MhpAllBodyPartFrontBackController::class, 'store']);
Route::get('/edit-all-body-part-front-back/{id}',[MhpAllBodyPartFrontBackController::class, 'edit']);
Route::post('/update-all-body-part-front-back/{id}',[MhpAllBodyPartFrontBackController::class, 'update']);
Route::delete('/delete-all-body-part-front-back/{id}',[MhpAllBodyPartFrontBackController::class, 'destroy']);


// Areolar
Route::get('/areolar',[MhpAreolarController::class, 'index']);
Route::post('/save-areolar',[MhpAreolarController::class, 'store']);
Route::get('/edit-areolar/{id}',[MhpAreolarController::class, 'edit']);
Route::post('/update-areolar/{id}',[MhpAreolarController::class, 'update']);
Route::delete('/delete-areolar/{id}',[MhpAreolarController::class, 'destroy']);


// Skin Shape
Route::get('/skin-shape',[MhpSkinShapeController::class, 'index']);
Route::post('/save-skin-shape',[MhpSkinShapeController::class, 'store']);
Route::get('/edit-skin-shape/{id}',[MhpSkinShapeController::class, 'edit']);
Route::post('/update-skin-shape/{id}',[MhpSkinShapeController::class, 'update']);
Route::delete('/delete-skin-shape/{id}',[MhpSkinShapeController::class, 'destroy']);


// Color
Route::get('/color',[MhpColorController::class, 'index']);
Route::post('/save-color',[MhpColorController::class, 'store']);
Route::get('/edit-color/{id}',[MhpColorController::class, 'edit']);
Route::post('/update-color/{id}',[MhpColorController::class, 'update']);
Route::delete('/delete-color/{id}',[MhpColorController::class, 'destroy']);


// Palpation
Route::get('/palpation',[MhpPalpationController::class, 'index']);
Route::post('/save-palpation',[MhpPalpationController::class, 'store']);
Route::get('/edit-palpation/{id}',[MhpPalpationController::class, 'edit']);
Route::post('/update-palpation/{id}',[MhpPalpationController::class, 'update']);
Route::delete('/delete-palpation/{id}',[MhpPalpationController::class, 'destroy']);


// Temparature
Route::get('/temparature',[MhpTemparatureController::class, 'index']);
Route::post('/save-temparature',[MhpTemparatureController::class, 'store']);
Route::get('/edit-temparature/{id}',[MhpTemparatureController::class, 'edit']);
Route::post('/update-temparature/{id}',[MhpTemparatureController::class, 'update']);
Route::delete('/delete-temparature/{id}',[MhpTemparatureController::class, 'destroy']);


// Arrangements
Route::get('/arrangements',[MhpArrangementsController::class, 'index']);
Route::post('/save-arrangements',[MhpArrangementsController::class, 'store']);
Route::get('/edit-arrangements/{id}',[MhpArrangementsController::class, 'edit']);
Route::post('/update-arrangements/{id}',[MhpArrangementsController::class, 'update']);
Route::delete('/delete-arrangements/{id}',[MhpArrangementsController::class, 'destroy']);

// Skin Symptoms
Route::get('/skin-symptoms',[MhpSkinSymptomsController::class, 'index']);
Route::post('/save-skin-symptoms',[MhpSkinSymptomsController::class, 'store']);
Route::get('/edit-skin-symptoms/{id}',[MhpSkinSymptomsController::class, 'edit']);
Route::post('/update-skin-symptoms/{id}',[MhpSkinSymptomsController::class, 'update']);
Route::delete('/delete-skin-symptoms/{id}',[MhpSkinSymptomsController::class, 'destroy']);

// Skin Type
Route::get('/skin-type',[MhpSkinTypeController::class, 'index']);
Route::post('/save-skin-type',[MhpSkinTypeController::class, 'store']);
Route::get('/edit-skin-type/{id}',[MhpSkinTypeController::class, 'edit']);
Route::post('/update-skin-type/{id}',[MhpSkinTypeController::class, 'update']);
Route::delete('/delete-skin-type/{id}',[MhpSkinTypeController::class, 'destroy']);

// inspection Look
Route::get("/inspection-look",[MhpInspectionLookController::class,'index']);
Route::post("/add-inspection-look",[MhpInspectionLookController::class,'store']);
Route::get("/edit-inspection-look/{id}",[MhpInspectionLookController::class,'edit']);
Route::post("/update-inspection-look/{id}",[MhpInspectionLookController::class,'update']);
Route::delete("/delete-inspection-look/{id}",[MhpInspectionLookController::class,'destroy']);

// PainAlongAnterior
Route::get("/pain-along-anterior",[MhpPainAlongAnteriorController::class,'index']);
Route::post("/add-pain-along-anterior",[MhpPainAlongAnteriorController::class,'store']);
Route::get("/edit-pain-along-anterior/{id}",[MhpPainAlongAnteriorController::class,'edit']);
Route::post("/update-pain-along-anterior/{id}",[MhpPainAlongAnteriorController::class,'update']);
Route::delete("/delete-pain-along-anterior/{id}",[MhpPainAlongAnteriorController::class,'destroy']);

// painOverPosterior
Route::get("/pain-over-posterior",[MhpPainOverPosteriorController::class,'index']);
Route::post("/add-pain-over-posterior",[MhpPainOverPosteriorController::class,'store']);
Route::get("/edit-pain-over-posterior/{id}",[MhpPainOverPosteriorController::class,'edit']);
Route::post("/update-pain-over-posterior/{id}",[MhpPainOverPosteriorController::class,'update']);
Route::delete("/delete-pain-over-posterior/{id}",[MhpPainOverPosteriorController::class,'destroy']);

// WalkOnHeels
Route::get("/walk-on-heels",[MhpWalkOnHeelsController::class,'index']);
Route::post("/add-walk-on-heels",[MhpWalkOnHeelsController::class,'store']);
Route::get("/edit-walk-on-heels/{id}",[MhpWalkOnHeelsController::class,'edit']);
Route::post("/update-walk-on-heels/{id}",[MhpWalkOnHeelsController::class,'update']);
Route::delete("/delete-walk-on-heels/{id}",[MhpWalkOnHeelsController::class,'destroy']);

// PostureThoraco
Route::get("/posture-thoraco",[MhpPostureThoracoController::class,'index']);
Route::post("/add-posture-thoraco",[MhpPostureThoracoController::class,'store']);
Route::get("/edit-posture-thoraco/{id}",[MhpPostureThoracoController::class,'edit']);
Route::post("/update-posture-thoraco/{id}",[MhpPostureThoracoController::class,'update']);
Route::delete("/delete-posture-thoraco/{id}",[MhpPostureThoracoController::class,'destroy']);

// TenderOverSpinusThoraco
Route::get("/tender-over-spinus-thoraco",[MhpTenderOverSpinusThoracoController::class,'index']);
Route::post("/add-tender-over-spinus-thoraco",[MhpTenderOverSpinusThoracoController::class,'store']);
Route::get("/edit-tender-over-spinus-thoraco/{id}",[MhpTenderOverSpinusThoracoController::class,'edit']);
Route::post("/update-tender-over-spinus-thoraco/{id}",[MhpTenderOverSpinusThoracoController::class,'update']);
Route::delete("/delete-tender-over-spinus-thoraco/{id}",[MhpTenderOverSpinusThoracoController::class,'destroy']);

// TendernessOverFacetThoraco
Route::get("/tenderness-over-facet-thoraco",[MhpTendernessOverFacetThoracoController::class,'index']);
Route::post("/add-tenderness-over-facet-thoraco",[MhpTendernessOverFacetThoracoController::class,'store']);
Route::get("/edit-tenderness-over-facet-thoraco/{id}",[MhpTendernessOverFacetThoracoController::class,'edit']);
Route::post("/update-tenderness-over-facet-thoraco/{id}",[MhpTendernessOverFacetThoracoController::class,'update']);
Route::delete("/delete-tenderness-over-facet-thoraco/{id}",[MhpTendernessOverFacetThoracoController::class,'destroy']);

// TendernessOverFacetLRBThoraco
Route::get("/tenderness-over-facet-lrb-thoraco",[MhpTendernessOverFacetLRBThoracoController::class,'index']);
Route::post("/add-tenderness-over-facet-lrb-thoraco",[MhpTendernessOverFacetLRBThoracoController::class,'store']);
Route::get("/edit-tenderness-over-facet-lrb-thoraco/{id}",[MhpTendernessOverFacetLRBThoracoController::class,'edit']);
Route::post("/update-tenderness-over-facet-lrb-thoraco/{id}",[MhpTendernessOverFacetLRBThoracoController::class,'update']);
Route::delete("/delete-tenderness-over-facet-lrb-thoraco/{id}",[MhpTendernessOverFacetLRBThoracoController::class,'destroy']);

// Tender/Tenerness Over L1 To L6 Thoraco
Route::get("/tender-tenerness-over-l1-to-l6-thoraco",[MhpTenderTenernessOverL1ToL6ThoracoController::class,'index']);
Route::post("/add-tender-tenerness-over-l1-to-l6-thoraco",[MhpTenderTenernessOverL1ToL6ThoracoController::class,'store']);
Route::get("/edit-tender-tenerness-over-l1-to-l6-thoraco/{id}",[MhpTenderTenernessOverL1ToL6ThoracoController::class,'edit']);
Route::post("/update-tender-tenerness-over-l1-to-l6-thoraco/{id}",[MhpTenderTenernessOverL1ToL6ThoracoController::class,'update']);
Route::delete("/delete-tender-tenerness-over-l1-to-l6-thoraco/{id}",[MhpTenderTenernessOverL1ToL6ThoracoController::class,'destroy']);

// LyingOnCouch
Route::get("/lying-on-couch",[MhpLyingOnCouchController::class,'index']);
Route::post("/add-lying-on-couch",[MhpLyingOnCouchController::class,'store']);
Route::get("/edit-lying-on-couch/{id}",[MhpLyingOnCouchController::class,'edit']);
Route::post("/update-lying-on-couch/{id}",[MhpLyingOnCouchController::class,'update']);
Route::delete("/delete-lying-on-couch/{id}",[MhpLyingOnCouchController::class,'destroy']);

// moveHipPelvis
Route::get("/move-hip-pelvis",[MhpMoveHipPelvisController::class,'index']);
Route::post("/add-move-hip-pelvis",[MhpMoveHipPelvisController::class,'store']);
Route::get("/edit-move-hip-pelvis/{id}",[MhpMoveHipPelvisController::class,'edit']);
Route::post("/update-move-hip-pelvis/{id}",[MhpMoveHipPelvisController::class,'update']);
Route::delete("/delete-move-hip-pelvis/{id}",[MhpMoveHipPelvisController::class,'destroy']);

// L1 and L2 Hip Flexion
Route::get("/l1-and-l2-hip-flexion",[MhpL1L2HipFlexionController::class,'index']);
Route::post("/add-l1-and-l2-hip-flexion",[MhpL1L2HipFlexionController::class,'store']);
Route::get("/edit-l1-and-l2-hip-flexion/{id}",[MhpL1L2HipFlexionController::class,'edit']);
Route::post("/update-l1-and-l2-hip-flexion/{id}",[MhpL1L2HipFlexionController::class,'update']);
Route::delete("/delete-l1-and-l2-hip-flexion/{id}",[MhpL1L2HipFlexionController::class,'destroy']);

// L3 To L5 Power
Route::get("/l3-to-l5-power",[MhpL3ToL5PowerController::class,'index']);
Route::post("/add-l3-to-l5-power",[MhpL3ToL5PowerController::class,'store']);
Route::get("/edit-l3-to-l5-power/{id}",[MhpL3ToL5PowerController::class,'edit']);
Route::post("/update-l3-to-l5-power/{id}",[MhpL3ToL5PowerController::class,'update']);
Route::delete("/delete-l3-to-l5-power/{id}",[MhpL3ToL5PowerController::class,'destroy']);

// L1 and L2 Sensation
Route::get("/l1-and-l2-sensation",[MhpL1L2SensationController::class,'index']);
Route::post("/add-l1-and-l2-sensation",[MhpL1L2SensationController::class,'store']);
Route::get("/edit-l1-and-l2-sensation/{id}",[MhpL1L2SensationController::class,'edit']);
Route::post("/update-l1-and-l2-sensation/{id}",[MhpL1L2SensationController::class,'update']);
Route::delete("/delete-l1-and-l2-sensation/{id}",[MhpL1L2SensationController::class,'destroy']);

// L3 To L5 Sensation
Route::get("/l3-to-l5-sensation",[MhpL3ToL5SensationController::class,'index']);
Route::post("/add-l3-to-l5-sensation",[MhpL3ToL5SensationController::class,'store']);
Route::get("/edit-l3-to-l5-sensation/{id}",[MhpL3ToL5SensationController::class,'edit']);
Route::post("/update-l3-to-l5-sensation/{id}",[MhpL3ToL5SensationController::class,'update']);
Route::delete("/delete-l3-to-l5-sensation/{id}",[MhpL3ToL5SensationController::class,'destroy']);

//S1 To S4 Test
Route::get("/s1-to-s4-test",[MhpS1ToS4TestController::class,'index']);
Route::post("/add-s1-to-s4-test",[MhpS1ToS4TestController::class,'store']);
Route::get("/edit-s1-to-s4-test/{id}",[MhpS1ToS4TestController::class,'edit']);
Route::post("/update-s1-to-s4-test/{id}",[MhpS1ToS4TestController::class,'update']);
Route::delete("/delete-s1-to-s4-test/{id}",[MhpS1ToS4TestController::class,'destroy']);

//Test Hip Pelvis
Route::get("/test-hip-pelvis",[MhpTestHipPelvisController::class,'index']);
Route::post("/add-test-hip-pelvis",[MhpTestHipPelvisController::class,'store']);
Route::get("/edit-test-hip-pelvis/{id}",[MhpTestHipPelvisController::class,'edit']);
Route::post("/update-test-hip-pelvis/{id}",[MhpTestHipPelvisController::class,'update']);
Route::delete("/delete-test-hip-pelvis/{id}",[MhpTestHipPelvisController::class,'destroy']);

//Inspection Look Hip Pelvis
Route::get("/inspection-look-hip-pelvis",[MhpInspectionLookHipPelvisController::class,'index']);
Route::post("/add-inspection-look-hip-pelvis",[MhpInspectionLookHipPelvisController::class,'store']);
Route::get("/edit-inspection-look-hip-pelvis/{id}",[MhpInspectionLookHipPelvisController::class,'edit']);
Route::post("/update-inspection-look-hip-pelvis/{id}",[MhpInspectionLookHipPelvisController::class,'update']);
Route::delete("/delete-inspection-look-hip-pelvis/{id}",[MhpInspectionLookHipPelvisController::class,'destroy']);


//Shoulder Movements
Route::get("/shoulder-movements",[MhpShoulderMovementsController::class,'index']);
Route::post("/add-shoulder-movements",[MhpShoulderMovementsController::class,'store']);
Route::get("/edit-shoulder-movements/{id}",[MhpShoulderMovementsController::class,'edit']);
Route::post("/update-shoulder-movements/{id}",[MhpShoulderMovementsController::class,'update']);
Route::delete("/delete-shoulder-movements/{id}",[MhpShoulderMovementsController::class,'destroy']);


//Painful Arc
Route::get("/painful-arc",[MhpPainfulArcController::class,'index']);
Route::post("/add-painful-arc",[MhpPainfulArcController::class,'store']);
Route::get("/edit-painful-arc/{id}",[MhpPainfulArcController::class,'edit']);
Route::post("/update-painful-arc/{id}",[MhpPainfulArcController::class,'update']);
Route::delete("/delete-painful-arc/{id}",[MhpPainfulArcController::class,'destroy']);


//Resisted Movement
Route::get("/resisted-movement",[MhpResistedMovementController::class,'index']);
Route::post("/add-resisted-movement",[MhpResistedMovementController::class,'store']);
Route::get("/edit-resisted-movement/{id}",[MhpResistedMovementController::class,'edit']);
Route::post("/update-resisted-movement/{id}",[MhpResistedMovementController::class,'update']);
Route::delete("/delete-resisted-movement/{id}",[MhpResistedMovementController::class,'destroy']);


//Nails
Route::get("/nails",[MhpNailsController::class,'index']);
Route::post("/add-nails",[MhpNailsController::class,'store']);
Route::get("/edit-nails/{id}",[MhpNailsController::class,'edit']);
Route::post("/update-nails/{id}",[MhpNailsController::class,'update']);
Route::delete("/delete-nails/{id}",[MhpNailsController::class,'destroy']);


//Dorsum Of Hand
Route::get("/dorsum-of-hand",[MhpDorsumOfHandController::class,'index']);
Route::post("/add-dorsum-of-hand",[MhpDorsumOfHandController::class,'store']);
Route::get("/edit-dorsum-of-hand/{id}",[MhpDorsumOfHandController::class,'edit']);
Route::post("/update-dorsum-of-hand/{id}",[MhpDorsumOfHandController::class,'update']);
Route::delete("/delete-dorsum-of-hand/{id}",[MhpDorsumOfHandController::class,'destroy']);


//Fingers
Route::get("/fingers",[MhpFingersController::class,'index']);
Route::post("/add-fingers",[MhpFingersController::class,'store']);
Route::get("/edit-fingers/{id}",[MhpFingersController::class,'edit']);
Route::post("/update-fingers/{id}",[MhpFingersController::class,'update']);
Route::delete("/delete-fingers/{id}",[MhpFingersController::class,'destroy']);


//Tenders
Route::get("/tenders",[MhpTendersController::class,'index']);
Route::post("/add-tenders",[MhpTendersController::class,'store']);
Route::get("/edit-tenders/{id}",[MhpTendersController::class,'edit']);
Route::post("/update-tenders/{id}",[MhpTendersController::class,'update']);
Route::delete("/delete-tenders/{id}",[MhpTendersController::class,'destroy']);


//FlexonTendons
Route::get("/flexon-tendons",[MhpFlexonTendonsController::class,'index']);
Route::post("/add-flexon-tendons",[MhpFlexonTendonsController::class,'store']);
Route::get("/edit-flexon-tendons/{id}",[MhpFlexonTendonsController::class,'edit']);
Route::post("/update-flexon-tendons/{id}",[MhpFlexonTendonsController::class,'update']);
Route::delete("/delete-flexon-tendons/{id}",[MhpFlexonTendonsController::class,'destroy']);

// Wrist Palpation
Route::get('/wrist-palpation',[MhpWristPalpationController::class, 'index']);
Route::post('/save-wrist-palpation',[MhpWristPalpationController::class, 'store']);
Route::get('/edit-wrist-palpation/{id}',[MhpWristPalpationController::class, 'edit']);
Route::post('/update-wrist-palpation/{id}',[MhpWristPalpationController::class, 'update']);
Route::delete('/delete-wrist-palpation/{id}',[MhpWristPalpationController::class, 'destroy']);

//Metacarpophalangeal Joint Palpation
Route::get('/metacarpophalangeal-joint-palpation',[MhpMetacarpophalangealJointPalpationController::class, 'index']);
Route::post('/save-metacarpophalangeal-joint-palpation',[MhpMetacarpophalangealJointPalpationController::class, 'store']);
Route::get('/edit-metacarpophalangeal-joint-palpation/{id}',[MhpMetacarpophalangealJointPalpationController::class, 'edit']);
Route::post('/update-metacarpophalangeal-joint-palpation/{id}',[MhpMetacarpophalangealJointPalpationController::class, 'update']);
Route::delete('/delete-metacarpophalangeal-joint-palpation/{id}',[MhpMetacarpophalangealJointPalpationController::class, 'destroy']);

//Proximal Interphalangeal Joint Palpation
Route::get('/proximal-interphalangeal-palpation',[MhpProximalInterphalangealPalpationController::class, 'index']);
Route::post('/save-proximal-interphalangeal-palpation',[MhpProximalInterphalangealPalpationController::class, 'store']);
Route::get('/edit-proximal-interphalangeal-palpation/{id}',[MhpProximalInterphalangealPalpationController::class, 'edit']);
Route::post('/update-proximal-interphalangeal-palpation/{id}',[MhpProximalInterphalangealPalpationController::class, 'update']);
Route::delete('/delete-proximal-interphalangeal-palpation/{id}',[MhpProximalInterphalangealPalpationController::class, 'destroy']);

//Flexor Digitorum Profundus Test
Route::get('/flexor-digitorum-profundus-test',[MhpFlexorDigitorumProfundusTestController::class, 'index']);
Route::post('/add-flexor-digitorum-profundus-test',[MhpFlexorDigitorumProfundusTestController::class, 'store']);
Route::get('/edit-flexor-digitorum-profundus-test/{id}',[MhpFlexorDigitorumProfundusTestController::class, 'edit']);
Route::post('/update-flexor-digitorum-profundus-test/{id}',[MhpFlexorDigitorumProfundusTestController::class, 'update']);
Route::delete('/delete-flexor-digitorum-profundus-test/{id}',[MhpFlexorDigitorumProfundusTestController::class, 'destroy']);

//Flexor Digitorum Superficialis Test
Route::get('/flexor-digitorum-superficialis-test',[MhpFlexorDigitorumSuperficialisTestController::class, 'index']);
Route::post('/add-flexor-digitorum-superficialis-test',[MhpFlexorDigitorumSuperficialisTestController::class, 'store']);
Route::get('/edit-flexor-digitorum-superficialis-test/{id}',[MhpFlexorDigitorumSuperficialisTestController::class, 'edit']);
Route::post('/update-flexor-digitorum-superficialis-test/{id}',[MhpFlexorDigitorumSuperficialisTestController::class, 'update']);
Route::delete('/delete-flexor-digitorum-superficialis-test/{id}',[MhpFlexorDigitorumSuperficialisTestController::class, 'destroy']);

//InspectionMaleFemale
Route::get('/inspection-male-female',[MhpInspectionMaleFemaleController::class, 'index']);
Route::post('/save-inspection-male-female',[MhpInspectionMaleFemaleController::class, 'store']);
Route::get('/edit-inspection-male-female/{id}',[MhpInspectionMaleFemaleController::class, 'edit']);
Route::post('/update-inspection-male-female/{id}',[MhpInspectionMaleFemaleController::class, 'update']);
Route::delete('/delete-inspection-male-female/{id}',[MhpInspectionMaleFemaleController::class, 'destroy']);

//At90FlextionPalpation
Route::get('/at-90-flextion',[MhpAt90FlextionPalpationController::class, 'index']);
Route::post('/save-at-90-flextion',[MhpAt90FlextionPalpationController::class, 'store']);
Route::get('/edit-at-90-flextion/{id}',[MhpAt90FlextionPalpationController::class, 'edit']);
Route::post('/update-at-90-flextion/{id}',[MhpAt90FlextionPalpationController::class, 'update']);
Route::delete('/delete-at-90-flextion/{id}',[MhpAt90FlextionPalpationController::class, 'destroy']);

//AtFullFlextionPalpation
Route::get('/at-full-flextion',[MhpAtFullFlextionPalpationController::class, 'index']);
Route::post('/save-at-full-flextion',[MhpAtFullFlextionPalpationController::class, 'store']);
Route::get('/edit-at-full-flextion/{id}',[MhpAtFullFlextionPalpationController::class, 'edit']);
Route::post('/update-at-full-flextion/{id}',[MhpAtFullFlextionPalpationController::class, 'update']);
Route::delete('/delete-at-full-flextion/{id}',[MhpAtFullFlextionPalpationController::class, 'destroy']);

//Flextion0to150Examination
Route::get('/flextion-0-to-150-examination',[MhpFlextion0to150ExaminationController::class, 'index']);
Route::post('/save-flextion-0-to-150-examination',[MhpFlextion0to150ExaminationController::class, 'store']);
Route::get('/edit-flextion-0-to-150-examination/{id}',[MhpFlextion0to150ExaminationController::class, 'edit']);
Route::post('/update-flextion-0-to-150-examination/{id}',[MhpFlextion0to150ExaminationController::class, 'update']);
Route::delete('/delete-flextion-0-to-150-examination/{id}',[MhpFlextion0to150ExaminationController::class, 'destroy']);

//AnteriorViewKnee
Route::get('/anterior-view-knee',[MhpAnteriorViewKneeController::class, 'index']);
Route::post('/save-anterior-view-knee',[MhpAnteriorViewKneeController::class, 'store']);
Route::get('/edit-anterior-view-knee/{id}',[MhpAnteriorViewKneeController::class, 'edit']);
Route::post('/update-anterior-view-knee/{id}',[MhpAnteriorViewKneeController::class, 'update']);
Route::delete('/delete-anterior-view-knee/{id}',[MhpAnteriorViewKneeController::class, 'destroy']);

//PosteriorViewKnee
Route::get('/posterior-view-knee',[MhpPosteriorViewKneeController::class, 'index']);
Route::post('/save-posterior-view-knee',[MhpPosteriorViewKneeController::class, 'store']);
Route::get('/edit-posterior-view-knee/{id}',[MhpPosteriorViewKneeController::class, 'edit']);
Route::post('/update-posterior-view-knee/{id}',[MhpPosteriorViewKneeController::class, 'update']);
Route::delete('/delete-posterior-view-knee/{id}',[MhpPosteriorViewKneeController::class, 'destroy']);

//LateralViewKnee
Route::get('/lateral-view-knee',[MhpLateralViewKneeController::class, 'index']);
Route::post('/save-lateral-view-knee',[MhpLateralViewKneeController::class, 'store']);
Route::get('/edit-lateral-view-knee/{id}',[MhpLateralViewKneeController::class, 'edit']);
Route::post('/update-lateral-view-knee/{id}',[MhpLateralViewKneeController::class, 'update']);
Route::delete('/delete-lateral-view-knee/{id}',[MhpLateralViewKneeController::class, 'destroy']);

//StanceSwatKnee
Route::get('/stance-swat-knee',[MhpStanceSwatKneeController::class, 'index']);
Route::post('/save-stance-swat-knee',[MhpStanceSwatKneeController::class, 'store']);
Route::get('/edit-stance-swat-knee/{id}',[MhpStanceSwatKneeController::class, 'edit']);
Route::post('/update-stance-swat-knee/{id}',[MhpStanceSwatKneeController::class, 'update']);
Route::delete('/delete-stance-swat-knee/{id}',[MhpStanceSwatKneeController::class, 'destroy']);

//MarginCondyleTibial
Route::get('/margin-condyle-tibial',[MhpMarginCondyleTibialController::class, 'index']);
Route::post('/save-margin-condyle-tibial',[MhpMarginCondyleTibialController::class, 'store']);
Route::get('/edit-margin-condyle-tibial/{id}',[MhpMarginCondyleTibialController::class, 'edit']);
Route::post('/update-margin-condyle-tibial/{id}',[MhpMarginCondyleTibialController::class, 'update']);
Route::delete('/delete-margin-condyle-tibial/{id}',[MhpMarginCondyleTibialController::class, 'destroy']);

//ToesLeft
Route::get('/toes-left',[MhpToesLeftController::class, 'index']);
Route::post('/save-toes-left',[MhpToesLeftController::class, 'store']);
Route::get('/edit-toes-left/{id}',[MhpToesLeftController::class, 'edit']);
Route::post('/update-toes-left/{id}',[MhpToesLeftController::class, 'update']);
Route::delete('/delete-toes-left/{id}',[MhpToesLeftController::class, 'destroy']);

//MTPJoint
Route::get('/mtp-joint',[MhpMTPJointController::class, 'index']);
Route::post('/save-mtp-joint',[MhpMTPJointController::class, 'store']);
Route::get('/edit-mtp-joint/{id}',[MhpMTPJointController::class, 'edit']);
Route::post('/update-mtp-joint/{id}',[MhpMTPJointController::class, 'update']);
Route::delete('/delete-mtp-joint/{id}',[MhpMTPJointController::class, 'destroy']);

//PIPJoint
Route::get('/pip-joint',[MhpPIPJointController::class, 'index']);
Route::post('/save-pip-joint',[MhpPIPJointController::class, 'store']);
Route::get('/edit-pip-joint/{id}',[MhpPIPJointController::class, 'edit']);
Route::post('/update-pip-joint/{id}',[MhpPIPJointController::class, 'update']);
Route::delete('/delete-pip-joint/{id}',[MhpPIPJointController::class, 'destroy']);

//DIPJoint
Route::get('/dip-joint',[MhpDIPJointController::class, 'index']);
Route::post('/save-dip-joint',[MhpDIPJointController::class, 'store']);
Route::get('/edit-dip-joint/{id}',[MhpDIPJointController::class, 'edit']);
Route::post('/update-dip-joint/{id}',[MhpDIPJointController::class, 'update']);
Route::delete('/delete-dip-joint/{id}',[MhpDIPJointController::class, 'destroy']);

//ToesRight
Route::get('/toes-right',[MhpToesRightController::class, 'index']);
Route::post('/save-toes-right',[MhpToesRightController::class, 'store']);
Route::get('/edit-toes-right/{id}',[MhpToesRightController::class, 'edit']);
Route::post('/update-toes-right/{id}',[MhpToesRightController::class, 'update']);
Route::delete('/delete-toes-right/{id}',[MhpToesRightController::class, 'destroy']);

//DorsumOfFoot
Route::get('/dorsum-of-foot',[MhpDorsumOfFootController::class, 'index']);
Route::post('/save-dorsum-of-foot',[MhpDorsumOfFootController::class, 'store']);
Route::get('/edit-dorsum-of-foot/{id}',[MhpDorsumOfFootController::class, 'edit']);
Route::post('/update-dorsum-of-foot/{id}',[MhpDorsumOfFootController::class, 'update']);
Route::delete('/delete-dorsum-of-foot/{id}',[MhpDorsumOfFootController::class, 'destroy']);

//Volume Women
Route::get('/volume-women',[MhpVolumeWomenController::class, 'index']);
Route::post('/save-volume-women',[MhpVolumeWomenController::class, 'store']);
Route::get('/edit-volume-women/{id}',[MhpVolumeWomenController::class, 'edit']);
Route::post('/update-volume-women/{id}',[MhpVolumeWomenController::class, 'update']);
Route::delete('/delete-volume-women/{id}',[MhpVolumeWomenController::class, 'destroy']);

//PV Bleeding
Route::get('/pv-bleeding',[MhpPVBleedingController::class, 'index']);
Route::post('/save-pv-bleeding',[MhpPVBleedingController::class, 'store']);
Route::get('/edit-pv-bleeding/{id}',[MhpPVBleedingController::class, 'edit']);
Route::post('/update-pv-bleeding/{id}',[MhpPVBleedingController::class, 'update']);
Route::delete('/delete-pv-bleeding/{id}',[MhpPVBleedingController::class, 'destroy']);

//PV Discharge
Route::get('/pv-discharge',[MhpPVDischargeController::class, 'index']);
Route::post('/save-pv-discharge',[MhpPVDischargeController::class, 'store']);
Route::get('/edit-pv-discharge/{id}',[MhpPVDischargeController::class, 'edit']);
Route::post('/update-pv-discharge/{id}',[MhpPVDischargeController::class, 'update']);
Route::delete('/delete-pv-discharge/{id}',[MhpPVDischargeController::class, 'destroy']);

//Vulval
Route::get('/vulval',[MhpVulvalController::class, 'index']);
Route::post('/save-vulval',[MhpVulvalController::class, 'store']);
Route::get('/edit-vulval/{id}',[MhpVulvalController::class, 'edit']);
Route::post('/update-vulval/{id}',[MhpVulvalController::class, 'update']);
Route::delete('/delete-vulval/{id}',[MhpVulvalController::class, 'destroy']);

//Miscarriage
Route::get('/miscarriage',[MhpMiscarriageController::class, 'index']);
Route::post('/save-miscarriage',[MhpMiscarriageController::class, 'store']);
Route::get('/edit-miscarriage/{id}',[MhpMiscarriageController::class, 'edit']);
Route::post('/update-miscarriage/{id}',[MhpMiscarriageController::class, 'update']);
Route::delete('/delete-miscarriage/{id}',[MhpMiscarriageController::class, 'destroy']);

//Breast Lump
Route::get('/breast-lump',[MhpBreastLumpController::class, 'index']);
Route::post('/save-breast-lump',[MhpBreastLumpController::class, 'store']);
Route::get('/edit-breast-lump/{id}',[MhpBreastLumpController::class, 'edit']);
Route::post('/update-breast-lump/{id}',[MhpBreastLumpController::class, 'update']);
Route::delete('/delete-breast-lump/{id}',[MhpBreastLumpController::class, 'destroy']);

//Breast Pain
Route::get('/breast-pain',[MhpBreastPainController::class, 'index']);
Route::post('/save-breast-pain',[MhpBreastPainController::class, 'store']);
Route::get('/edit-breast-pain/{id}',[MhpBreastPainController::class, 'edit']);
Route::post('/update-breast-pain/{id}',[MhpBreastPainController::class, 'update']);
Route::delete('/delete-breast-pain/{id}',[MhpBreastPainController::class, 'destroy']);

//Breast Nipple Discharge
Route::get('/breast-nipple-discharge',[MhpBreastNippleDischargeController::class, 'index']);
Route::post('/save-breast-nipple-discharge',[MhpBreastNippleDischargeController::class, 'store']);
Route::get('/edit-breast-nipple-discharge/{id}',[MhpBreastNippleDischargeController::class, 'edit']);
Route::post('/update-breast-nipple-discharge/{id}',[MhpBreastNippleDischargeController::class, 'update']);
Route::delete('/delete-breast-nipple-discharge/{id}',[MhpBreastNippleDischargeController::class, 'destroy']);

//Vulva
Route::get('/vulva',[MhpVulvaController::class, 'index']);
Route::post('/save-vulva',[MhpVulvaController::class, 'store']);
Route::get('/edit-vulva/{id}',[MhpVulvaController::class, 'edit']);
Route::post('/update-vulva/{id}',[MhpVulvaController::class, 'update']);
Route::delete('/delete-vulva/{id}',[MhpVulvaController::class, 'destroy']);

//Pelvic Mass
Route::get('/pelvic-mass',[MhpPelvicMassController::class, 'index']);
Route::post('/save-pelvic-mass',[MhpPelvicMassController::class, 'store']);
Route::get('/edit-pelvic-mass/{id}',[MhpPelvicMassController::class, 'edit']);
Route::post('/update-pelvic-mass/{id}',[MhpPelvicMassController::class, 'update']);
Route::delete('/delete-pelvic-mass/{id}',[MhpPelvicMassController::class, 'destroy']);

//Bartholin Glandes
Route::get('/bartholin-glandes',[MhpBartholinGlandesController::class, 'index']);
Route::post('/save-bartholin-glandes',[MhpBartholinGlandesController::class, 'store']);
Route::get('/edit-bartholin-glandes/{id}',[MhpBartholinGlandesController::class, 'edit']);
Route::post('/update-bartholin-glandes/{id}',[MhpBartholinGlandesController::class, 'update']);
Route::delete('/delete-bartholin-glandes/{id}',[MhpBartholinGlandesController::class, 'destroy']);

//Cervix
Route::get('/cervix',[MhpCervixController::class, 'index']);
Route::post('/save-cervix',[MhpCervixController::class, 'store']);
Route::get('/edit-cervix/{id}',[MhpCervixController::class, 'edit']);
Route::post('/update-cervix/{id}',[MhpCervixController::class, 'update']);
Route::delete('/delete-cervix/{id}',[MhpCervixController::class, 'destroy']);

//CST
Route::get('/cst',[MhpCSTController::class, 'index']);
Route::post('/save-cst',[MhpCSTController::class, 'store']);
Route::get('/edit-cst/{id}',[MhpCSTController::class, 'edit']);
Route::post('/update-cst/{id}',[MhpCSTController::class, 'update']);
Route::delete('/delete-cst/{id}',[MhpCSTController::class, 'destroy']);

// morshed end

//Arafat Start
Route::get("/gait-limping",[MhpGaitLimpingController::class,'index']);
Route::post("/add-gait-limping",[MhpGaitLimpingController::class,'store']);
Route::get("/edit-gait-limping/{id}",[MhpGaitLimpingController::class,'edit']);
Route::post("/update-gait-limping/{id}",[MhpGaitLimpingController::class,'update']);
Route::delete("/delete-gait-limping/{id}",[MhpGaitLimpingController::class,'destroy']);
//End Start

 //mobile api individual patient profile route

//  Route::get('/patient-profile/{id}',[PatientsController::class, 'getProfile']);

//all patient search mobile api route
Route::get('/patient/{id}',[PatientsController::class, 'getAllPatient']);


// __________Greate Doc________

Route::post('/save-peditric-bangla', [MhpPediatricBanglaPreviewController::class, 'store']);
Route::get('/peditric-bangla', [MhpPediatricBanglaPreviewController::class, 'index']);


Route::post('/save-custom-template', [CustomTemplateController::class, 'store']);
Route::get('/get-custom-template', [CustomTemplateController::class, 'index']);
Route::post('/save-patient-referal-letter', [CustomTemplateController::class, 'Patient_Lette']);



//_____History && Examination_____

//1.General

Route::post('/save-general', [MhpGeneralController::class, 'store']);
Route::post('/save-general-history', [MhpGeneralController::class, 'save_general_history']);

Route::get('/get-general/{id}', [MhpGeneralController::class, 'general_data']);
// Route::get('/get-general-history/{generalId}', [MhpGeneralController::class, 'general_history_data']);


// 2. Cardivacular
Route::post('/save-cardivascular', [MhpCardiovascularController::class, 'store']);
Route::post('/save-cardivascular-other', [MhpCardiovascularController::class, 'save_cardivascular_other']);
Route::post('/save-cardivascular-history', [MhpCardiovascularController::class, 'save_cardivascular_history']);

Route::get('/get-cardivascular/{id}', [MhpCardiovascularController::class, 'cardivascular_data']);


//Respiratory
Route::post('/save-respiratory', [MhpRespiratoryController::class, 'store']);
Route::post('/save-respiratory-history', [MhpRespiratoryController::class, 'save_respiratory_history']);
Route::post('/save-respiratory-examination', [MhpRespiratoryController::class, 'save_respiratory_examination']);
Route::post('/save-respiratory-questionnaire', [MhpRespiratoryController::class, 'save_respiratory_questionnaire']);

//Gestro

Route::post('/save-gestro', [MhpGestroController::class, 'store']);
Route::post('/save-gestro-history', [MhpGestroController::class, 'save_gestro_history']);
Route::post('/save-gestro-abdomen', [MhpGestroController::class, 'save_gestro_abdomen']);

//Cns
Route::post('/save-cns-part1', [MhpCnsController::class, 'store']);
Route::post('/save-cns-cn1', [MhpCnsController::class, 'save_cns_cn1']);
Route::post('/save-cns-cn2', [MhpCnsController::class, 'save_cns_cn2']);
Route::post('/save-cns-cn3', [MhpCnsController::class, 'save_cns_cn3']);
Route::post('/save-cns-cn4', [MhpCnsController::class, 'save_cns_cn4']);
Route::post('/save-cns-cn5', [MhpCnsController::class, 'save_cns_cn5']);
Route::post('/save-cns-cn6', [MhpCnsController::class, 'save_cns_cn6']);
Route::post('/save-cns-cn7', [MhpCnsController::class, 'save_cns_cn7']);
Route::post('/save-cns-cn8', [MhpCnsController::class, 'save_cns_cn8']);
Route::post('/save-cns-visual-fields', [MhpCnsController::class, 'save_cns_visual_fields']);

Route::post('/save-cns-part2', [MhpCnsController::class, 'store_part2']);
Route::post('/save-cns-upper-limb', [MhpCnsController::class, 'save_cns_upper_limb']);


//Genito
Route::post('/save-genito', [MhpGenitoUrinaryController::class, 'store']);
Route::post('/save-genito-history', [MhpGenitoUrinaryController::class, 'save_genito_history']);

//Eye Examination 
Route::post('/save-eye', [MhpEyeExaminationController::class, 'store']);
Route::post('/save-eye-part1-externalObservation', [MhpEyeExaminationController::class,'save_eye_part1_externalObservation']);

Route::post('/save-eye-part1-phoria-one', [MhpEyeExaminationController::class, 'save_eye_part1_phoria_one']);
Route::post('/save-eye-part1-phoria-two', [MhpEyeExaminationController::class, 'save_eye_part1_phoria_two']);

Route::post('/save-eye-part1-pursuits', [MhpEyeExaminationController::class, 'save_eye_part1_pursuits']);
Route::post('/save-eye-part1-Worth4Dot', [MhpEyeExaminationController::class, 'save_eye_part1_Worth4Dot']);


//Mental-Health
Route::post('/save-mental-health', [MhpMentalHealthController::class, 'store']);
Route::post('/save-mental-history', [MhpMentalHealthController::class, 'store_history']);
Route::post('/save-mental-appearance', [MhpMentalHealthController::class, 'store_appearance']);
Route::post('/save-mental-behaviour', [MhpMentalHealthController::class, 'store_behaviour']);

Route::post('/save-mental-attitudetoward', [MhpMentalHealthController::class, 'store_attitudetoward']);
Route::post('/save-mental-moods', [MhpMentalHealthController::class, 'store_moods']);
Route::post('/save-mental-affect', [MhpMentalHealthController::class, 'store_affect']);
Route::post('/save-mental-speeche', [MhpMentalHealthController::class, 'store_speeche']);
Route::post('/save-mental-perceptual', [MhpMentalHealthController::class, 'store_perceptual']);


Route::post('/save-mental-psq9-1st', [MhpMentalHealthController::class, 'store_mental_psq9_1st']);
Route::post('/save-mental-psq9-2nd', [MhpMentalHealthController::class, 'store_mental_psq9_2nd']);

//Ent Examination

Route::post('/save-ent-examin', [EntExaminationController::class, 'store']);
Route::post('/save-ent-examin-ear-lesson', [EntExaminationController::class, 'store_ear_lesson']);
Route::post('/save-ent-examin-ent-other', [EntExaminationController::class, 'store_ent_other']);


//Nurological

Route::post('/save-nurological-examination', [MhpNeurologicalController::class, 'store']);
Route::post('/save-nurological-history', [MhpNeurologicalController::class, 'store_history']);
Route::post('/save-nurological-speech', [MhpNeurologicalController::class, 'store_Speech']);
Route::post('/save-nurological-parietal', [MhpNeurologicalController::class, 'store_parietal']);
Route::post('/save-nurological-frontal', [MhpNeurologicalController::class, 'store_frontal']);
Route::post('/save-nurological-temporal', [MhpNeurologicalController::class, 'store_temporal']);
Route::post('/save-nurological-occipital', [MhpNeurologicalController::class, 'store_occipital']);


//Skin Examination

Route::post('/save-skin-examination', [MhpSkinExaminationController::class, 'store']);
Route::post('/save-skin-examination-history', [MhpSkinExaminationController::class,'store_history']);
Route::post('/save-skin-examination-type', [MhpSkinExaminationController::class,'store_type']);

Route::post('/save-skin-examination-images', [MhpSkinExaminationController::class,'store_images']);
Route::post('/save-skin-examination-syntoms', [MhpSkinExaminationController::class,'store_syntoms']);



////lab module new all assets /////////


//test group

Route::get('/new-test-group', [TestGroupController::class, 'index']);
Route::post('/save-new-test-group', [TestGroupController::class, 'store']);
Route::get('/edit-new-test-group/{id}', [TestGroupController::class, 'edit']);
Route::post('/update-new-test-group/{id}', [TestGroupController::class, 'update']);
Route::delete('/delete-new-test-group/{id}', [TestGroupController::class, 'destroy']);


//test category

Route::get('/new-test-category', [TestCategoryController::class, 'index']);
Route::post('/save-new-test-category', [TestCategoryController::class, 'store']);
Route::get('/edit-new-test-category/{id}', [TestCategoryController::class, 'edit']);
Route::post('/update-new-test-category/{id}', [TestCategoryController::class, 'update']);
Route::delete('/delete-new-test-category/{id}', [TestCategoryController::class, 'destroy']);

Route::get('/new-test-categories-by-id/{id}', [TestCategoryController::class, 'testCategoryById']);

//test name

Route::get('/new-test-name', [NewTestNameController::class, 'index']);
Route::post('/save-new-test-name', [NewTestNameController::class, 'store']);
Route::get('/edit-new-test-name/{id}', [NewTestNameController::class, 'edit']);
Route::post('/update-new-test-name/{id}', [NewTestNameController::class, 'update']);
Route::delete('/delete-new-test-name/{id}', [NewTestNameController::class, 'destroy']);

Route::get('/new-test-name-by-id/{id}', [NewTestNameController::class, 'testNameById']);

//filtering by group name

Route::get('/new-test-name-by-group-id/{id}', [NewTestNameController::class, 'testNameByGroupId']);
Route::get('/new-test-name-by-category-id/{id}', [NewTestNameController::class, 'testNameByCategoryId']);

//test database

Route::get('/test-database', [TestDatabaseController::class, 'index']);
Route::post('/save-test-database', [TestDatabaseController::class, 'store']);
Route::get('/edit-test-database/{id}', [TestDatabaseController::class, 'edit']);
Route::post('/update-test-database/{id}', [TestDatabaseController::class, 'update']);
Route::delete('/delete-test-database/{id}', [TestDatabaseController::class, 'destroy']);






















//Womens Health Examinations

Route::post('/save-womens-health-data', [MhpWomenHealthExamiController::class, 'store']);
Route::post('/save-womens-health-data-vulva', [MhpWomenHealthExamiController::class, 'vulva_store']);
Route::post('/save-womens-health-data-breastNippleDischarge', [MhpWomenHealthExamiController::class, 'breastNippleDischarge_store']);

Route::post('/save-womens-health-data-cst', [MhpWomenHealthExamiController::class, 'cst_store']);
Route::post('/save-womens-health-data-obstetrics', [MhpWomenHealthExamiController::class, 'obstetrics_store']);
Route::post('/save-womens-health-data-breastLump', [MhpWomenHealthExamiController::class, 'breastLump_store']);
Route::post('/save-womens-health-data-cervixe', [MhpWomenHealthExamiController::class, 'cervixe_store']);
Route::post('/save-womens-health-data-gynecologies', [MhpWomenHealthExamiController::class, 'gynecologies_store']);



//Musculo Sketal Examination


Route::post('/save-ms-cervical', [MhpMusculoSketalExamiController::class, 'store']);
Route::post('/save-ms-history', [MhpMusculoSketalExamiController::class, 'history_store']);

Route::post('/save-ms-cervical-movement-1st', [MhpMusculoSketalExamiController::class, 'movement_1st_store']);
Route::post('/save-ms-cervical-movement-2nd', [MhpMusculoSketalExamiController::class, 'movement_2nd_store']);

Route::post('/save-ms-cervical-tedernes-over-spinus', [MhpMusculoSketalExamiController::class, 'tedernes_over_spinus_store']);
Route::post('/save-ms-cervical-tedernes-over-fact', [MhpMusculoSketalExamiController::class, 'tedernes_over_fact_store']);

Route::post('/save-ms-thoracal-lumber-spine', [MhpMusculoSketalExamiController::class, 'thoracal_lumber_spine_store']);
Route::post('/save-ms-thoracal-lumber-spine-tender-over', [MhpMusculoSketalExamiController::class, 'thoracal_lumber_spine_tender_over_store']);
Route::post('/save-ms-thoracal-lumber-spine-tender-over-l1-l6', [MhpMusculoSketalExamiController::class, 'thoracal_lumber_spine_tender_over_L1_L6_store']);


Route::post('/save-ms-thoracal-lumber-spine-tender-ness-over', [MhpMusculoSketalExamiController::class, 'thoracal_lumber_spine_tender_ness_over_store']);
Route::post('/save-ms-thoracal-lumber-spine-tender-ness-over-l1-l6', [MhpMusculoSketalExamiController::class, 'thoracal_lumber_spine_tender_ness_over_L1_L6_store']);

Route::post('/save-ms-hip-pelvis', [MhpMusculoSketalExamiController::class, 'hipAndPelvis_store']);
Route::post('/save-ms-hip-pelvis-test', [MhpMusculoSketalExamiController::class, 'hipAndPelvis_test_store']);



Route::post('/save-ms-shoulder', [MhpMusculoSketalExamiController::class, 'shoulder_store']);
Route::post('/save-ms-shoulder-shap-counter', [MhpMusculoSketalExamiController::class, 'shap_counter_store']);
Route::post('/save-ms-shoulder-anterior-view', [MhpMusculoSketalExamiController::class, 'anterior_store']);
Route::post('/save-ms-shoulder-resisted-movement', [MhpMusculoSketalExamiController::class, 'resisted_movement_store']);


// prescription general note 
Route::get('/general-note', [MhpGeneralNoteController::class, 'index']);
Route::post('/save-general-note', [MhpGeneralNoteController::class, 'store']);
Route::get('/edit-general-note/{id}', [MhpGeneralNoteController::class, 'edit']);
Route::post('/update-general-note/{id}', [MhpGeneralNoteController::class, 'update']);
Route::delete('/delete-general-note/{id}', [MhpGeneralNoteController::class, 'delete']);


//paediatric
Route::post('/save-paediatric-page1', [PaediatricHealthCheck6::class, 'saveMaternalInformation']);
//page2
Route::post('/save-paediatric-milestone', [PaediatricHealthCheck6::class, 'saveMilestone']);
//page3
Route::post('/save-paediatric-page3', [PaediatricHealthCheck6::class, 'savePaediatricPageThree']);
//page3 data by patient id
Route::get('/get-paeditaric-data-by-id/{id}', [PaediatricHealthCheck6::class, 'getPaediatricPageThree']);



//page4

Route::post('/save-paediatric-newBorn', [PaediatricHealthCheck6::class, 'savePaediatricNewBorn']);
Route::post('/save-paediatric-parentsPage4Data', [PaediatricHealthCheck6::class, 'savePaediatricParentsPage4']);
Route::get('/get-paediatric-parentsPage4Data/{id}', [PaediatricHealthCheck6::class, 'getPaediatricParentsPage4']);
Route::post('/save-paediatric-parentsPage5Data', [PaediatricHealthCheck6::class, 'savePaediatricParentsPage5']);
Route::get('/get-paediatric-parentsPage5Data/{id}', [PaediatricHealthCheck6::class, 'getPaediatricParentsPage5']);




Route::post('/save-paediatric-child-health-six', [PaediatricHealthCheck6::class, 'store']);
Route::post('/save-paediatric-dental-section', [PaediatricDentalSection::class, 'store']);
//page 15 twelve months health check paediatric
Route::post('/save-paediatric-twelve-months-health-check', [PaediatricHealthCheck6::class, 'twelveMonthsHealthCheck']);
//page16
Route::post('/save-paediatric-eighteen-month-visit', [PaediatricHealthCheck6::class, 'eighteenMonthVisit']);

//page17
Route::post('/save-paediatric-eighteen-months-health-check', [PaediatricHealthCheck6::class, 'eighteenMonthsHealthCheck']);

//page 19

Route::post('/save-paediatric-two-years-child-health-check', [PaediatricHealthCheck6::class, 'twoYearsChildHealthCheck']);


//page22

Route::post('/save-paediatric-four_years_old_parent', [PaediatricHealthCheck6::class, 'fourYearsOld']);
//page 24
Route::post('/save-paediatric-four-years-health-check', [PaediatricHealthCheck6::class, 'fourYearsHealthCheck']);






Route::post('/update-patients-img/{id}', [PatientsController::class, 'update_img']);


Route::post('user-selfsignup',[UsersController::class, 'user_selfsignup']);


Route::get('all-doctors-booking',[DoctorsController::class,'all_doctors_booking']);

Route::get('patients-profile/{id}',[PatientsController::class,'patients_profile']);
Route::get('doctors-profile/{id}',[DoctorsController::class,'doctors_profile']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
//upcoming dr appointment 
Route::get('/upcoming-drappointment/{id}',[SchedulerController::class, 'upcomingDrAppointment']);
Route::get('/doctor-total-patients/{id}',[SchedulerController::class, 'doctorTotalPatients']);




 //mobile api media type online route

Route::get('media-type-online',[MediaTypeOnlineController::class,'mediaTypeOnline']);



//////////////////////////////////mobile api////////////////////////////////////

//appointment api doctor site
Route::get('/todays-doctorappointment/{id}',[SchedulerController::class, 'todaysDoctorAppointment']);
Route::get('/upcoming-doctorappointment/{id}/{date}',[SchedulerController::class, 'upcomingDoctorAppointment']);

// Route::get('/doctorcompleted-appointment/{id}/{date}',[SchedulerController::class,'completedDoctorAppointment']);
Route::get('/all-doctorList',[SchedulerController::class, 'alldoctorList']);
Route::get('alldoctor-search/{dept}/{name}',[DoctorsController::class,'allDoctorSearch']);

//random doctors 
Route::get('/random-doctors',[DoctorsController::class,'randomTopDoctors']);



//appointment api patient site
Route::get('/todays-patientappointment/{id}',[SchedulerController::class, 'todaysPatientAppointment']);
Route::get('/upcoming-patientappointment/{id}',[SchedulerController::class, 'upcomingPatientAppointment']);
Route::get('/patientcompleted-appointment/{id}',[SchedulerController::class,'completedPatientAppointment']);
Route::get('/cancel-patientappointment/{id}',[SchedulerController::class,'cancelPatientAppointment']);
Route::post('/cancel-patientappointmentReason/{pId}/{dId}',[SchedulerController::class,'cancelPatientAppointmentReason']);
Route::post('/patient-appointmentBook',[SchedulerController::class,'patientAppointmentBook']);

Route::post('/reschedule-patient-appointmentBook/{patientId}',[SchedulerController::class,'reschedulePatientAppointmentBook']);
 



//dr appointment list

Route::get('/appointment-lists/{id}',[SchedulerController::class,'allApointmentList']);



// allAppointListDoctor
Route::get('/allAppointListDoctors/',[SchedulerController::class,'allAppointListDoctor']);


// lab test  ---> test type


Route::post('/save-lab-test-type',[MhpLabTestTypeController::class,'store']);
Route::get('/lab-test-type',[MhpLabTestTypeController::class,'index']);
Route::get('/edit-lab-test-type/{id}',[MhpLabTestTypeController::class,'edit']);
Route::post('/update-lab-test-type/{id}',[MhpLabTestTypeController::class,'update']);
Route::delete('/delete-lab-test-type/{id}',[MhpLabTestTypeController::class,'delete']);

// lab test  ---> test name

Route::post('/save-lab-test-name',[LabTestNameController::class,'store']);
Route::get('/lab-test-name',[LabTestNameController::class,'index']);
Route::delete('/delete-lab-test-name-new/{id}',[LabTestNameController::class,'delete']);
Route::get('/edit-lab-test-name/{id}',[LabTestNameController::class,'edit']);
Route::post('/update-lab-test-name/{id}',[LabTestNameController::class,'update']);

// Procedure reports
Route::post('/save-procedure-report-name',[MhpProcedureReportController::class,'store']);
Route::get('/procedure-name-report',[MhpProcedureReportController::class,'index']);
Route::delete('/delete-procedure-name-report/{id}',[MhpProcedureReportController::class,'delete']);
Route::get('/edit-procedure-report-name/{id}',[MhpProcedureReportController::class,'edit']);
Route::post('/update-procedure-report-name/{id}',[MhpProcedureReportController::class,'update']);

// indication
Route::post('/save-indication',[MhpIndicationController::class,'store']);
Route::get('/indication-name',[MhpIndicationController::class,'index']);
Route::delete('/delete-indication-name/{id}',[MhpIndicationController::class,'delete']);
Route::get('/edit-indication-name/{id}',[MhpIndicationController::class,'edit']);
Route::post('/update-indication-name/{id}',[MhpIndicationController::class,'update']);

// findings
Route::post('/save-findings',[MhpFindingsController::class,'store']);
Route::get('/findings-name',[MhpFindingsController::class,'index']);
Route::delete('/delete-findings-name/{id}',[MhpFindingsController::class,'delete']);
Route::get('/edit-findings-name/{id}',[MhpFindingsController::class,'edit']);
Route::post('/update-findings-name/{id}',[MhpFindingsController::class,'update']);

// procedure details
Route::post('/save-procedure-Details',[MhpProcedureDetailsController::class,'store']);
Route::get('/procedure-Details',[MhpProcedureDetailsController::class,'index']);
Route::delete('/delete-procedure-details/{id}',[MhpProcedureDetailsController::class,'delete']);
Route::get('/edit-procedure-details/{id}',[MhpProcedureDetailsController::class,'edit']);
Route::post('/update-procedure-details/{id}',[MhpProcedureDetailsController::class,'update']);

// gynecologies
Route::post('/save-addGynecologies',[MhpgynecologiesController::class,'store']);
Route::get('/gynecologies',[MhpgynecologiesController::class,'index']);
Route::delete('/delete-gynecologies/{id}',[MhpgynecologiesController::class,'delete']);
Route::get('/edit-gynecologies/{id}',[MhpgynecologiesController::class,'edit']);
Route::post('/update-gynecologies/{id}',[MhpgynecologiesController::class,'update']);

// obstetrics
Route::post('/save-addObstetrics',[MhpObstetricsController::class,'store']);
Route::get('/obstetrics',[MhpObstetricsController::class,'index']);
Route::delete('/delete-obstetrics/{id}',[MhpObstetricsController::class,'delete']);
Route::get('/edit-obstetrics/{id}',[MhpObstetricsController::class,'edit']);
Route::post('/update-obstetrics/{id}',[MhpObstetricsController::class,'update']);

// breast
Route::post('/save-addBreast',[MhpBreastController::class,'store']);
Route::get('/breast',[MhpBreastController::class,'index']);
Route::delete('/delete-breast/{id}',[MhpBreastController::class,'delete']);
Route::get('/edit-breast/{id}',[MhpBreastController::class,'edit']);
Route::post('/update-breast/{id}',[MhpBreastController::class,'update']);


// procedure_Item_numbers
Route::post('/save-itemNumbers',[ItemNumbersController::class,'store']);
Route::get('/itemNumbers-name',[ItemNumbersController::class,'index']);
Route::delete('/delete-itemNumbers-name/{id}',[ItemNumbersController::class,'delete']);
Route::get('/edit-item-numbers-name/{id}',[ItemNumbersController::class,'edit']);
Route::post('/update-item-numbers/{id}',[ItemNumbersController::class,'update']);

// incision
Route::post('/save-incision',[MhpIncisionController::class,'store']);
Route::get('/incision',[MhpIncisionController::class,'index']);
Route::delete('/delete-incision/{id}',[MhpIncisionController::class,'delete']);
Route::get('/edit-incision/{id}',[MhpIncisionController::class,'edit']);
Route::post('/update-incision/{id}',[MhpIncisionController::class,'update']);

// pathology
Route::post('/save-pathology',[MhpPathologyController::class,'store']);
Route::get('/pathology-name',[MhpPathologyController::class,'index']);
Route::delete('/delete-pathology-name/{id}',[MhpPathologyController::class,'delete']);
Route::get('/edit-pathology-name/{id}',[MhpPathologyController::class,'edit']);
Route::post('/update-pathology-name/{id}',[MhpPathologyController::class,'update']);

// drain
Route::post('/save-drain-name',[MhpDrainController::class,'store']);
Route::get('/drain-name',[MhpDrainController::class,'index']);
Route::delete('/delete-drain-name/{id}',[MhpDrainController::class,'delete']);
Route::get('/edit-drain-name/{id}',[MhpDrainController::class,'edit']);
Route::post('/update-drain-name/{id}',[MhpDrainController::class,'update']);

// antibiotics
Route::post('/save-antibiotics-name',[MhpAntibioticsController::class,'store']);
Route::get('/antibiotics-name',[MhpAntibioticsController::class,'index']);
Route::delete('/delete-antibiotics-name/{id}',[MhpAntibioticsController::class,'delete']);
Route::get('/edit-antibiotics-name/{id}',[MhpAntibioticsController::class,'edit']);
Route::post('/update-antibiotics-name/{id}',[MhpAntibioticsController::class,'update']);

// blood loss
Route::post('/save-blood-loss-name',[MhpBloodLossController::class,'store']);
Route::get('/blood-loss-name',[MhpBloodLossController::class,'index']);
Route::delete('/delete-blood-loss-name/{id}',[MhpBloodLossController::class,'delete']);
Route::get('/edit-blood-loss-name/{id}',[MhpBloodLossController::class,'edit']);
Route::post('/update-blood-loss-name/{id}',[MhpBloodLossController::class,'update']);

// observation
Route::post('/save-observation-name',[MhpObservationController::class,'store']);
Route::get('/observation-name',[MhpObservationController::class,'index']);
Route::delete('/delete-observation-name/{id}',[MhpObservationController::class,'delete']);
Route::get('/edit-observation-name/{id}',[MhpObservationController::class,'edit']);
Route::post('/update-observation-name/{id}',[MhpObservationController::class,'update']);

// diet
Route::post('/save-diet-name',[MhpDietController::class,'store']);
Route::get('/diet-name',[MhpDietController::class,'index']);
Route::delete('/delete-diet-name/{id}',[MhpDietController::class,'delete']);
Route::get('/edit-diet-name/{id}',[MhpDietController::class,'edit']);
Route::post('/update-diet-name/{id}',[MhpDietController::class,'update']);

// analgesia
Route::post('/save-analgesia-name',[MhpAnalgesiaController::class,'store']);
Route::get('/analgesia-name',[MhpAnalgesiaController::class,'index']);
Route::delete('/delete-analgesia-name/{id}',[MhpAnalgesiaController::class,'delete']);
Route::get('/edit-analgesia-name/{id}',[MhpAnalgesiaController::class,'edit']);
Route::post('/update-analgesia-name/{id}',[MhpAnalgesiaController::class,'update']);

// dvt prop
Route::post('/save-dvt-prop-name',[MhpDvtPropController::class,'store']);
Route::get('/dvt-prop-name',[MhpDvtPropController::class,'index']);
Route::delete('/delete-dvt-prop-name/{id}',[MhpDvtPropController::class,'delete']);
Route::get('/edit-dvt-prop-name/{id}',[MhpDvtPropController::class,'edit']);
Route::post('/update-dvt-prop-name/{id}',[MhpDvtPropController::class,'update']);

// antibiotics two
Route::post('/save-antibiotics-two-name',[MhpAntibioticsTwoController::class,'store']);
Route::get('/antibiotics-two-name',[MhpAntibioticsTwoController::class,'index']);
Route::delete('/delete-antibiotics-two-name/{id}',[MhpAntibioticsTwoController::class,'delete']);
Route::get('/edit-antibiotics-two-name/{id}',[MhpAntibioticsTwoController::class,'edit']);
Route::post('/update-antibiotics-two-name/{id}',[MhpAntibioticsTwoController::class,'update']);

// discharge
Route::post('/save-discharge-name',[MhpDischargeController::class,'store']);
Route::get('/discharge-name',[MhpDischargeController::class,'index']);
Route::delete('/delete-discharge-name/{id}',[MhpDischargeController::class,'delete']);
Route::get('/edit-discharge-name/{id}',[MhpDischargeController::class,'edit']);
Route::post('/update-discharge-name/{id}',[MhpDischargeController::class,'update']);

// followup
Route::post('/save-followup-name',[MhpFollowupController::class,'store']);
Route::get('/followup-name',[MhpFollowupController::class,'index']);
Route::delete('/delete-followup-name/{id}',[MhpFollowupController::class,'delete']);
Route::get('/edit-followup-name/{id}',[MhpFollowupController::class,'edit']);
Route::post('/update-followup-name/{id}',[MhpFollowupController::class,'update']);

// post operative
Route::post('/save-post-operative-name',[MhpPostOperativeController::class,'store']);
Route::get('/post-operative-name',[MhpPostOperativeController::class,'index']);
Route::delete('/delete-post-operative-name/{id}',[MhpPostOperativeController::class,'delete']);
Route::get('/edit-post-operativefollowup-name/{id}',[MhpPostOperativeController::class,'edit']);
Route::post('/update-post-operative-name/{id}',[MhpPostOperativeController::class,'update']);


// procedure_report

Route::post('/save-addProcedureChartReport',[MhpProcedureReportChartController::class,'store']);