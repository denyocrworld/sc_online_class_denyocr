// patient_doctor_detail_schedule_list
import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/model/doctor/doctor_schedule.dart';
import 'package:hyper_ui/model/doctor/hospital.dart';

class PatientDoctorDetailItem {
  final Hospital hospital;
  final List<DoctorSchedule> schedules;
  PatientDoctorDetailItem({
    required this.hospital,
    required this.schedules,
  });
}

class PatientDoctorDetailScheduleList {
  List<PatientDoctorDetailItem> generate(Doctor doctor) {
    List<PatientDoctorDetailItem> doctorSchedulesByHospitals = [];
    /*
      sch1
        hospital
      sch2
        hospital
      sch3
        hospital

      ----

      hospital
        sch1
        sch2
        sch3
    */

    List<Hospital> hospitals = [];
    for (var item in doctor.doctorSchedules!) {
      var index = hospitals.indexWhere((h) => h.id == item.id);
      if (index == -1) {
        hospitals.add(item.hospital!);
      }
    }
    hospitals = hospitals.toSet().toList();

    for (var schedule in doctor.doctorSchedules!) {
      var index = doctorSchedulesByHospitals
          .indexWhere((dsb) => dsb.hospital.id == schedule.hospital!.id);

      if (index > -1) {
        //update, add scehdule item list
        doctorSchedulesByHospitals[index].schedules.add(schedule);
      } else {
        //create
        doctorSchedulesByHospitals.add(
          PatientDoctorDetailItem(
            hospital: schedule.hospital!,
            schedules: [
              schedule,
            ],
          ),
        );
      }
    }

    for (var h in doctorSchedulesByHospitals) {
      print(h.hospital.hospitalName);
      print("---");
    }

    return doctorSchedulesByHospitals;
  }
}
