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
    required this.Email,
    required this.Hospital,
    required this.Name,
    required this.Phone,
    required this.Specialization,
    required this.docId,
  });
  late final String Email;
  late final String Hospital;
  late final String Name;
  late final String Phone;
  late final String Specialization;
  late final String docId;

  Doctors.fromJson(Map<String, dynamic> json) {
    Email = json['Email'];
    Hospital = json['Hospital'];
    Name = json['Name'];
    Phone = json['Phone'];
    Specialization = json['Specialization'];
    docId = json['doc_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['Email'] = Email;
    _data['Hospital'] = Hospital;
    _data['Name'] = Name;
    _data['Phone'] = Phone;
    _data['Specialization'] = Specialization;
    _data['doc_id'] = docId;
    return _data;
  }
}
