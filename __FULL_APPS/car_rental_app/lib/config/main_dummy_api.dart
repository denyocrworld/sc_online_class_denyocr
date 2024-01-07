import 'package:car_rental_app/core.dart';

class MainDummyApi implements DummyApi {
  var firestorePrefix = "cr_";
  @override
  late AppConfig appConfig;
  MainDummyApi() {
    appConfig = AppConfig(
      defaultThemeIndex: 0,
      loginBackground: "https://i.ibb.co/kSPj04r/gambar.png",
      logo: "https://i.ibb.co/0KRNgLh/89102.png",
      searchCoverBackground: "https://i.ibb.co/D7k6TWh/remt-a-car.jpg",
      orderButtonText: "Book Now",
      vendorString: "Car Rental",
      staffString: "Driver",
      productString: "Car",
      fieldConfig: {
        "execution_time": {
          "enabled": false,
        },
        "gender": {
          "enabled": false,
        },
      },
      collectionNames: CollectionNames(
        adminCollection: "${firestorePrefix}admin",
        adminSettingCollection: "${firestorePrefix}admin_setting",
        vendorCollection: "${firestorePrefix}vendor",
        bookingCollection: "${firestorePrefix}booking",
        bookingListCollection: "${firestorePrefix}booking_list",
        userDataCollection: "${firestorePrefix}user_data",
        chatCollection: "${firestorePrefix}chat",
        chatListCollection: "${firestorePrefix}chat_list",
        ratingCollection: "${firestorePrefix}rating",
        userRatingCollection: "${firestorePrefix}user_rating",
      ),
      useAlternativeLogin: false,
      // appDictionary: AppDictionary.base(),
      appDictionary: AppDictionary(
        clientLogin: () {
          return "I am a Client";
        },
        vendorLogin: () {
          return "I am a Car Rental";
        },
      ),
      multipleProducts: false,
      linkProductToStaff: false,
      setDuration: true,
    );
  }

  @override
  Map<String, dynamic> onGenerateSingleDummy() {
    return {
      "vendor_name": AppSession.dummyApi.vendorNames.random(),
      "address": "Dallas, 4426  Ersel Street, Texas",
      "photo_url": AppSession.dummyApi.photos.random(),
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+62821884488864",
      "website": "https://codekaze.com/",
      "products": AppSession.dummyApi.products,
      "galleries": AppSession.dummyApi.galleries,
      "reviews": AppSession.dummyApi.reviews,
      "rate": 0.0,
      "rate_count": 0,
      "about_us":
          "A car rental, hire car, or car hire agency is a company that rents automobiles for short periods of time to the public, generally ranging from a few hours to a few weeks. It is often organized with numerous local branches (which allow a user to return a vehicle to a different location), and primarily located near airports or busy city areas and often complemented by a website allowing online reservations.",
      "status": AppSession.isAdmin ? "Approved" : "Pending",
    };
  }

  @override
  List<Map<String, dynamic>> vendors = [
    {
      "vendor_name": "Car Getaways – Take a drive",
      "address": "Dallas, 4426  Ersel Street, Texas",
      "photo_url": "https://i.ibb.co/q9WJYYB/kia-rental.jpg",
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+62821884488864",
      "website": "https://codekaze.com/",
      "rate": 4.0,
      "rate_count": 5,
      "about_us":
          "A car rental, hire car, or car hire agency is a company that rents automobiles for short periods of time to the public, generally ranging from a few hours to a few weeks. It is often organized with numerous local branches (which allow a user to return a vehicle to a different location), and primarily located near airports or busy city areas and often complemented by a website allowing online reservations.",
      "status": "Approved"
    },
    {
      "vendor_name": "Calvin Car Rental",
      "address": "Dallas, 4416  Ersel Street, Texas",
      "photo_url": "https://i.ibb.co/CVKjTVx/the-cross-rental.jpg",
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+62821884488334",
      "website": "https://codekaze.com/",
      "rate": 4.0,
      "rate_count": 5,
      "about_us":
          "A car rental, hire car, or car hire agency is a company that rents automobiles for short periods of time to the public, generally ranging from a few hours to a few weeks. It is often organized with numerous local branches (which allow a user to return a vehicle to a different location), and primarily located near airports or busy city areas and often complemented by a website allowing online reservations.",
      "status": "Approved"
    },
    {
      "vendor_name": "Rock Your Ride Rentals",
      "address": "Dallas, 3256  Ersel Street, Texas",
      "photo_url": "https://i.ibb.co/n0S7H7z/violete-rental.jpg",
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+63821884656564",
      "website": "https://codekaze.com/",
      "rate": 5.0,
      "rate_count": 5,
      "about_us":
          "A car rental, hire car, or car hire agency is a company that rents automobiles for short periods of time to the public, generally ranging from a few hours to a few weeks. It is often organized with numerous local branches (which allow a user to return a vehicle to a different location), and primarily located near airports or busy city areas and often complemented by a website allowing online reservations.",
      "status": "Approved"
    },
    {
      "vendor_name": "ACME Rent a Car",
      "address": "Dallas, 6626  Ersel Street, Texas",
      "photo_url": "https://i.ibb.co/6HKfKpJ/the-classic-rental.jpg",
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+67821884100200",
      "website": "https://codekaze.com/",
      "rate": 2.0,
      "rate_count": 5,
      "about_us":
          "A car rental, hire car, or car hire agency is a company that rents automobiles for short periods of time to the public, generally ranging from a few hours to a few weeks. It is often organized with numerous local branches (which allow a user to return a vehicle to a different location), and primarily located near airports or busy city areas and often complemented by a website allowing online reservations.",
      "status": "Approved"
    },
  ];

