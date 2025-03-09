//Function to validate the User Name field
String? validateUsername(String? value) {
  if (value == null || value.trim().isEmpty) {
    return "Please Enter Username.";
  } else if (value.length < 3 || value.length > 20) {
    return "Username Must Be Between 3 And 20 Characters.";
  } else if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9]*$').hasMatch(value)) {
    return "Username Must Start With A Letter And Contain Only Letters And Numbers.";
  }
  return null;
}

//Function to validate password field
String? validatePassword(String? value) {
  if (value == null || value.isEmpty) {
    return "Please Enter Password.";
  } else if (value.length < 8 || value.length > 20) {
    return "Password Must Be Between 8 And 20 Characters.";
  }
  return null;
}

// Reusable validator for multiple text input fields with length and format constraints.
String? validateTextField(
    String? value, int minLength, int maxLength, String fieldName) {
  if (value == null || value.trim().isEmpty) {
    return "Please Enter $fieldName.";
  } else if (value.length < minLength || value.length > maxLength) {
    return "$fieldName Must Be Between $minLength And $maxLength Characters.";
  } else if (RegExp(r'^\d+$').hasMatch(value)) {
    return "$fieldName Cannot Contain Numbers Only.";
  } else if (RegExp(r'^[^a-zA-Z]').hasMatch(value)) {
    return "$fieldName Must Start With A Letter.";
  } else if (!RegExp(r'^[a-zA-Z0-9\s_-]+$').hasMatch(value)) {
    return "$fieldName Only Allows Letters, Numbers, Spaces, '_', And '-'.";
  }
  return null;
}

//Function to validate the Date of Birth field
String? validateDate(String? value, String fieldName) {
  if (value == null || value.trim().isEmpty) {
    return "Please Select  $fieldName.";
  }
  return null; // No error
}

// Function to validate the email field
String? validateEmail(String? value) {
  if (value == null || value.trim().isEmpty) {
    return "Please Enter Email.";
  } else if (!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
      .hasMatch(value)) {
    return "Please Enter A Valid Email Address.";
  }
  return null;
}

//  Function to Validates a phone number field
String? validatePhoneNumber(String? value) {
  if (value == null || value.trim().isEmpty) {
    return "Please Enter Phone Number.";
  } else if (!RegExp(r'^(70|71|73|77|78)\d{6}$').hasMatch(value)) {
    return "Please Enter A Valid Phone Number (e.g., 770123456).";
  }
  return null;
}

//  Function to Validates a name field
String? validateName(String? value) {
  if (value == null || value.trim().isEmpty) {
    return "Please Enter Name.";
  } else if (value.length > 30) {
    return "Name Must Be Between 1 And 30 Characters.";
  } else if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value.trim())) {
    return "The Name Should Only Contain Letters, No Numbers Or Special Characters.";
  }
  return null;
}

// A reusable validator for numeric fields with dynamic field name and range
String? validateNumberField(
  String? value,
  int min,
  int max,
  String fieldName,
) {
  if (value == null || value.trim().isEmpty) {
    return "Please Enter $fieldName.";
  } else if (!RegExp(r'^\d+$').hasMatch(value)) {
    return "$fieldName Must Be A Valid Number.";
  } else if (int.tryParse(value)! < min) {
    return "$fieldName Must Be At Least $min.";
  } else if (int.tryParse(value)! > max) {
    return "$fieldName Cannot Exceed $max.";
  }
  return null;
}

//  Function to Validates a type Educational Institution field
String? validateOption(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please select a type';
  }
  return null;
}
