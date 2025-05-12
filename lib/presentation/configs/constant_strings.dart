
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/data/model/experience.dart';
import 'package:portfolio/data/model/project_info.dart';
import 'package:portfolio/data/model/quote.dart';
import 'package:portfolio/data/model/route_model.dart';
import 'package:portfolio/data/model/showcase_project.dart';
import 'package:portfolio/data/model/social_media.dart';
import 'package:portfolio/presentation/configs/configs.dart';
import 'package:portfolio/presentation/route/routes.dart';

/// constant strings are prefixed with [ks]
const String ksFontFamily = "ShantellSans";

const String ksFlutterDeveloperAnd = "Flutter Developer &";
const String ksCPEnthusiast = "CP Enthusiast ";
const String ksAiEnthusiast = "ai enthusiast";
const String ksTechNerd = "a  tech  nerd";
const String ksFlutterDev = "flutter  dev";
const String coffeeAddict = "coffee addict";
const String ksIntrovert = "an introvert";
const String ksIm = "I'm";
const String ksIntro = """
  Hi, I'm Nikhil!
    - a passionate flutter developer
    - a BTech student from KIET
    - an avid reader
  """;
const String ksSeeMyWork = "See my work";
const String ksBrowseProjects = "Browse My Projects";
const String ksWhatElse =
    "What else? I have freelanced on several side projects.";
const String ksSayHello = "Just say Hello to collaborate!";
const String ksHome = "Home";
const String ksAbout = "About";
const String ksExperience = "My Experience";
const String ksCertificates = "Certificates";
const String ksProject = "My Projects";
const String ksViewProject = "View Project";
const String ksCraftedWithLove = "Crafted with Love";
const String ksRecentProjects = "Here are a selection of my recent projects";
const String ksCraftedProjects =
    'Here are some of my carefully crafted projects';
const String ksContact = "Contact Me";
const String ksAboutMe = "About Me";
const String ksBgStory = "Background Story";
const String ksTools = "Tools & Technology";
const String ksAllAboutMe = "All About Me";
const String ksGithub = "Github";
const String ksLinkedIn = "LinkedIn";
const String ksDiscord = "Discord";
const String ksSendMessage = 'Send Message';

const String ksSlash = "/";
const String ksLetsWork = "Let's work together!";
const String ksFreelanceAvailability = "I'm available for Freelancing";
const String ksContactInfo = "- Contact Info";
const String ksWorkEmail = "nikhilljatt@gmail.com";
const String ksWorkPhone = "+91 8708200907";
const String ksBuildUsing = "Build using ";
const String ksWithMuch = " with much ";
const String ksYoung = "When I was young, I was a kid!";
const String ksNobody = "I'm NOBODY";
const String ksSpecialization =
    "I specialize in Mobile Technologies and highly passionate about developing quality applications, open-source works and Competetive Programming.";
const String ksWhoAmI = 'Who Am I?';
const String ksWhatILove = "What I Love To Do";
const String ksBriefAboutMe =
    "Hi! I'm a flutter Developer who is passionate about emerging Technologies and Competetive Programming. I have fairly extensive amount of experience in developing high quality applications and rated 5-star on CodeChef";
const String ksMyLife =
    "I am a first year student from the KIET group of Institutions, Ghaziabad, UP.";
const String ksProfession =
    "I started working as a Flutter Developer since the beginning of my college (Sept 2025). Later, I fell in love with it. ";

const String ksMyTools =
    "I use a bunch of tools and technologies to make design and implementation process easier. ";
const String ksWeapon = "My favorite choice of weapon is ";
const String ksFlutter = "Flutter & Dart";

const String ksMobile = 'Mobile Technologies';
const String ksWebAndOther = 'Web & Other Technologies';
final List<String> ksMobileTech = ['Flutter', 'Dart'];
final List<String> ksWebTech = [
  'HTML',
  'CSS',
  'Java',
];
final List<String> ksOtherTech = [
  'Firebase',
  'Python',
  'c++',
  'c',
  'Assembly x86'
];

const String ksCoding = "Software Engineering";
const String ksCodingMobile = "Software\nEngineering";
const String ksCoffee = "Coffee";
const String ksReading = "Reading";
const String ksMusic = "Hip Hop Music";
const String ksMusicMobile = "Hip Hop\nMusic";
const String ksMovie = "Movies";
const String ksExplore = "Exploring more...";
const String ksExploreMobile = "Exploring\nmore...";

final List<RouteModel> ksMenu = [
  RouteModel(label: ksHome, route: Routes.home),
  RouteModel(label: ksProject, route: Routes.projects),
  RouteModel(label: ksExperience, route: Routes.experience),
  RouteModel(label: ksCertificates, route: Routes.certificates),
  RouteModel(label: ksAbout, route: Routes.about),
  RouteModel(label: ksContact, route: Routes.contact),
];



final List<Experience> ksExperiences = [
  Experience(
    company: "API Dash",
    position: "Open Source Contrivutions",
    responsibilities: [
      "fixed codegen feature for rust - Alamofire",
      "fixed codegen feature for swift - URLSession",
      "added codegen feature for swift - Alamofire",
      "fixed a bug in horizontal scroll",
      "added support for params having multiple values",
      
    ],
    githubLink: "https://github.com/foss42/apidash/pulls?q=+is%3Apr+author%3Abadnikhil+",
    startDate: DateTime(2025, 2),
    endDate: DateTime.now(),
  ),




];


