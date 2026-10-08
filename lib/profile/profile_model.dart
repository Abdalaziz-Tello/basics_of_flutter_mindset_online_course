// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ? Dart Data class generator : hzgood

class ProfileModel {
  String email;
  String username;
  String image;
  ProfileModel({
    required this.email,
    required this.username,
    required this.image,
  });

  ProfileModel copyWith({
    String? email,
    String? username,
    String? image,
  }) {
    return ProfileModel(
      email: email ?? this.email,
      username: username ?? this.username,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'username': username,
      'image': image,
    };
  }

  factory ProfileModel.fromMap(Map<String, dynamic> map) {
    return ProfileModel(
      email: map['email'] as String,
      username: map['username'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileModel.fromJson(String source) => ProfileModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProfileModel(email: $email, username: $username, image: $image)';

  @override
  bool operator ==(covariant ProfileModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.email == email &&
      other.username == username &&
      other.image == image;
  }

  @override
  int get hashCode => email.hashCode ^ username.hashCode ^ image.hashCode;
}
