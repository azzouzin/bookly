
class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel({this.kind, this.id, this.etag, this.selfLink, this.volumeInfo, this.saleInfo, this.accessInfo, this.searchInfo});

  BookModel.fromJson(Map<String, dynamic> json) {
    if(json["kind"] is String) {
      kind = json["kind"];
    }
    if(json["id"] is String) {
      id = json["id"];
    }
    if(json["etag"] is String) {
      etag = json["etag"];
    }
    if(json["selfLink"] is String) {
      selfLink = json["selfLink"];
    }
    if(json["volumeInfo"] is Map) {
      volumeInfo = json["volumeInfo"] == null ? null : VolumeInfo.fromJson(json["volumeInfo"]);
    }
    if(json["saleInfo"] is Map) {
      saleInfo = json["saleInfo"] == null ? null : SaleInfo.fromJson(json["saleInfo"]);
    }
    if(json["accessInfo"] is Map) {
      accessInfo = json["accessInfo"] == null ? null : AccessInfo.fromJson(json["accessInfo"]);
    }
    if(json["searchInfo"] is Map) {
      searchInfo = json["searchInfo"] == null ? null : SearchInfo.fromJson(json["searchInfo"]);
    }
  }

  static List<BookModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(BookModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["kind"] = kind;
    _data["id"] = id;
    _data["etag"] = etag;
    _data["selfLink"] = selfLink;
    if(volumeInfo != null) {
      _data["volumeInfo"] = volumeInfo?.toJson();
    }
    if(saleInfo != null) {
      _data["saleInfo"] = saleInfo?.toJson();
    }
    if(accessInfo != null) {
      _data["accessInfo"] = accessInfo?.toJson();
    }
    if(searchInfo != null) {
      _data["searchInfo"] = searchInfo?.toJson();
    }
    return _data;
  }
}

class SearchInfo {
  String? textSnippet;

  SearchInfo({this.textSnippet});

  SearchInfo.fromJson(Map<String, dynamic> json) {
    if(json["textSnippet"] is String) {
      textSnippet = json["textSnippet"];
    }
  }

  static List<SearchInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(SearchInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["textSnippet"] = textSnippet;
    return _data;
  }
}

class AccessInfo {
  String? country;
  String? viewability;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Pdf? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo({this.country, this.viewability, this.embeddable, this.publicDomain, this.textToSpeechPermission, this.epub, this.pdf, this.webReaderLink, this.accessViewStatus, this.quoteSharingAllowed});

  AccessInfo.fromJson(Map<String, dynamic> json) {
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["viewability"] is String) {
      viewability = json["viewability"];
    }
    if(json["embeddable"] is bool) {
      embeddable = json["embeddable"];
    }
    if(json["publicDomain"] is bool) {
      publicDomain = json["publicDomain"];
    }
    if(json["textToSpeechPermission"] is String) {
      textToSpeechPermission = json["textToSpeechPermission"];
    }
    if(json["epub"] is Map) {
      epub = json["epub"] == null ? null : Epub.fromJson(json["epub"]);
    }
    if(json["pdf"] is Map) {
      pdf = json["pdf"] == null ? null : Pdf.fromJson(json["pdf"]);
    }
    if(json["webReaderLink"] is String) {
      webReaderLink = json["webReaderLink"];
    }
    if(json["accessViewStatus"] is String) {
      accessViewStatus = json["accessViewStatus"];
    }
    if(json["quoteSharingAllowed"] is bool) {
      quoteSharingAllowed = json["quoteSharingAllowed"];
    }
  }

  static List<AccessInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(AccessInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["country"] = country;
    _data["viewability"] = viewability;
    _data["embeddable"] = embeddable;
    _data["publicDomain"] = publicDomain;
    _data["textToSpeechPermission"] = textToSpeechPermission;
    if(epub != null) {
      _data["epub"] = epub?.toJson();
    }
    if(pdf != null) {
      _data["pdf"] = pdf?.toJson();
    }
    _data["webReaderLink"] = webReaderLink;
    _data["accessViewStatus"] = accessViewStatus;
    _data["quoteSharingAllowed"] = quoteSharingAllowed;
    return _data;
  }
}

class Pdf {
  bool? isAvailable;
  String? acsTokenLink;

  Pdf({this.isAvailable, this.acsTokenLink});

  Pdf.fromJson(Map<String, dynamic> json) {
    if(json["isAvailable"] is bool) {
      isAvailable = json["isAvailable"];
    }
    if(json["acsTokenLink"] is String) {
      acsTokenLink = json["acsTokenLink"];
    }
  }

  static List<Pdf> fromList(List<Map<String, dynamic>> list) {
    return list.map(Pdf.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isAvailable"] = isAvailable;
    _data["acsTokenLink"] = acsTokenLink;
    return _data;
  }
}

class Epub {
  bool? isAvailable;

  Epub({this.isAvailable});

  Epub.fromJson(Map<String, dynamic> json) {
    if(json["isAvailable"] is bool) {
      isAvailable = json["isAvailable"];
    }
  }

  static List<Epub> fromList(List<Map<String, dynamic>> list) {
    return list.map(Epub.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isAvailable"] = isAvailable;
    return _data;
  }
}

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;

  SaleInfo({this.country, this.saleability, this.isEbook});

  SaleInfo.fromJson(Map<String, dynamic> json) {
    if(json["country"] is String) {
      country = json["country"];
    }
    if(json["saleability"] is String) {
      saleability = json["saleability"];
    }
    if(json["isEbook"] is bool) {
      isEbook = json["isEbook"];
    }
  }

  static List<SaleInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(SaleInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["country"] = country;
    _data["saleability"] = saleability;
    _data["isEbook"] = isEbook;
    return _data;
  }
}

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;

