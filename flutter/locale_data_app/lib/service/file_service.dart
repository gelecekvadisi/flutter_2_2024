import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import '../model/user_model.dart';

class FileService {
  static writeData(User user) async {
    File file = await _getFile();

    await file.writeAsString(
      jsonEncode(
        user.toJson(),
      ),
    );

    debugPrint(file.path);
  }

  static Future<String?> readData(/* void Function() onFileNotFound */) async {
    File file = await _getFile();

    if (!file.existsSync()) {
      // onFileNotFound();
      return null;
    }

    String jsonString = file.readAsStringSync();
    return jsonString;
  }

  static Future<File> _getFile() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = "${directory.path}/local_data_file.json";
    File file = File(path);
    return file;
  }
}
