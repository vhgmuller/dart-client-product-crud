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
}
