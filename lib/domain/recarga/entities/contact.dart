// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class Contact extends Equatable {
  final String name;
  final String phoneNumber;
  final String? email;
  final String? image;

  const Contact({
    required this.name,
    required this.phoneNumber,
    this.email,
    this.image,
  });

  Contact copyWith({
    String? name,
    String? phoneNumber,
    String? email,
    String? image,
  }) {
    return Contact(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      image: image ?? this.image,
    );
  }

  @override
  List<Object?> get props => [name, phoneNumber, email, image];
}
