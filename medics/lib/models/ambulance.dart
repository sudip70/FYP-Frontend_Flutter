class AmbulanceInfo {
  AmbulanceInfo({
    required this.ambulance,
    required this.msg,
    required this.success,
  });
  late final List<Ambulance> ambulance;
  late final String msg;
  late final String success;

  AmbulanceInfo.fromJson(Map<String, dynamic> json) {
    ambulance =
        List.from(json['ambulance']).map((e) => Ambulance.fromJson(e)).toList();
    msg = json['msg'];
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['ambulance'] = ambulance.map((e) => e.toJson()).toList();
    _data['msg'] = msg;
    _data['success'] = success;
    return _data;
  }
}

class Ambulance {
  Ambulance({
    required this.address,
    required this.ambId,
    required this.organizaionName,
    required this.phone,
  });
  late final String address;
  late final String ambId;
  late final String organizaionName;
  late final String phone;

  Ambulance.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    ambId = json['amb_id'];
    organizaionName = json['organizaion_name'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['address'] = address;
    _data['amb_id'] = ambId;
    _data['organizaion_name'] = organizaionName;
    _data['phone'] = phone;
    return _data;
  }
}
