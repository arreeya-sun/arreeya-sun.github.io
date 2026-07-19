import 'package:portfolio_app/gen/assets.gen.dart';
import 'package:portfolio_app/models/project.dart';

final List<Project> projects = [
  Project(
    title: 'RizzUp Dating App',
    provider: 'Dating App Company Limited',
    category: 'Lifestyle',
    platform: 'iOS · Android',
    description:
        'RizzUp. A dating app with features like swipe-based candidate discovery, seeing who likes you, sending Charms to show interest, and scheduling dates.',
    techStack: [
      'Flutter',
      'Clean Architecture',
      'Cubit',
      'Firebase Crashlytics',
      'Firebase Remote Config',
    ],
    features: [
      'Built the majority of the app\'s screens, from candidate discovery to date scheduling and reviews, handling both UI and API integration',
      'Took full ownership of the release process as the only mobile developer on the app for 5 months',
      'Refactored code across the app, cutting splash screen load time from 3-5s to under 1s',
    ],
    iconAsset: Assets.icons.logoRizzUp,
    screenshots: [
      Assets.images.rizzupCatalog,
      Assets.images.rizzupChat,
      Assets.images.rizzupEvent,
    ],
    appStoreUrl:
        'https://apps.apple.com/th/app/rizzup-dating-app-chat-date/id6742136191',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.sevensolutions.rizzup&hl=en',
  ),
  Project(
    title: 'KU GradLife',
    provider: 'Kasetsart University',
    category: 'Education',
    platform: 'iOS · Android',
    description:
        'KU GradLife. Official mobile app for Kasetsart University graduate students, providing convenient and secure access to essential university services and information.',
    techStack: [
      'Flutter',
      'MVC',
      'GetX',
      'Flutter Secure Storage',
    ],
    features: [
      'Implemented secure, rotating token storage, where each API response provides the token for the next request',
      'Built offline support that caches profile, thesis, and grade data locally, falling back to cached data when the device is offline or an API call fails',
      'Handled UI, API integration, and logic for assigned features as one of 2 mobile developers on the project',
    ],
    iconAsset: Assets.icons.logoKuGradLife,
    screenshots: [
      Assets.images.kuLogin,
      Assets.images.kuHome,
      Assets.images.kuCard,
    ],
    appStoreUrl: 'https://apps.apple.com/th/app/ku-gradlife/id6746635603',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=th.ac.ku.grad.kugradlife',
  ),
  Project(
    title: 'iThesis',
    provider: 'Facgure Company Limited',
    category: 'Productivity',
    platform: 'iOS · Android',
    description:
        'iThesis NexGen. An AI-powered assistant for thesis and document management, featuring AI chat with Rover, smart form-to-document export, and plagiarism detection.',
    techStack: [
      'Flutter',
      'MVC',
      'Provider',
      'Firebase Firestore',
      'Firebase Crashlytics',
    ],
    features: [
      'Tracked plagiarism results in real time using Firebase Firestore streams',
      'Refactored the plagiarism-check flow into a single shared stream, reducing redundant Firestore reads and improving data consistency',
      'Contributed to the app\'s core screens, handling both UI and API integration',
    ],
    iconAsset: Assets.icons.logoIThesis,
    screenshots: [
      Assets.images.ithesisHome,
      Assets.images.ithesisPlag,
      Assets.images.ithesisChat,
    ],
    appStoreUrl: 'https://apps.apple.com/th/app/ithesis-nexgen/id6741785284',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.facgure.ithesis.nexgen',
  ),
  Project(
    title: 'LPG Shop',
    provider: null,
    category: 'Shopping',
    platform: 'iOS · Android',
    description:
        'LPG Shop. A management app for PTT LPG dealer shops, offering a new sales channel, daily sales dashboard, and real-time order tracking.',
    techStack: [
      'Flutter',
      'MVC',
      'Provider',
      'Sendbird SDK',
      'Firebase Crashlytics',
    ],
    features: [
      'Integrated real-time chat using Sendbird SDK',
      'Added custom notification sounds for a more personalized experience',
      'Resolved critical bugs and improved app performance based on Firebase Crashlytics',
    ],
    iconAsset: Assets.icons.logoLpg,
    screenshots: [
      Assets.images.lpgLogin,
      Assets.images.lpgOrder,
      Assets.images.lpgChat,
    ],
    appStoreUrl: 'https://apps.apple.com/th/app/lpg-shop/id1629566483',
    playStoreUrl:
        'https://play.google.com/store/apps/details?id=com.pttor.ldp.shop',
  ),
];
