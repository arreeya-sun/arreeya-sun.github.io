import 'package:flutter/material.dart';

class Profile {
  final String initials;
  final String name;
  final String bio;
  final String email;
  final List<String> roles;
  final List<ContactInfo> contacts;

  const Profile({
    required this.initials,
    required this.name,
    required this.bio,
    required this.email,
    required this.roles,
    required this.contacts,
  });
}

enum ContactAction { email, phone, link }

class ContactInfo {
  final IconData icon;
  final String label;
  final ContactAction action;
  final String? url;

  const ContactInfo({
    required this.icon,
    required this.label,
    required this.action,
    this.url,
  });
}
