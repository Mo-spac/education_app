validatorStrings(String value, String type, String title) {
  if (value!.isEmpty) {
    return "الرجاء ادخال ${title} ";
  }
  if (type == "email") {
    if (!value.contains("@")) {
      return "الرجاء ادخال بريد الكترونى صحيح";
    }
  }
  if (type == "pass") {
    if (value.length < 8) {
      return "كلمة المرور ضعيفة";
    }
  }
  if (type == "phone") {
    if (value != 11) {
      return "رقم الموبايل غير صحيح";
    }
  }
}