  @override
  List vendorNames = [
    "Bon Voyage Car Rental",
    "Allrounder Rentals",
    "Purple Car Rental",
    "All Set Rentals",
    "Beta Car Hire",
    "Bold Arrivals",
    "The Wheel Deal",
    "All Around Town Inc.",
    "Rent a Go-Cart",
    "Cheap Rides",
    "Trip A Long Inc.",
    "Alternative Mobility",
    "Able Car Rental",
    "Coyote Car Rental",
    "Your Travel Solution",
    "The Way To Go Travel",
    "The Road Ahead",
    "Rent a Car and Go",
    "Get there fast",
    "Go Rent a Car",
    "Get It",
    "No Hassle Car Rental",
    "Affordable Leasing",
    "Rent Everything",
    "Let’s Go Now",
    "King of the Road",
    "The No Frills Way To Drive",
    "Getting Started Easily",
    "Gas ‘N’ GO!",
    "Very Relaxing Ride",
    "Fast Rent a car",
    "A-1 Auto Rental",
    "Ace Car Rental",
    "Anoki Car Rental",
    "Aristocar Car Rentals",
    "Basingstoke Car Hire",
    "Citroën Caledonie",
    "Club Easydrive Auto Enterprise Inc.",
    "Fleetwood Car Rental",
    "Atlanta Car Riverside Rental",
    "Alamo Rental Cars",
    "Back Seat Driver Rentals",
    "National Car Rents",
    "Union Auto Rental",
    "Eagle Rent-A-Car",
    "A-to-Z Car Rental",
    "Go Car Rentals",
    "The One Hour Rentals",
    "Travel Car Rentals",
    "Self-Drive Car Rental",
    "High Performance Car Rental",
    "4×4 Car Hire",
    "Classic Car Hire",
    "Motor Home Hire",
    "Prestige Vehicle Rental Services",
    "Rent a Quarter",
    "Partial Car",
    "Going Places",
    "Where to Go?",
    "My Car for Yours",
    "Get Somewhere Faster",
    "Just for the Weekend",
    "Road Trip Vehicle Rental",
    "Need a Ride?",
    "Gone for a While",
    "Your Local Ride Share!",
    "Ready to Go!",
    "The Right Wheel Deal!",
    "Car Getaways – Take a drive",
    "Car Vacations – A ride you’ll love",
    "Going Places – So many cities to go!",
    "Car Rental Paradise – One of the best getaways ever!",
    "Happy Holidays",
    "Dream Machine",
    "First Choice",
    "Leaders in Travel",
    "Breeze Rent a Car",
    "SUV Rental",
    "Cheap Rental cars",
    "Ado Car Rental",
    "A-lister Rentals",
    "Car Fixer Upper",
    "Car Minded Enterprises, Ltd.",
    "Confident Car Rental Solutions Ltd.",
    "Hitch Hikers Limo Service Inc.",
    "Independent Hertz Inc.",
    "Atlantis Auto Rental",
    "Calvin Car Rental",
    "Intelligent Autobody & Rental Corp .",
    "Friendly Rent-A-Car",
    "Rock Your Ride Rentals",
    "Feel at Home Car Rental Co.",
    "Over the Top Rental",
    "A-2-Z Rent-A-Car",
    "ACME Rent a Car",
    "Thrifty Car Rental",
  ];

