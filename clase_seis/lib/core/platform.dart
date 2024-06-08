import 'package:flutter/foundation.dart';

bool get isAndroid =>
    defaultTargetPlatform ==
    TargetPlatform.android; //Verifica si se ejecuta en Android
bool get isIOS =>
    defaultTargetPlatform ==
    TargetPlatform.iOS; //Verifica si se esta ejecutando en IOS

bool get isWeb => kIsWeb;//Verifica si se esta ejecutando en Web
