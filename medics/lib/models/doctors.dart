class DoctorDetails {
  DoctorDetails({
    required this.doctors,
  });
  late final Doctors doctors;

  DoctorDetails.fromJson(Map<String, dynamic> json) {
    doctors = Doctors.fromJson(json['doctors']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['doctors'] = doctors.toJson();
    return _data;
  }
}

class Doctors {
  Doctors({
    required this.doctors,
    required this.msg,
    required this.succes,
  });
  late final List<Doctors> doctors;
  late final String msg;
  late final String succes;

  Doctors.fromJson(Map<String, dynamic> json) {
    doctors =
        List.from(json['doctors']).map((e) => Doctors.fromJson(e)).toList();
    msg = json['msg'];
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['doctors'] = doctors.map((e) => e.toJson()).toList();
    _data['msg'] = msg;
    _data['succes'] = succes;
    return _data;
  }
}
