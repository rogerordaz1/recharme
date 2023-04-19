// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'contact.dart';

class Recarga extends Equatable {
  final Contact contact;
  final double recargaValue;
  final DateTime? pymentDate;
  final DateTime recargaDate;

  const Recarga({
    required this.contact,
    required this.recargaValue,
    this.pymentDate,
    required this.recargaDate,
  });

  Recarga copyWith({
    Contact? contact,
    double? recargaValue,
    DateTime? pymentDate,
    DateTime? recargaDate,
  }) {
    return Recarga(
      contact: contact ?? this.contact,
      recargaValue: recargaValue ?? this.recargaValue,
      pymentDate: pymentDate ?? this.pymentDate,
      recargaDate: recargaDate ?? this.recargaDate,
    );
  }

  @override
  List<Object?> get props => [contact, recargaValue, recargaDate, pymentDate];
}
