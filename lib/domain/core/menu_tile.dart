import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// @nodoc
class MenuTile extends Equatable {
  /// @nodoc
  const MenuTile({
    required this.key,
    required this.icon,
  });

  /// @nodoc
  factory MenuTile.fromMap(Map<String, dynamic> map) {
    return MenuTile(
      key: map['key'] as String,
      icon: map['icon'] as IconData,
    );
  }

  /// @nodoc
  final String key;

  /// @nodoc
  final IconData icon;

  /// @nodoc
  MenuTile copyWith({
    String? key,
    IconData? icon,
  }) {
    return MenuTile(
      key: key ?? this.key,
      icon: icon ?? this.icon,
    );
  }

  /// @nodoc
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'icon': icon.codePoint,
    };
  }

  @override
  List<Object> get props => [key, icon];

  @override
  bool get stringify => true;
}
