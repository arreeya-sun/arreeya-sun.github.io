import 'package:flutter/material.dart';
import 'package:portfolio_app/models/profile.dart';

const profile = Profile(
  initials: 'AS',
  name: 'Arreeya Sungthong',
  bio:
      'Mobile Developer with 3 years of Flutter experience, having shipped and maintained 7 production apps on the App Store and Play Store. Writes clean, maintainable code and adapts quickly to different architectures and codebases. Comfortable working across multiple squads or owning releases solo when needed.',
  email: 'arreeya.sun@gmail.com',
  roles: ['Mobile Developer', 'Flutter Developer'],
  contacts: [
    ContactInfo(
      icon: Icons.mail_outline_rounded,
      label: 'arreeya.sun@gmail.com',
      action: ContactAction.email,
    ),
    ContactInfo(
      icon: Icons.phone_outlined,
      label: '082 645 7507',
      action: ContactAction.phone,
    ),
    // ContactInfo(
    //   icon: Icons.code_rounded,
    //   label: 'GitHub',
    //   action: ContactAction.link,
    //   url: '',
    // ),
    ContactInfo(
      icon: Icons.work_outline_rounded,
      label: 'LinkedIn',
      action: ContactAction.link,
      url: 'https://www.linkedin.com/in/arreeya/',
    ),
  ],
);