  @override
  List photos = [
    "https://i.ibb.co/q9WJYYB/kia-rental.jpg",
    "https://i.ibb.co/CVKjTVx/the-cross-rental.jpg",
    "https://i.ibb.co/n0S7H7z/violete-rental.jpg",
    "https://i.ibb.co/6HKfKpJ/the-classic-rental.jpg",
  ];

  @override
  List products = [
    {
      "image":
          "https://i.ibb.co/VNcbJrW/photo-1507767439269-2c64f107e609-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "title": "Kavanza",
      "description": "Rent a car in the period",
      "price": "10",
      "gender": "All",
      "execution_time": "1 Day",
    },
    {
      "image":
          "https://i.ibb.co/MCY0XgT/photo-1511125357779-27038c647d9d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "title": "Alvard",
      "description": "Rent a car in the period",
      "price": "18",
      "gender": "All",
      "execution_time": "2 Day",
    },
    {
      "image":
          "https://i.ibb.co/rt8qvvP/photo-1584936684506-c3a7086e8212-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "title": "Hunda Jaes",
      "description": "Rent a car in the period",
      "price": "25",
      "gender": "All",
      "execution_time": "3 Day",
    },
    {
      "image":
          "https://i.ibb.co/WKFyxYb/photo-1485291571150-772bcfc10da5-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "title": "Toyato BMW",
      "description": "Rent a car in the period",
      "price": "50",
      "gender": "All",
      "execution_time": "1 Week",
      "required_duration": 7,
    },
  ];

  @override
  List staffs = [
    {
      "photo":
          "https://i.ibb.co/p0GyTf9/photo-1568602471122-7832951cc4c5-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "staff_name": "Deeb",
      "description": "Professional Drivers",
    },
    {
      "photo":
          "https://i.ibb.co/829MRjk/photo-1542740348-39501cd6e2b4-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-HNl.jpg",
      "staff_name": "Jane Roe",
      "description": "Professional Drivers",
    },
    {
      "photo":
          "https://i.ibb.co/6r3xGjV/photo-1508214751196-bcfd4ca60f91-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "staff_name": "Rikaa",
      "description": "Professional Drivers",
    },
    {
      "photo":
          "https://i.ibb.co/zGrZnWk/photo-1488426862026-3ee34a7d66df-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "staff_name": "Violina",
      "description": "Professional Drivers",
    },
  ];

  @override
  List galleries = [
    {
      'image': 'https://i.ibb.co/k43fMBx/g1.jpg',
    },
    {
      'image': 'https://i.ibb.co/PFgpczj/g2.jpg',
    },
    {
      'image': 'https://i.ibb.co/bXcvm1Q/g3.jpg',
    },
    {
      'image': 'https://i.ibb.co/M66hqR4/g4.jpg',
    },
    {
      'image': 'https://i.ibb.co/d0xJCZs/g5.jpg',
    },
    {
      'image': 'https://i.ibb.co/vXw4Ywh/g6.jpg',
    },
  ];

  @override
  List reviews = [
    {
      "photo_url":
          "https://i.ibb.co/p0BQT8p/photo-1512353087810-25dfcd100962-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "Ryan Rotwaiss",
      "date": DateTime.now(),
      "comment": "At vero eos et accusamus et iusto odio dignissimos ducimus",
      "rate": 2.0,
    },
    {
      "photo_url":
          "https://i.ibb.co/CJg3pZ1/photo-1503443207922-dff7d543fd0e-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "Jack Lieber",
      "date": DateTime.now(),
      "comment": "Great services! I highly recommend!!",
      "rate": 5.0,
    },
    {
      "photo_url":
          "https://i.ibb.co/pd0dKzz/photo-1506794778202-cad84cf45f1d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "G. Jewell",
      "date": DateTime.now(),
      "comment":
          "The staffs are friendly, highly skilled, and professional. 5 STARS!",
      "rate": 5.0,
    },
    {
      "photo_url":
          "https://i.ibb.co/LhdwmRb/photo-1507003211169-0a1dd7228f2d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "Flore Titania",
      "date": DateTime.now(),
      "comment": "Luvvv it❤",
      "rate": 4.0,
    },
    {
      "photo_url":
          "https://i.ibb.co/V9ZYmBh/photo-1499714608240-22fc6ad53fb2-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "name": "Hannah Davis",
      "date": DateTime.now(),
      "comment":
          "Their attention to every little detail just never fails to amaze me.",
      "rate": 5.0,
    },
  ];
}
