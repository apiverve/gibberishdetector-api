/// Response models for the Gibberish Detector API.

/// API Response wrapper.
class GibberishdetectorResponse {
  final String status;
  final dynamic error;
  final GibberishdetectorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  GibberishdetectorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory GibberishdetectorResponse.fromJson(Map<String, dynamic> json) => GibberishdetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GibberishdetectorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Gibberish Detector API.

class GibberishdetectorData {
  bool? isGibberish;
  num? score;
  num? confidence;
  String? confidenceLevel;
  String? text;
  num? textLength;
  num? wordCount;

  GibberishdetectorData({
    this.isGibberish,
    this.score,
    this.confidence,
    this.confidenceLevel,
    this.text,
    this.textLength,
    this.wordCount,
  });

  factory GibberishdetectorData.fromJson(Map<String, dynamic> json) => GibberishdetectorData(
      isGibberish: json['isGibberish'],
      score: json['score'],
      confidence: json['confidence'],
      confidenceLevel: json['confidenceLevel'],
      text: json['text'],
      textLength: json['textLength'],
      wordCount: json['wordCount'],
    );
}

class GibberishdetectorRequest {
  String text;

  GibberishdetectorRequest({
    required this.text,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
    };
}
