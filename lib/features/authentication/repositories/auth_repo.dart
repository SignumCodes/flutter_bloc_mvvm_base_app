import 'package:bloc_mvvm_base_app/features/authentication/models/user_model.dart';

import '../../../core/network/dio_client.dart';
import '../models/login_request_model.dart';

class AuthRepository{

  DeoClient client = DeoClient();

  Future<UserModel> login(LoginRequestModel request) async {
      final response = await DeoClient.postData(url:'/login', data: request.toJson());
      return UserModel.fromJson(response.data);
  }

}