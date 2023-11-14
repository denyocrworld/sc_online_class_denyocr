import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:text_to_speech/core.dart';
import '../../../service/tts_service/tts_service.dart';
import '../view/word_dictionaries_view.dart';

class WordDictionariesController extends State<WordDictionariesView> {
  static late WordDictionariesController instance;
  late WordDictionariesView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List words = [
    "HTML",
    "CSS",
    "JavaScript",
    "Responsive Design",
    "UI",
    "UX",
    "Framework",
    "Library",
    "Bootstrap",
    "Sass",
    "LESS",
    "Webpack",
    "Babel",
    "API",
    "AJAX",
    "JSON",
    "DOM",
    "HTTP",
    "HTTPS",
    "Browser",
    "Mobile First",
    "Cross-Browser Compatibility",
    "Viewport",
    "Viewport Meta Tag",
    "Media Queries",
    "Front-End Development",
    "Back-End Development",
    "Version Control",
    "Git",
    "GitHub",
    "Bitbucket",
    "Command Line",
    "Responsive Images",
    "CSS Grid",
    "Flexbox",
    "CSS Preprocessor",
    "HTML5",
    "CSS3",
    "ES6",
    "TypeScript",
    "Package Manager",
    "NPM",
    "Yarn",
    "Node.js",
    "React",
    "Vue.js",
    "Angular",
    "State",
    "Props",
    "Component",
    "Router",
    "Redux",
    "Vuex",
    "Webpack",
    "Bundling",
    "Minification",
    "Transpilation",
    "Linting",
    "CSS-in-JS",
    "Responsive Web Design",
    "Viewport",
    "Mobile-First Design",
    "Progressive Web App (PWA)",
    "Single Page Application (SPA)",
    "Web Accessibility",
    "Cross-Browser Compatibility",
    "Front-End Framework",
    "User Interface (UI) Design",
    "User Experience (UX) Design",
    "Wireframing",
    "Prototyping",
    "Web Performance Optimization",
    "SEO",
    "Critical Rendering Path",
    "Web Animation",
    "API Integration",
    "RESTful API",
    "GraphQL",
    "Web Security",
    "Authentication",
    "Authorization",
    "OAuth",
    "Cookies",
    "Session",
    "LocalStorage",
    "Web Hosting",
    "Domain Name",
    "CDN",
    "Responsive Typography",
    "Semantic HTML",
    "A/B Testing",
    "Continuous Integration (CI)",
    "Continuous Deployment (CD)",
    "Progressive Enhancement",
    "Lazy Loading",
    "UI Testing",
    "End-to-End Testing",
    "Code Splitting",
    "Web Components",
    "Material Design",
    "Atomic Design",
    "CSS Variables",
    "Responsive Breakpoints",
    "Debugging",
    "Web Inspector",
    "Browser Developer Tools",
    "Front-End Build Tools",
    "Front-End Frameworks",
    "Web Design Patterns",
    "User-Centered Design",
    "Component-Based Architecture",
    "Web Accessibility Standards",
    "CSS Animation",
    "Front-End Performance Optimization",
    "Mobile Optimization",
    "Progressive Enhancement",
    "SPA Routing",
    "Dependency Management",
    "Static Site Generator",
    "Content Management System (CMS)"
  ];

  //HP 15 Ryzen 5 5500u
  // convertTextToSpeech()
  convertTextToSpeech(String word) async {
    await TTSService.toSpeech(word);
  }
  //get, post, put, delete, convert, extract, run

  int currentIndex = 0;
  bool isPlaying = false;

  next() async {
    if (isPlaying == false) return;
    if (currentIndex == words.length) return;

    currentIndex++;
    String word = words[currentIndex];
    await TTSService.toSpeech(word);
    setState(() {});

    await next();
  }

  Timer? timer;
  play() async {
    isPlaying = true;
    if (timer != null && timer!.isActive) return;
    currentIndex = -1;
    await next();
  }

  stop() {
    isPlaying = false;
    currentIndex = 0;
    timer?.cancel();
    setState(() {});
  }
}
