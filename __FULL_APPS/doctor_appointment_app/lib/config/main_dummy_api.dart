import "package:doctor_appointment_app/core.dart";

class MainDummyApi implements DummyApi {
  String firestorePrefix = "dr_";
  @override
  late AppConfig appConfig;
  MainDummyApi() {
    appConfig = AppConfig(
      defaultThemeIndex: 11,
      loginBackground:
          "https://i.ibb.co/SdHrd9y/photo-1576091160399-112ba8d25d1d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      logo: "https://i.ibb.co/LRPJZfB/Doctor-icon.png",
      searchCoverBackground:
          "https://i.ibb.co/M5W9jrX/photo-1576091160550-2173dba999ef-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      orderButtonText: "Book Now",
      vendorString: "Hospital",
      staffString: "Doctor",
      productString: "Services",
      fieldConfig: {
        "execution_time": {
          "enabled": true,
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
      appDictionary: AppDictionary(
        clientLogin: () {
          return "Sign in as Client";
        },
        vendorLogin: () {
          return "Sign in as Hospital";
        },
      ),
      multipleProducts: false,
      linkProductToStaff: false,
      setDuration: false,
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
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.",
      "status": AppSession.isAdmin ? "Approved" : "Pending",
    };
  }

  @override
  List<Map<String, dynamic>> vendors = [
    {
      "vendor_name": "Mayo Clinic",
      "address": "Dallas, 4426  Ersel Street, Texas",
      "photo_url":
          "https://i.ibb.co/xM8zm2G/photo-1519494026892-80bbd2d6fd0d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+62821884488864",
      "website": "https://codekaze.com/",
      "rate": 4.0,
      "rate_count": 5,
      "about_us":
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.",
      "status": "Approved"
    },
    {
      "vendor_name": "UCSF Medical Center",
      "address": "Dallas, 4416  Ersel Street, Texas",
      "photo_url":
          "https://i.ibb.co/dkVfGPT/photo-1538108149393-fbbd81895907-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+62821884488334",
      "website": "https://codekaze.com/",
      "rate": 4.0,
      "rate_count": 5,
      "about_us":
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.",
      "status": "Approved"
    },
    {
      "vendor_name": "Cedars-Sinai Medical Center",
      "address": "Dallas, 3256  Ersel Street, Texas",
      "photo_url":
          "https://i.ibb.co/JcJyn35/photo-1579684385127-1ef15d508118-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+63821884656564",
      "website": "https://codekaze.com/",
      "rate": 5.0,
      "rate_count": 5,
      "about_us":
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.",
      "status": "Approved"
    },
    {
      "vendor_name": "Houston Methodist Hospital",
      "address": "Dallas, 6626  Ersel Street, Texas",
      "photo_url":
          "https://i.ibb.co/q9Mykwr/photo-1584820927498-cfe5211fd8bf-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "latitude": 44.08476666029554,
      "longitude": 70.22286432261072,
      "phone": "+67821884100200",
      "website": "https://codekaze.com/",
      "rate": 2.0,
      "rate_count": 5,
      "about_us":
          "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.",
      "status": "Approved"
    },
  ];

  @override
  List vendorNames = [
    "Mayo Clinic",
    "Cleveland Clinic",
    "Massachusetts General Hospital",
    "Johns Hopkins Hospital",
    "UCLA Medical Center",
    "New York-Presbyterian University Hospital of Columbia and Cornell",
    "UCSF Medical Center",
    "Northwestern Memorial Hospital",
    "Hospitals of the University of Pennsylvania-Penn Presbyterian",
    "NYU Langone Medical Center",
    "Barnes-Jewish Hospital/Washington University in St. Louis",
    "UPMC Presbyterian Shadyside",
    "Brigham and Women's Hospital",
    "Stanford Health Care-Stanford Hospital",
    "Mount Sinai Hospital",
    "Duke University Hospital",
    "Cedars-Sinai Medical Center",
    "University of Michigan Hospitals and Health Centers",
    "Houston Methodist Hospital",
    "University of Colorado Hospital",
  ];

  @override
  List photos = [
    "https://i.ibb.co/xM8zm2G/photo-1519494026892-80bbd2d6fd0d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/dkVfGPT/photo-1538108149393-fbbd81895907-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/JcJyn35/photo-1579684385127-1ef15d508118-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/q9Mykwr/photo-1584820927498-cfe5211fd8bf-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/DV3s9hb/photo-1551076805-e1869033e561-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-HNl.jpg",
    "https://i.ibb.co/cXStcC9/photo-1516574187841-cb9cc2ca948b-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/t34G2Xn/photo-1586773860418-d37222d8fce3-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/dmj4Y39/photo-1581360742512-021d5b2157d8-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/1JTS0Hh/photo-1512678080530-7760d81faba6-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/jf6GLxq/photo-1563233269-7e86880558a7-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-HNl.jpg",
    "https://i.ibb.co/rcLKC1T/photo-1485848395967-65dff62dc35b-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/1bW8nr7/photo-1504813184591-01572f98c85f-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/JpQ16GS/photo-1554734867-bf3c00a49371-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-HNl.jpg",
    "https://i.ibb.co/HTgxVc3/photo-1519494140681-8b17d830a3e9-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    "https://i.ibb.co/SrzW05B/photo-1505751172876-fa1923c5c528-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
  ];

  @override
  List products = [
    {
      "image":
          "https://i.ibb.co/zNSSSq9/photo-1514416309827-bfb0cf433a2d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "title": "Medical Checkup",
      "description": "Omnis iste natus error sit voluptatem.",
      "price": "90",
      "gender": "All",
      "execution_time": "20 Min",
    },
    {
      "image":
          "https://i.ibb.co/3h8dSmg/photo-1551190822-a9333d879b1f-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-HNl.jpg",
      "title": "Cholecystectomy",
      "description": "Omnis iste natus error sit voluptatem.",
      "price": "100",
      "gender": "All",
      "execution_time": "20 Min",
    },
    {
      "image":
          "https://i.ibb.co/BKJP3rX/photo-1551601651-2a8555f1a136-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-HNl.jpg",
      "title": "Appendectomy",
      "description": "Omnis iste natus error sit voluptatem.",
      "price": "240",
      "gender": "All",
      "execution_time": "20 Min",
    },
    {
      "image":
          "https://i.ibb.co/M24M5Rf/photo-1579684453423-f84349ef60b0-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
      "title": "Cataract surgery",
      "description": "Omnis iste natus error sit voluptatem.",
      "price": "230",
      "gender": "All",
      "execution_time": "20 Min",
    },
  ];

  @override
  List staffs = [
    {
      "photo": "https://i.ibb.co/nnnHgdk/a3.png",
      "staff_name": "Dr. Demi Row",
      "description":
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem.",
    },
    {
      "photo": "https://i.ibb.co/MNmvnc6/a2.png",
      "staff_name": "Dr. Jane Feel",
      "description":
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem.",
    },
    {
      "photo": "https://i.ibb.co/0Yz0WVK/a1.png",
      "staff_name": "Dr. Rika",
      "description":
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem.",
    },
    {
      "photo": "https://i.ibb.co/LrXzgy5/a4.png",
      "staff_name": "Dr. Viola",
      "description":
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem.",
    },
  ];

  @override
  List galleries = [
    {
      "image":
          "https://i.ibb.co/yQkxvYx/photo-1576091160550-2173dba999ef-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    },
    {
      "image":
          "https://i.ibb.co/T8cszK6/photo-1532094349884-543bc11b234d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    },
    {
      "image":
          "https://i.ibb.co/CtYhfxG/photo-1526256262350-7da7584cf5eb-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    },
    {
      "image":
          "https://i.ibb.co/Hpvr3Wh/photo-1576091160399-112ba8d25d1d-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    },
    {
      "image":
          "https://i.ibb.co/9rVCqJN/photo-1530026405186-ed1f139313f8-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    },
    {
      "image":
          "https://i.ibb.co/rGkktrm/photo-1507413245164-6160d8298b31-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
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
