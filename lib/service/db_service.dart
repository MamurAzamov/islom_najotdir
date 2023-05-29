

import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/member_model.dart';
import 'utils_service.dart';

class DBService{

  static final _firestore = FirebaseFirestore.instance;

  static Future storeMember(Member member) async {
    Map<String, dynamic> params = await Utils.deviceParams();
    print(params.toString());

    member.device_id = params["device_id"]!;
    member.device_type = params["device_type"]!;
    member.device_token = params["device_token"]!;

    member.device_id = params["device_id"];
    member.device_type = params["device_type"];
    member.device_token = params["device_token"];
    return _firestore;
  }
}