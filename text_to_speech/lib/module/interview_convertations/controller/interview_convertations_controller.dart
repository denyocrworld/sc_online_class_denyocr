import 'package:flutter/material.dart';
import 'package:text_to_speech/core.dart';
import '../view/interview_convertations_view.dart';

class InterviewConvertationsController
    extends State<InterviewConvertationsView> {
  static late InterviewConvertationsController instance;
  late InterviewConvertationsView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List convertations = [
    {
      "from": "Interviewer",
      "en": "Hello, can you share your experience with React?",
      "spell":
          "He - low | ken yu | sher | yor | eks - pe - ri - ens | with | Ree - act",
      "id": "Halo, bisakah Anda berbagi pengalaman Anda dengan React?"
    },
    {
      "from": "Front-end Developer",
      "en": "Certainly! I have been working with React for five years.",
      "spell":
          "Ser - ten - lee | Ay | haf | bin | wuhr - king | with | Ree - act | for | fahyv | yirs",
      "id": "Tentu! Saya telah bekerja dengan React selama lima tahun."
    },
    {
      "from": "Interviewer",
      "en": "That's impressive. What projects have you worked on using React?",
      "spell":
          "That's | im - pres - iv | Wat | proj - ekts | haf | yu | wuhr - ked | on | yoo - sing | Ree - act",
      "id":
          "Itu mengesankan. Proyek apa yang telah Anda kerjakan menggunakan React?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "I've worked on a variety of projects, including e-commerce websites, social media platforms, and mobile applications.",
      "spell":
          "Ayv | wuhr - ked | on | a | vuh - ry - uh - tee | of | proj - ekts | in - kloo - ding | ee - kom - ers | web - sayts | soh - shul | mee - dee - uh | plat - fawrms | and | moh - byl | ap - li - kay - shuns",
      "id":
          "Saya telah bekerja pada berbagai proyek, termasuk situs web e-commerce, platform media sosial, dan aplikasi mobile."
    },
    {
      "from": "Interviewer",
      "en":
          "Can you tell me about a challenging problem you solved using React?",
      "spell":
          "Ken | yu | tel | mi | a - bout | uh | chal - en - jing | prob - lem | yoo | solvd | yoo - sing | Ree - act",
      "id":
          "Bisakah Anda ceritakan masalah yang menantang yang telah Anda selesaikan dengan menggunakan React?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "Certainly! One challenging problem I encountered was optimizing the performance of a complex data visualization component in a healthcare application.",
      "spell":
          "Ser - ten - lee | Wuhn | chal - en - jing | prob - lem | Ay | in - kown - terd | wuhz | op - tuh - myz - ing | the | per - for - muns | of | uh | kuhm - pleks | dey - tuh | vizh - yoo - uh - li - zay - shun | kuhm - poh - nunt | in | uh | helth - kehr | ap - li - kay - shun",
      "id":
          "Tentu! Salah satu masalah yang menantang yang saya hadapi adalah mengoptimalkan kinerja komponen visualisasi data yang kompleks dalam aplikasi kesehatan."
    },
    {
      "from": "Interviewer",
      "en": "Impressive! How did you approach solving that problem?",
      "spell":
          "Im - pres - iv | Haw | did | yoo | uh - prohch | solv - ing | that | prob - lem",
      "id":
          "Mengesankan! Bagaimana Anda mendekati penyelesaian masalah tersebut?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "I started by profiling the component to identify performance bottlenecks. Then, I implemented code splitting and lazy loading to improve initial load times. Additionally, I optimized the rendering process and utilized memoization techniques to reduce unnecessary re-renders.",
      "spell":
          "Ay | stahr - ted | by | proh - fighl - ing | the | kuhm - poh - nunt | toh | eye - den - ti - fai | per - for - muns | bot - luh - necks | Then | Ay | im - pluh - men - ted | kohd | split - ting | and | lay - zee | loh - ding | toh | im - proh - v | in - ih - shuhl | lohd | tyms | Uh - di - shun - uh - lee | Ay | op - tuh - myzd | the | ren - dur - ing | proh - ses | and | yoo - ti - lahyzd | muh - moh - uh - zay - shun | tek - neeks | toh | ri - doos | un - nes - e - suh - ree - ren - duhrs",
      "id":
          "Saya memulai dengan melakukan profil komponen untuk mengidentifikasi bottlenecks kinerja. Kemudian, saya menerapkan pemisahan kode dan lazy loading untuk meningkatkan waktu muat awal. Selain itu, saya mengoptimalkan proses rendering dan menggunakan teknik memoization untuk mengurangi rendering yang tidak perlu."
    },
    {
      "from": "Interviewer",
      "en":
          "That sounds like a comprehensive solution. How did it impact the application's performance?",
      "spell":
          "That | sowndz | layk | uh | kom - pruh - hen - siv | soh - loo - shun | Haw | did | it | im - pact | the | ap - li - kay - shuns | per - for - muns",
      "id":
          "Itu terdengar seperti solusi yang komprehensif. Bagaimana dampaknya terhadap kinerja aplikasi?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "The optimizations significantly improved the application's performance. The complex data visualization component now loads faster, and the overall user experience has been enhanced.",
      "spell":
          "The | op - tuh - my - zay - shuns | sig - ni - fi - kant - lee | im - prohvd | the | ap - li - kay - shuns | per - for - muns | The | kom - pleks | dey - tuh | vizh - yoo - uh - li - zay - shun | now | lohds | fah - stur | and | the | oh - ver - awl | yoo - zer | ik - spe - ree - ens | hazz | bin | in - hahnst",
      "id":
          "Optimisasi tersebut secara signifikan meningkatkan kinerja aplikasi. Komponen visualisasi data yang kompleks sekarang lebih cepat dimuat, dan pengalaman pengguna secara keseluruhan telah ditingkatkan."
    },
    {
      "from": "Interviewer",
      "en":
          "That's great to hear. What other technologies do you work with alongside React?",
      "spell":
          "That's | grayt | toh | heer | Wat | uhdh - er | tek - nah - lah - jees | doh | yoo | wuhrk | with | uh - long - sahyd | Ree - act",
      "id":
          "Senang mendengarnya. Teknologi lain apa yang Anda gunakan bersama dengan React?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "I also work with Redux for state management and use TypeScript to ensure type safety in my projects. Additionally, I'm familiar with GraphQL for efficient data fetching and Apollo Client for managing GraphQL on the client side.",
      "spell":
          "Ay | ol - soh | wuhrk | with | Ree - ducks | for | stayt | man - ij - ment | and | yooz | Tyep - skript | toh | in - shoor | tyep | sayf - tee | in | may | proj - ekts | Uh - di - shun - uh - lee | Ay | im | fuh - mi - lyar | with | Grahf - kyoo - el | for | ef - ih - shent | dey - tuh | feth - ing | and | Ap - uh - loh | Kly - ent | for | man - ij - ing | Grahf - kyoo - el | on | the | kly - ent | syd",
      "id":
          "Saya juga bekerja dengan Redux untuk manajemen state dan menggunakan TypeScript untuk memastikan keamanan tipe dalam proyek-proyek saya. Selain itu, saya familiar dengan GraphQL untuk pengambilan data yang efisien dan Apollo Client untuk mengelola GraphQL di sisi klien."
    },
    {
      "from": "Interviewer",
      "en":
          "It seems like you have a diverse skill set. How do you stay updated with the latest developments in front-end technologies?",
      "spell":
          "It | seemz | layk | yoo | haf | uh | duh - vurs | skil | set | Haw | doh | yoo | stay | up - dayt - ed | with | the | lay - test | di - vel - up - munts | in | front - end | tek - nah - lah - jees",
      "id":
          "Sepertinya Anda memiliki beragam keterampilan. Bagaimana Anda tetap terkini dengan perkembangan terbaru dalam teknologi front-end?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "I regularly follow blogs, attend conferences, and participate in online communities dedicated to front-end development. This helps me stay informed about new tools, best practices, and emerging trends.",
      "spell":
          "Ay | reg - yoo - ler - lee | fah - loh | blogs | at - tend | kon - fer - ens - iz | and | pahr - ti - sip - eyt | in | on - lyn | kuh - myoo - ni - teez | dee - di - kayt - ed | toh | front - end | di - vel - up - ment | This | helps | mi | stay | in - fawrmd | uh - bout | nyoo | tohlz | best | prak - tih - suhs | and | ee - mur - jing | trends",
      "id":
          "Saya secara rutin mengikuti blog, menghadiri konferensi, dan berpartisipasi dalam komunitas online yang didedikasikan untuk pengembangan front-end. Ini membantu saya tetap terinformasi tentang alat-alat baru, praktik terbaik, dan tren yang sedang muncul."
    },
    {
      "from": "Interviewer",
      "en":
          "That's great to hear. Given your experience, can you share some insights on performance optimization techniques in React?",
      "spell":
          "That's | grayt | toh | heer | Giv - en | yor | eks - pe - ri - ens | Ken | yu | sher | suhm | in - sights | on | per - for - muns | op - tuh - my - zay - shun | tek - neeks | in | Ree - act",
      "id":
          "Senang mendengarnya. Berdasarkan pengalaman Anda, bisakah Anda berbagi wawasan mengenai teknik optimisasi kinerja dalam React?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "Certainly! When it comes to performance optimization in React, it's crucial to minimize unnecessary re-renders. One effective approach is to use PureComponent and shouldComponentUpdate to prevent rendering when the props and state haven't changed.",
      "spell":
          "Ser - ten - lee | Wen | it | kuhmz | toh | per - for - muns | op - tuh - my - zay - shun | in | Ree - act | it's | kroo - shuhl | toh | min - uh - myz | un - nes - e - suh - ree - ren - duhrs | Wuhn | ih - fek - tiv | ap - prohch | iz | toh | yooz | Pure - Com - poh - nunt | and | should - Com - poh - nent - Up - dayt | toh | pri - vent | ren - dur - ing | when | the | props | and | stayt | hav - ent | chaynjd",
      "id":
          "Tentu! Ketika berbicara tentang optimisasi kinerja dalam React, sangat penting untuk meminimalkan rendering yang tidak perlu. Salah satu pendekatan yang efektif adalah menggunakan PureComponent dan shouldComponentUpdate untuk mencegah rendering ketika props dan state tidak berubah."
    },
    {
      "from": "Interviewer",
      "en":
          "That's a valuable tip. What about code splitting and lazy loading? How do they impact the performance of a React application?",
      "spell":
          "That's | uh | val - yoo - uh - bul | tip | Wat | uh - bout | kohd | split - ting | and | lay - zee | loh - ding | How | doh | they | im - pact | the | per - for - muns | of | uh | Ree - act | ap - li - kay - shun",
      "id":
          "Itu adalah tips yang berharga. Bagaimana dengan pemisahan kode dan lazy loading? Bagaimana dampaknya terhadap kinerja aplikasi React?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "Code splitting and lazy loading are powerful techniques to improve the initial loading time of a React application. By breaking down the bundle into smaller, manageable chunks, you can reduce the time it takes to load the essential parts of the app, making it feel more responsive to users.",
      "spell":
          "Kohd | split - ting | and | lay - zee | loh - ding | ar | pow - erfuhl | tek - neeks | toh | im - prohvd | the | in - ih - shuhl | loh - ding | tyem | of | uh | Ree - act | ap - li - kay - shun | Bai | breaking | down | the | bun - dl | in - toh | smah - ler | man - ij - uh - bul | chunks | yoo | kan | ri - doos | the | tyem | it | tayks | toh | lohd | the | uh - sen - shuhl | parts | of | the | ap | may - king | it | feel | more | re - spahn - sihv | toh | yoo - zers",
      "id":
          "Pemisahan kode dan lazy loading adalah teknik yang kuat untuk meningkatkan waktu muat awal aplikasi React. Dengan memecah bundel menjadi bagian-bagian yang lebih kecil dan dapat dikelola, Anda dapat mengurangi waktu yang dibutuhkan untuk memuat bagian-bagian penting dari aplikasi, sehingga membuatnya terasa lebih responsif bagi pengguna."
    },
    {
      "from": "Interviewer",
      "en":
          "Excellent! Let's shift gears a bit. Can you tell me about your experience with state management in React?",
      "spell":
          "Ek - suh - luhnt | Lets | shift | geerz | uh | bit | Ken | yu | tel | mi | a - bout | yor | eks - pe - ri - ens | with | stayt | man - ij - ment | in | Ree - act",
      "id":
          "Bagus! Mari ubah sedikit fokus. Bisakah Anda ceritakan pengalaman Anda dengan manajemen state di React?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "Certainly! In React, I've used libraries like Redux and Mobx for state management. These libraries provide a centralized way to manage application state and make it easier to handle complex data flows.",
      "spell":
          "Ser - ten - lee | In | Ree - act | Ayv | yoozd | li - brer - eez | layk | Ree - ducks | and | Mobx | for | stayt | man - ij - ment | Theez | li - brer - eez | proh - vahyd | a | sen - truhl - ayzd | way | toh | man - ij | ap - li - kay - shun | stayt | and | mayk | it | ee - zi - er | toh | han - dl | kom - pleks | dey - tuh | flohz",
      "id":
          "Tentu! Di React, saya telah menggunakan pustaka seperti Redux dan Mobx untuk manajemen state. Pustaka-pustaka ini memberikan cara terpusat untuk mengelola state aplikasi dan memudahkan penanganan aliran data yang kompleks."
    },
    {
      "from": "Interviewer",
      "en":
          "Good to know. How about TypeScript? How does it enhance the development process in a React project?",
      "spell":
          "Good | toh | noh | How | uh - bout | Tyep - skript | How | duhz | it | en - hans | the | di - vel - up - ment | proh - ses | in | uh | Ree - act | proj - ekt",
      "id":
          "Bagus untuk diketahui. Bagaimana dengan TypeScript? Bagaimana cara TypeScript meningkatkan proses pengembangan dalam proyek React?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "TypeScript adds a layer of static typing to JavaScript, which can catch type-related errors during development. This leads to more robust and maintainable code in React projects. It also improves code readability and helps teams work together more effectively by providing clear type definitions.",
      "spell":
          "Tyep - skript | adz | a | lay - er | of | stah - tik | ty - ping | toh | Jah - vuh - skript | wich | kan | kach | tyep - reh - lay - ted | er - ors | dur - ing | di - vel - up - ment | This | leeds | toh | mor | roh - bust | and | mayn - tey - nuh - bul | kohd | in | Ree - act | proj - ekts | It | ol - soh | im - prohvs | kohd | ree - duh - bil - uh - tee | and | helps | teams | wurk | toh - geh - thur | mor | ih - fek - tiv - lee | by | proh - vy - ding | kleer | tyep | dee - fi - ni - shuns",
      "id":
          "TypeScript menambahkan lapisan tipe statis ke JavaScript, yang dapat menangkap kesalahan terkait tipe selama pengembangan. Hal ini menghasilkan kode yang lebih kuat dan mudah dipelihara dalam proyek React. Ini juga meningkatkan keterbacaan kode dan membantu tim bekerja bersama lebih efektif dengan menyediakan definisi tipe yang jelas."
    },
    {
      "from": "Interviewer",
      "en":
          "Impressive! One last question: What advice would you give to someone starting their journey in front-end development with React?",
      "spell":
          "Im - pres - iv | Wuhn | last | kwes - chun | Wat | ad - vyss | wood | yoo | giv | toh | sum - wuhn | stahr - ting | thayr | jur - nee | in | front - end | di - vel - up - ment | with | Ree - act",
      "id":
          "Mengesankan! Satu pertanyaan terakhir: Apa nasihat yang akan Anda berikan kepada seseorang yang memulai perjalanan mereka dalam pengembangan front-end dengan React?"
    },
    {
      "from": "Front-end Developer",
      "en":
          "I would advise them to start with a strong understanding of JavaScript fundamentals, as React builds on top of it. Additionally, don't hesitate to explore the React documentation and practice by building small projects to gain hands-on experience. Collaborating with others and seeking feedback is also a great way to accelerate your learning in the front-end development world.",
      "spell":
          "Ay | wood | ad - vyss | them | toh | stahrt | with | uh | strong | und - er - stan - ding | of | Jah - vuh - skript | fuhn - duh - men - tals | as | Ree - act | builds | on | top | of | it | Uh - di - shun - uh - lee | dohn't | hez - i - teyt | toh | ik - sploh - ruh | the | Ree - act | dok - yuh - men - tay - shun | and | prak - tis | by | bild - ing | smahl | proj - ekts | toh | gayn | hands - on | eks - pee - ri - ens | Kuh - lah - bor - ay - ting | with | uh - thurz | and | see - king | feed - bak | iz | ol - soh | uh | grayt | way | toh | ak - sel - uh - rayt | yor | lur - ning | in | the | front - end | di - vel - up - ment | wurld",
      "id":
          "Saya akan menyarankan mereka untuk memulai dengan pemahaman yang kuat tentang dasar-dasar JavaScript, karena React dibangun di atasnya. Selain itu, jangan ragu untuk menjelajahi dokumentasi React dan berlatih dengan membangun proyek-proyek kecil untuk mendapatkan pengalaman praktis. Berkolaborasi dengan orang lain dan mencari umpan balik juga merupakan cara yang baik untuk mempercepat pembelajaran Anda dalam dunia pengembangan front-end."
    }
  ];
}
