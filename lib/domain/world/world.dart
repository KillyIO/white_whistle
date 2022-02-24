import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:white_whistle/domain/core/cover_url.dart';
import 'package:white_whistle/domain/core/unique_id.dart';

part 'world.freezed.dart';

/// @nodoc
@freezed
class World with _$World {
  /// @nodoc
  factory World({
    required CoverURL coverURL,
    required UniqueID uid,
  }) = _World;

  /// @nodoc
  factory World.empty() => World(
        coverURL: CoverURL(''),
        uid: UniqueID(),
      );
}
