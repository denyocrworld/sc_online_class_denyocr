import 'dart:convert';

String jsonString = """
{
   "airportName": "Techville International Airport",
   "location": {
      "city": "Techville",
      "country": "Techland"
   },
   "flights": [
      {
         "flightNumber": "TV123",
         "destination": "New York",
         "departureTime": "2023-11-01 08:00"
      },
      {
         "flightNumber": "TV456",
         "destination": "Los Angeles",
         "departureTime": "2023-11-02 09:30"
      }
   ],
   "isOpen": true
}
""";

// TODO: Create Airport, Location, and Flight models based on the jsonString provided!
// You can create them manually or use tools like Quicktype or VSCode extensions!

void main() {
  // Uncomment this code after creating the models
  // Run the script with the command:
  // dart bin/3.10.dart
  // nodemon --exec dart bin/3.10.dart

  // Airport airport = Airport.fromJson(jsonDecode(jsonString));
  // checker(airport);
}

// The code below should not be edited!
void checker(dynamic airport) {
  print(airport);
  List<bool> conditions = [
    airport.airportName == "Techville International Airport",
    airport.location.city == "Techville",
    airport.flights.length == 2,
    airport.flights[1].destination == "Los Angeles",
    airport.isOpen == true,
  ];

  if (conditions.contains(false)) {
    print("Incorrect answer!");
    return;
  }
  print("Correct answer!");
}
