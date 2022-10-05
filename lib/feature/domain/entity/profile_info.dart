class ProfileInfo {
  int? id;
  String? email;
  String? msisdn;
  String? fullName;
  String? status;
  String? photoPath;
  String? positionName;
  String? organizationName;
  String? departmentName;

  ProfileInfo(
      {this.id,
      this.email,
      this.msisdn,
      this.fullName,
      this.status,
      this.photoPath,
      this.positionName,
      this.organizationName,
      this.departmentName});

  ProfileInfo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    msisdn = json['msisdn'];
    fullName = json['full_name'];
    status = json['status'];
    photoPath = json['photo_path'];
    positionName = json['position_name'];
    organizationName = json['organization_name'];
    departmentName = json['department_name'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['msisdn'] = msisdn;
    data['full_name'] = fullName;
    data['status'] = status;
    data['photo_path'] = photoPath;
    data['position_name'] = positionName;
    data['organization_name'] = organizationName;
    data['department_name'] = departmentName;
    return data;
  }
}
