class AmbulanceInfo {
  List<AmbulanceInfo>? ambulance;
  String? msg;
  String? succes;

  AmbulanceInfo({this.ambulance, this.msg, this.succes});

  AmbulanceInfo.fromJson(Map<String, dynamic> json) {
    if (json['ambulance'] != null) {
      ambulance = <AmbulanceInfo>[];
      json['ambulance'].forEach((v) {
        ambulance?.add(new AmbulanceInfo.fromJson(v));
      });
    }
    msg = json['msg'];
    succes = json['succes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ambulance != null) {
      data['ambulance'] = this.ambulance!.map((v) => v.toJson()).toList();
    }
    data['msg'] = this.msg;
    data['succes'] = this.succes;
    return data;
  }
}

class Ambulance {
  String? address;
  String? ambId;
  String? orgName;
  String? phone;

  Ambulance({this.address, this.ambId, this.orgName, this.phone});

  Ambulance.fromJson(Map<String, dynamic> json) {
    address = json['address'];
    ambId = json['amb_id'];
    orgName = json['org_name'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['address'] = this.address;
    data['amb_id'] = this.ambId;
    data['org_name'] = this.orgName;
    data['phone'] = this.phone;
    return data;
  }
}
