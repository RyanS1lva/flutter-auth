class User {
  final String id;
  final String aud;
  final String role;
  final String email;
  final String? phone;
  final DateTime? confirmationSentAt;
  final AppMetadata appMetadata;
  final Map<String, dynamic> userMetadata;
  final List<UserIdentity> identities;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isAnonymous;

  const User({
    required this.id,
    required this.aud,
    required this.role,
    required this.email,
    this.phone,
    this.confirmationSentAt,
    required this.appMetadata,
    required this.userMetadata,
    required this.identities,
    required this.createdAt,
    required this.updatedAt,
    required this.isAnonymous,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      aud: json['aud'] as String,
      role: json['role'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      confirmationSentAt: json['confirmation_sent_at'] != null
          ? DateTime.parse(json['confirmation_sent_at'])
          : null,
      appMetadata: AppMetadata.fromJson(
        json['app_metadata'] as Map<String, dynamic>,
      ),
      userMetadata: json['user_metadata'] as Map<String, dynamic>,
      identities: (json['identities'] as List<dynamic>)
          .map((e) => UserIdentity.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      isAnonymous: json['is_anonymous'] as bool,
    );
  }
}

class AppMetadata {
  final String provider;
  final List<String> providers;

  const AppMetadata({required this.provider, required this.providers});

  factory AppMetadata.fromJson(Map<String, dynamic> json) {
    return AppMetadata(
      provider: json['provider'] as String,
      providers: List<String>.from(json['providers'] ?? []),
    );
  }
}

class UserIdentity {
  final String identityId;
  final String id;
  final String userId;
  final IdentityData identityData;
  final String provider;
  final DateTime lastSignInAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String email;

  const UserIdentity({
    required this.identityId,
    required this.id,
    required this.userId,
    required this.identityData,
    required this.provider,
    required this.lastSignInAt,
    required this.createdAt,
    required this.updatedAt,
    required this.email,
  });

  factory UserIdentity.fromJson(Map<String, dynamic> json) {
    return UserIdentity(
      identityId: json['identity_id'] as String,
      id: json['id'] as String,
      userId: json['user_id'] as String,
      identityData: IdentityData.fromJson(
        json['identity_data'] as Map<String, dynamic>,
      ),
      provider: json['provider'] as String,
      lastSignInAt: DateTime.parse(json['last_sign_in_at']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      email: json['email'] as String,
    );
  }
}

class IdentityData {
  final String email;
  final bool emailVerified;
  final bool phoneVerified;
  final String sub;

  const IdentityData({
    required this.email,
    required this.emailVerified,
    required this.phoneVerified,
    required this.sub,
  });

  factory IdentityData.fromJson(Map<String, dynamic> json) {
    return IdentityData(
      email: json['email'] as String,
      emailVerified: json['email_verified'] as bool,
      phoneVerified: json['phone_verified'] as bool,
      sub: json['sub'] as String,
    );
  }
}
