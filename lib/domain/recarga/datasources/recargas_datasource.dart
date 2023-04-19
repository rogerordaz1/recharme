import 'package:recharme/domain/recarga/entities/contact.dart';
import 'package:recharme/domain/recarga/entities/recarga.dart';

abstract class RecargasDatasource {
  Future<List<Recarga>> getAllRecargas();
  Future<Recarga> addRecargaToBD(Contact contact);
}
