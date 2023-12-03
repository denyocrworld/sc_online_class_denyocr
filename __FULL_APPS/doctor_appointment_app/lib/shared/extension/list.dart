extension CustomListExtension on List {
  toComboValues({
    required String labelKey,
    required String valueKey,
  }) {
    List comboValues = [];
    var items = this;
    for (var i = 0; i < items.length; i++) {
      var item = items[i];

      comboValues.add({
        "label": item[labelKey],
        "value": item[valueKey],
      });
    }

    return comboValues;
  }
}
