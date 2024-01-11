import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class StringInput extends FormBuilderTextField {
  StringInput({
    Key? key,
    required String label,
    required String? value,
    required void Function(String?) onChange,
    bool? isRequired = false,
    bool? isAnEmail = false,
    int? minLength,
    int? maxLength,
  }) : super(name: label, initialValue: value, onChanged: onChange, validator: FormBuilderValidators.compose([
    ...isRequired ?? false ? [FormBuilderValidators.required()] : [],
    ...isAnEmail ?? false ? [FormBuilderValidators.email()] : [],
    ...minLength != null ? [FormBuilderValidators.minLength(minLength)] : [],
    ...maxLength != null ? [FormBuilderValidators.maxLength(maxLength)] : [],
  ]));
}