  VolumeInfo({this.title, this.authors, this.publisher, this.publishedDate, this.description, this.industryIdentifiers, this.readingModes, this.pageCount, this.printType, this.categories, this.maturityRating, this.allowAnonLogging, this.contentVersion, this.panelizationSummary, this.imageLinks, this.language, this.previewLink, this.infoLink, this.canonicalVolumeLink});

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    if(json["title"] is String) {
      title = json["title"];
    }
    if(json["authors"] is List) {
      authors = json["authors"] == null ? null : List<String>.from(json["authors"]);
    }
    if(json["publisher"] is String) {
      publisher = json["publisher"];
    }
    if(json["publishedDate"] is String) {
      publishedDate = json["publishedDate"];
    }
    if(json["description"] is String) {
      description = json["description"];
    }
    if(json["industryIdentifiers"] is List) {
      industryIdentifiers = json["industryIdentifiers"] == null ? null : (json["industryIdentifiers"] as List).map((e) => IndustryIdentifiers.fromJson(e)).toList();
    }
    if(json["readingModes"] is Map) {
      readingModes = json["readingModes"] == null ? null : ReadingModes.fromJson(json["readingModes"]);
    }
    if(json["pageCount"] is int) {
      pageCount = json["pageCount"];
    }
    if(json["printType"] is String) {
      printType = json["printType"];
    }
    if(json["categories"] is List) {
      categories = json["categories"] == null ? null : List<String>.from(json["categories"]);
    }
    if(json["maturityRating"] is String) {
      maturityRating = json["maturityRating"];
    }
    if(json["allowAnonLogging"] is bool) {
      allowAnonLogging = json["allowAnonLogging"];
    }
    if(json["contentVersion"] is String) {
      contentVersion = json["contentVersion"];
    }
    if(json["panelizationSummary"] is Map) {
      panelizationSummary = json["panelizationSummary"] == null ? null : PanelizationSummary.fromJson(json["panelizationSummary"]);
    }
    if(json["imageLinks"] is Map) {
      imageLinks = json["imageLinks"] == null ? null : ImageLinks.fromJson(json["imageLinks"]);
    }
    if(json["language"] is String) {
      language = json["language"];
    }
    if(json["previewLink"] is String) {
      previewLink = json["previewLink"];
    }
    if(json["infoLink"] is String) {
      infoLink = json["infoLink"];
    }
    if(json["canonicalVolumeLink"] is String) {
      canonicalVolumeLink = json["canonicalVolumeLink"];
    }
  }

  static List<VolumeInfo> fromList(List<Map<String, dynamic>> list) {
    return list.map(VolumeInfo.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    if(authors != null) {
      _data["authors"] = authors;
    }
    _data["publisher"] = publisher;
    _data["publishedDate"] = publishedDate;
    _data["description"] = description;
    if(industryIdentifiers != null) {
      _data["industryIdentifiers"] = industryIdentifiers?.map((e) => e.toJson()).toList();
    }
    if(readingModes != null) {
      _data["readingModes"] = readingModes?.toJson();
    }
    _data["pageCount"] = pageCount;
    _data["printType"] = printType;
    if(categories != null) {
      _data["categories"] = categories;
    }
    _data["maturityRating"] = maturityRating;
    _data["allowAnonLogging"] = allowAnonLogging;
    _data["contentVersion"] = contentVersion;
    if(panelizationSummary != null) {
      _data["panelizationSummary"] = panelizationSummary?.toJson();
    }
    if(imageLinks != null) {
      _data["imageLinks"] = imageLinks?.toJson();
    }
    _data["language"] = language;
    _data["previewLink"] = previewLink;
    _data["infoLink"] = infoLink;
    _data["canonicalVolumeLink"] = canonicalVolumeLink;
    return _data;
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks({this.smallThumbnail, this.thumbnail});

  ImageLinks.fromJson(Map<String, dynamic> json) {
    if(json["smallThumbnail"] is String) {
      smallThumbnail = json["smallThumbnail"];
    }
    if(json["thumbnail"] is String) {
      thumbnail = json["thumbnail"];
    }
  }

  static List<ImageLinks> fromList(List<Map<String, dynamic>> list) {
    return list.map(ImageLinks.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["smallThumbnail"] = smallThumbnail;
    _data["thumbnail"] = thumbnail;
    return _data;
  }
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary({this.containsEpubBubbles, this.containsImageBubbles});

  PanelizationSummary.fromJson(Map<String, dynamic> json) {
    if(json["containsEpubBubbles"] is bool) {
      containsEpubBubbles = json["containsEpubBubbles"];
    }
    if(json["containsImageBubbles"] is bool) {
      containsImageBubbles = json["containsImageBubbles"];
    }
  }

  static List<PanelizationSummary> fromList(List<Map<String, dynamic>> list) {
    return list.map(PanelizationSummary.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["containsEpubBubbles"] = containsEpubBubbles;
    _data["containsImageBubbles"] = containsImageBubbles;
    return _data;
  }
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes({this.text, this.image});

  ReadingModes.fromJson(Map<String, dynamic> json) {
    if(json["text"] is bool) {
      text = json["text"];
    }
    if(json["image"] is bool) {
      image = json["image"];
    }
  }

  static List<ReadingModes> fromList(List<Map<String, dynamic>> list) {
    return list.map(ReadingModes.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["text"] = text;
    _data["image"] = image;
    return _data;
  }
}

class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers({this.type, this.identifier});

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    if(json["type"] is String) {
      type = json["type"];
    }
    if(json["identifier"] is String) {
      identifier = json["identifier"];
    }
  }

  static List<IndustryIdentifiers> fromList(List<Map<String, dynamic>> list) {
    return list.map(IndustryIdentifiers.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["identifier"] = identifier;
    return _data;
  }
}