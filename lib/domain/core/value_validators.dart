import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:string_validator/string_validator.dart';
import 'package:white_whistle/domain/core/value_failure.dart';
import 'package:white_whistle/infrastructure/core/string_helpers.dart';

/// @nodoc
Result<String, ValueFailure<String>> validateCoverFile(String path) {
  final isImage = path.isImage;

  if (isImage != null && isImage && File(path).existsSync()) {
    return Ok(path);
  }
  return Err(ValueFailure.invalidCoverFile(path));
}

/// @nodoc
Result<String, ValueFailure<String>> validateCoverURL(String input) {
  if (isURL(input)) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidCoverURL(input));
}

/// @nodoc
Result<String, ValueFailure<String>> validateUniqueID(String input) {
  if (input.isNotEmpty) {
    return Ok(input);
  }
  return Err(ValueFailure.invalidUniqueID(input));
}