const String _nikolaTesla = "Nikola Tesla";
const String _kentBeck = "Kent Beck";
const String _linusTorvalds = "Linus Torvalds";
const String _donaldKnuth = "Donald Knuth";
const String _albertEinstein = "Albert Einstein";
const String _alanTuring = "Alan Turing";
const String _johnLennon = "John Lennon";
const String _steveJobs = "Steve Jobs";
const String _kurtCobain = "Kurt Cobain";
const String _jamesClear = "James Clear";
final List<Quote> ksQuotes = [
  Quote(
    name:
        "Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more.",
    author: _nikolaTesla,
  ),
  Quote(
    name:
        "I’m not a great programmer. I’m just a good programmer with great habits.",
    author: _kentBeck,
  ),
  Quote(
    name: "I'm generally a very pragmatic person: that which works, works.",
    author: _linusTorvalds,
  ),
  Quote(
    name: "Premature optimization is the root of all evil.",
    author: _donaldKnuth,
  ),
  Quote(
    name:
        "Everyday life is like programming, I guess. If you love something you can put beauty into it.",
    author: _donaldKnuth,
  ),
  Quote(
    name: "A person who never made a mistake never tried anything new.",
    author: _albertEinstein,
  ),
  Quote(
    name: "I have no special talent. I am only passionately curious.",
    author: _albertEinstein,
  ),
  Quote(
    name:
        "Sometimes it is the people who no one imagines anything of who do the things that no one can imagine.",
    author: _alanTuring,
  ),
  Quote(
    name: "Life is what happens when you're busy making other plans.",
    author: _johnLennon,
  ),
  Quote(
    name: "The duty of youth is to challenge corruption.",
    author: _kurtCobain,
  ),
  Quote(
    name: "Stay hungry, stay foolish.",
    author: _steveJobs,
  ),
  Quote(
    name: "It's hard to build momentum if you're dividing your attention.",
    author: _jamesClear,
  ),
  Quote(
    name: "Deconstruction creates knowledge. Recombination creates value.",
    author: _jamesClear,
  ),
];

const String ksGithubLink = 'https://github.com/badnikhil';
const String ksLinkedInLink = 'www.linkedin.com/in/nikhil-ludder-ba631216b';
const String ksDiscordLink = 'https://discordapp.com/users/629285766639386624';
final List<SocialMedia> ksSocialMedia = [

  SocialMedia(
    link: ksGithubLink,
    icon: FaIcon(
      FontAwesomeIcons.github,
      color: kSecondary,
      size: s18,
    ),
  ),
  SocialMedia(
    link: ksLinkedInLink,
    icon: FaIcon(
      FontAwesomeIcons.linkedin,
      color: kSecondary,
      size: s18,
    ),
  ),

  SocialMedia(
    link: ksDiscordLink,
    icon: FaIcon(
      FontAwesomeIcons.discord,
      color: kSecondary,
      size: s18,
    ),
  ),
];

const String _FLUTTER = 'Flutter';
const String _DART = 'Dart';
const String _FIREBASE = 'Firebase';
const String _ME = 'Nikhil';

const String _ANDROID = 'Android';
const String _IOS = 'Ios';
const String _WINDOWS = 'Windows';
const String _LINUX = 'Linux';
const String _MAC = 'MacOs';
final List<ShowcaseProject> ksShowcaseProjects = [
  ShowcaseProject(
    title: 'Grocery App',
    image: kaPulseX,
    shortDescription:
        "A simple grocery app built with Flutter ",
    description: """sa
        This an e-commerce app that allows users to browse and purchase groceries online.
          
          Browse product categories.
          Browse products of any category.
          Add product to cart.
          Remove product from cart.
          View product details.
          Toggle app theme to dark theme.

        """,
    link: ProjectInfo(
      icon: kiLink,
      label: "Project Links",
      isLink: true,
      contents: [
        "https://github.com/badnikhil/grocery-app",
      ],
    ),
    heroTag: 'Grocery App',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Commercial',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
        _WINDOWS,
        _LINUX,
        _MAC,
      ],
    ),
  ),
  ShowcaseProject(
    title: 'Recipe App',
    image: kaNotee,
    shortDescription: "recipe app built with Flutter and Firebase",
    description: """
        THis is a simple recipe showing app that includes four parts :
          - Saving liked recipes
          - Authentication (firebase)
          - Search/ViewAcross all recipes available on mealDB API
        """,
    link: ProjectInfo(
        icon: kiLink,
        label: "Project Links",
        isLink: true,
        contents: [
          "https://github.com/badnikhil/recipe-app",
        ]),
    heroTag: 'recipe-app',
    tags: ProjectInfo(
      icon: kiTag,
      label: 'Tags',
      isTag: true,
      contents: [
      ],
    ),
    tech: ProjectInfo(
      icon: kiChip,
      label: 'Tools & Technologies',
      contents: [
        _FLUTTER.toUpperCase(),
        _DART.toUpperCase(),
        _FIREBASE.toUpperCase(),
      ],
    ),
    author: ProjectInfo(
      icon: kiPerson,
      label: 'Developer',
      contents: [
        _ME,
      ],
    ),
    platform: ProjectInfo(
      icon: kiLaptop,
      label: 'Available Platforms',
      contents: [
        _ANDROID,
        _IOS,
      ],
    ),
  ),
];
