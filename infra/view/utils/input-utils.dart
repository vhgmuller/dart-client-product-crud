class InputUtils {
  static int validadeInt(String? inputLineSync) {
    if (inputLineSync == null || inputLineSync.isEmpty) {
      return 0;
    }
    try {
      return int.parse(inputLineSync);
    } catch (Exception) {
      return 0;
    }
  }

  static String validadeCPF(String inputLineSync) {
    final validCharacters = RegExp(r'^[0-9_\-=@,\.;]+$');

    if (inputLineSync.length < 11 ||
        inputLineSync.length > 11 ||
        !validCharacters.hasMatch(inputLineSync)) {
      print('Insira um CPF válido');
      return '';
    }
    return inputLineSync;
  }

  static String validadeCEP(String inputLineSync) {
    final validCharacters = RegExp(r'^[0-9_\-=@,\.;]+$');

    if (inputLineSync.length < 8 ||
        inputLineSync.length > 8 ||
        !validCharacters.hasMatch(inputLineSync)) {
      print('Insira um CEP válido');
      return '';
    }
    return inputLineSync;
  }
}

main() {
  InputUtils.validadeCPF('08469626920');
}
