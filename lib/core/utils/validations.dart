String? validateName(
    String? value, int minLength, int maxLength, String fieldName) {
  if (value == null || value.trim().isEmpty) {
    return "Please enter $fieldName.";
  } else if (value.length < minLength || value.length > maxLength) {
    return "$fieldName must be between $minLength and $maxLength characters.";
  } else if (RegExp(r'^\d+$').hasMatch(value)) {
    return "$fieldName cannot contain numbers only.";
  } else if (RegExp(r'^[^a-zA-Z]').hasMatch(value)) {
    return "$fieldName must start with a letter.";
  } else if (!RegExp(r'^[a-zA-Z0-9\s_-]+$').hasMatch(value)) {
    return "$fieldName only allows letters, numbers, spaces, '_', and '-'.";
  }
  return null;
}
