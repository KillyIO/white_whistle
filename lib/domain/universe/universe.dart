import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:white_whistle/domain/core/cover_url.dart';
import 'package:white_whistle/domain/core/unique_id.dart';

part 'universe.freezed.dart';

/// @nodoc
@freezed
class Universe with _$Universe {
  /// @nodoc
  factory Universe({
    required CoverURL coverURL,
    required UniqueID uid,
  }) = _Universe;

  /// @nodoc
  factory Universe.empty() => Universe(
        coverURL: CoverURL(''),
        uid: UniqueID(),
      );
}
