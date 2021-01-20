import 'package:flutter/material.dart';

abstract class DynamicLinkService{

  void initDynamicLinks();
  Future<Uri> generateLink();

}