mixin FormValidatorMixin {
  String? isNotEmpty(String? value, [String? message]) {
    if (value == null || value.isEmpty) {
      return message ?? ' Campo obrigatório.';
    }

    return null;
  }

  String? isEmail(String? value) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$');

    if (value == null || !emailRegex.hasMatch(value)) {
      return 'Insira um e-mail válido.';
    }

    return null;
  }

  String? hasMinChars(String? value, int minChars, [String? message]) {
    if (value == null || value.length < minChars) {
      return message ?? 'É necessário ter pelo menos $minChars caracteres';
    }

    return null;
  }

  String? hasEqualPasswords(String? password, String? confirmPassword) {
    if (password != confirmPassword) {
      return 'As senhas não conferem.';
    }

    return null;
  }

  String? combine(List<String? Function()> validators) {
    for (final func in validators) {
      final validation = func();
      if (validation != null) return validation;
    }

    return null;
  }
}
