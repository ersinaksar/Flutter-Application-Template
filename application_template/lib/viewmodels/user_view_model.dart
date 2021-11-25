import 'package:application_template/services/auth_base.dart';
import 'package:flutter/material.dart';

enum UsenModelViewState { Idle, Busy }

class UserViewModel with ChangeNotifier implements AuthBase {}
