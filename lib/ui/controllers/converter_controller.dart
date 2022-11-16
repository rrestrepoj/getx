import 'package:calculadorabinariodecimalgetx/domain/use_case/converter.dart';
import 'package:get/get.dart';

class ConverterController extends GetxController {
  final _decimal = '0'.obs;
  final _binary = '0'.obs;

  String get decimal => _decimal.value;
  String get binary => _binary.value;

  void updateDecimal(int digit) {
    // TODO: Ajusta el valor decimal con Converter.adjustValue
    _decimal.value = Converter.adjustValue(decimal, digit);

    // TODO: Actualoza el valor binario con Converter.dec2bin
    _binary.value = Converter.dec2bin(decimal);
  }

  void updateBinary(int digit) {
    // TODO: Ajusta el valor binario con Converter.adjustValue

    _binary.value = Converter.adjustValue(binary, digit);
    // TODO: Actualoza el valor decimal con Converter.bin2dec

    _decimal.value = Converter.bin2dec(binary);
  }

  void reset() {
    // TODO: Actualiza el valor binario y decimal a "0"
    _decimal.value = '0';
    _binary.value = '0';
  }
}
