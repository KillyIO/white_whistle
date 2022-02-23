import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:white_whistle/domain/settings/settings.dart';

part 'isar_settings.g.dart';

/// @nodoc
@Collection(accessor: 'settings')
class IsarSettings extends Equatable {
  /// @nodoc
  const IsarSettings({
    this.toggleDarkMode,
    this.id,
  });

  /// @nodoc
  factory IsarSettings.fromMap(Map<String, dynamic> map) {
    return IsarSettings(
      toggleDarkMode: map['toggleDarkMode'] as bool,
      id: map['id'] as int,
    );
  }

  /// @nodoc
  final bool? toggleDarkMode;

  /// @nodoc
  final int? id;

  /// @nodoc
  IsarSettings copyWith({
    bool? toggleDarkMode,
    int? id,
  }) {
    return IsarSettings(
      toggleDarkMode: toggleDarkMode ?? this.toggleDarkMode,
      id: id ?? this.id,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toggleDarkMode': toggleDarkMode,
      'id': id,
    };
  }

  /// @nodoc
  Settings toDomain() {
    return Settings(
      toggleDarkMode: toggleDarkMode,
    );
  }

  @override
  List<Object?> get props => [
        toggleDarkMode,
        id,
      ];

  @override
  bool get stringify => true;
}
