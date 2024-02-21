import 'dart:convert';
import 'package:get_storage/get_storage.dart';

mixin CacheManager {

  Future<bool> saveUserId(String? userId) async {
    final storage = GetStorage();
    await storage.write(CMUserId.userId.toString(), userId);
    return true;
  }

  String? getUserId() {
    final storage = GetStorage();
    return storage.read(CMUserId.userId.toString());
  }


  Future<bool> saveToken(String? token) async {
    final storage = GetStorage();
    await storage.write(CMToken.token.toString(), token);
    return true;
  }

  String? getToken() {
    final storage = GetStorage();
    return storage.read(CMToken.token.toString());
  }


  Future<bool> saveTenentId(String? tenentId) async {
    final storage = GetStorage();
    await storage.write(CMTenentId.tenentId.toString(), tenentId);
    return true;
  }

  String? getTenentId() {
    final storage = GetStorage();
    return storage.read(CMTenentId.tenentId.toString());
  }

  Future<bool> saveIsLogin(bool value) async {
    final storage = GetStorage();
    await storage.write(CMLogin.isLogin.toString(), value);
    return true;
  }

  bool getIsLogin() {
    final storage = GetStorage();
    return storage.read(CMLogin.isLogin.toString());
  }

  Future<bool> saveIsLoginNull(bool b) async {
    final storage = GetStorage();
    await storage.writeIfNull(CMLogin.isLogin.toString(), b);
    return true;
  }


  Future<bool> removeAllData() async {
    final storage = GetStorage();
    await storage.remove(CMUserId.userId.toString());
    await storage.remove(CMToken.token.toString());
    await storage.remove(CMTenentId.tenentId.toString());
    await storage.remove(CMLogin.isLogin.toString());
    return true;
  }


}

enum CMUserId { userId }
enum CMUserProfile { userProfile }
enum CMToken { token }
enum CMTenentId { tenentId }
enum CMLogin { isLogin }
