import 'package:equatable/equatable.dart';
import 'package:isar/isar.dart';
import 'package:white_whistle/domain/settings/settings.dart';

part 'isar_settings.g.dart';

/// @nodoc
@Collection(accessor: 'settings')
class IsarSettings extends Equatable {
  /// @nodoc
  const IsarSettings({
    required this.id,
    required this.toggleDarkMode,
  });

  /// @nodoc
  factory IsarSettings.fromMap(Map<String, dynamic> map) {
    return IsarSettings(
      id: map['id'] as int,
      toggleDarkMode: map['toggleDarkMode'] as bool,
    );
  }

  /// @nodoc
  final int id;

  /// @nodoc
  final bool toggleDarkMode;

  /// @nodoc
  IsarSettings copyWith({
    int? id,
    bool? toggleDarkMode,
  }) {
    return IsarSettings(
      id: id ?? this.id,
      toggleDarkMode: toggleDarkMode ?? this.toggleDarkMode,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'toggleDarkMode': toggleDarkMode,
    };
  }

  /// @nodoc
  Settings toDomain() {
    return Settings(
      toggleDarkMode: toggleDarkMode,
    );
  }

  @override
  List<Object?> get props => [id, toggleDarkMode];

  @override
  bool get stringify => true;
}
