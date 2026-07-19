import 'package:flutter/material.dart';
import 'package:portfolio_app/models/profile.dart';

const profile = Profile(
  initials: 'AS',
  name: 'Arreeya Sungthong',
  bio:
      'Mobile Developer with 3 years of Flutter experience, having shipped and maintained 4 production apps on the App Store and Play Store. Focused on clean, maintainable code and adapting to different architectures across projects. Works well as part of a team, and independently, including owning full release cycles solo when needed.',
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
