class DoctorInfo {
  DoctorInfo({
    required this.doctors,
    required this.msg,
    required this.succes,
  });
  late final List<Doctors> doctors;
  late final String msg;
  late final String succes;

  DoctorInfo.fromJson(Map<String, dynamic> json) {
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

class Doctors {
  Doctors({
    required this.docId,
    required this.email,
    required this.hospital,
    required this.name,
    required this.phone,
    required this.specialization,
  });
  late final String docId;
  late final String email;
  late final String hospital;
  late final String name;
  late final String phone;
  late final String specialization;

  Doctors.fromJson(Map<String, dynamic> json) {
    docId = json['doc_id'];
    email = json['email'];
    hospital = json['hospital'];
    name = json['name'];
    phone = json['phone'];
    specialization = json['specialization'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['doc_id'] = docId;
    _data['email'] = email;
    _data['hospital'] = hospital;
    _data['name'] = name;
    _data['phone'] = phone;
    _data['specialization'] = specialization;
    return _data;
  }
}
