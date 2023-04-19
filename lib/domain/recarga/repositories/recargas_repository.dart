import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../entities/contact.dart';
import '../entities/recarga.dart';

abstract class RecargasRepository {
  Future<Either<Failure, List<Recarga>>> getAllRecargas();

  Future<Either<Failure, Recarga>> addRecargaToBD(Contact contact);
}
