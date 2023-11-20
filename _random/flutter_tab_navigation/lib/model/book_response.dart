import 'dart:convert';

class BookResponse {
  String? status;
  Data? data;

  BookResponse({
    this.status,
    this.data,
  });

  factory BookResponse.fromRawJson(String str) =>
      BookResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BookResponse.fromJson(Map<String, dynamic> json) => BookResponse(
        status: json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
      };
}

class Data {
  String? q;
  int? totalCount;
  int? start;
  SpellingAlternatives? spellingAlternatives;
  List<Book>? items;
  int? countInResponse;

  Data({
    this.q,
    this.totalCount,
    this.start,
    this.spellingAlternatives,
    this.items,
    this.countInResponse,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        q: json["q"],
        totalCount: json["total_count"],
        start: json["start"],
        spellingAlternatives: json["spelling_alternatives"] == null
            ? null
            : SpellingAlternatives.fromJson(json["spelling_alternatives"]),
        items: json["items"] == null
            ? []
            : List<Book>.from(json["items"]!.map((x) => Book.fromJson(x))),
        countInResponse: json["count_in_response"],
      );

  Map<String, dynamic> toJson() => {
        "q": q,
        "total_count": totalCount,
        "start": start,
        "spelling_alternatives": spellingAlternatives?.toJson(),
        "items": items == null
            ? []
            : List<dynamic>.from(items!.map((x) => x.toJson())),
        "count_in_response": countInResponse,
      };
}

class Book {
  String? name;
  String? type;
  String? url;
  String? globalId;
  String? description;
  DateTime? publishedAt;
  String? publisher;
  String? citationHtml;
  String? identifierOfDataverse;
  String? nameOfDataverse;
  String? citation;
  String? storageIdentifier;
  List<String>? keywords;
  List<String>? subjects;
  int? fileCount;
  int? versionId;
  String? versionState;
  int? majorVersion;
  int? minorVersion;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Contact>? contacts;
  List<Publication>? publications;
  List<String>? authors;

  Book({
    this.name,
    this.type,
    this.url,
    this.globalId,
    this.description,
    this.publishedAt,
    this.publisher,
    this.citationHtml,
    this.identifierOfDataverse,
    this.nameOfDataverse,
    this.citation,
    this.storageIdentifier,
    this.keywords,
    this.subjects,
    this.fileCount,
    this.versionId,
    this.versionState,
    this.majorVersion,
    this.minorVersion,
    this.createdAt,
    this.updatedAt,
    this.contacts,
    this.publications,
    this.authors,
  });

  factory Book.fromRawJson(String str) => Book.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        name: json["name"],
        type: json["type"],
        url: json["url"],
        globalId: json["global_id"],
        description: json["description"],
        publishedAt: json["published_at"] == null
            ? null
            : DateTime.parse(json["published_at"]),
        publisher: json["publisher"],
        citationHtml: json["citationHtml"],
        identifierOfDataverse: json["identifier_of_dataverse"],
        nameOfDataverse: json["name_of_dataverse"],
        citation: json["citation"],
        storageIdentifier: json["storageIdentifier"],
        keywords: json["keywords"] == null
            ? []
            : List<String>.from(json["keywords"]!.map((x) => x)),
        subjects: json["subjects"] == null
            ? []
            : List<String>.from(json["subjects"]!.map((x) => x)),
        fileCount: json["fileCount"],
        versionId: json["versionId"],
        versionState: json["versionState"],
        majorVersion: json["majorVersion"],
        minorVersion: json["minorVersion"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        contacts: json["contacts"] == null
            ? []
            : List<Contact>.from(
                json["contacts"]!.map((x) => Contact.fromJson(x))),
        publications: json["publications"] == null
            ? []
            : List<Publication>.from(
                json["publications"]!.map((x) => Publication.fromJson(x))),
        authors: json["authors"] == null
            ? []
            : List<String>.from(json["authors"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "type": type,
        "url": url,
        "global_id": globalId,
        "description": description,
        "published_at": publishedAt?.toIso8601String(),
        "publisher": publisher,
        "citationHtml": citationHtml,
        "identifier_of_dataverse": identifierOfDataverse,
        "name_of_dataverse": nameOfDataverse,
        "citation": citation,
        "storageIdentifier": storageIdentifier,
        "keywords":
            keywords == null ? [] : List<dynamic>.from(keywords!.map((x) => x)),
        "subjects":
            subjects == null ? [] : List<dynamic>.from(subjects!.map((x) => x)),
        "fileCount": fileCount,
        "versionId": versionId,
        "versionState": versionState,
        "majorVersion": majorVersion,
        "minorVersion": minorVersion,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "contacts": contacts == null
            ? []
            : List<dynamic>.from(contacts!.map((x) => x.toJson())),
        "publications": publications == null
            ? []
            : List<dynamic>.from(publications!.map((x) => x.toJson())),
        "authors":
            authors == null ? [] : List<dynamic>.from(authors!.map((x) => x)),
      };
}

class Contact {
  String? name;
  String? affiliation;

  Contact({
    this.name,
    this.affiliation,
  });

  factory Contact.fromRawJson(String str) => Contact.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        name: json["name"],
        affiliation: json["affiliation"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "affiliation": affiliation,
      };
}

class Publication {
  String? citation;
  String? url;

  Publication({
    this.citation,
    this.url,
  });

  factory Publication.fromRawJson(String str) =>
      Publication.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Publication.fromJson(Map<String, dynamic> json) => Publication(
        citation: json["citation"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "citation": citation,
        "url": url,
      };
}

class SpellingAlternatives {
  SpellingAlternatives();

  factory SpellingAlternatives.fromRawJson(String str) =>
      SpellingAlternatives.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SpellingAlternatives.fromJson(Map<String, dynamic> json) =>
      SpellingAlternatives();

  Map<String, dynamic> toJson() => {};
}
