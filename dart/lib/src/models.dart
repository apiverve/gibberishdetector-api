/// Response models for the Gibberish Detector API.

/// API Response wrapper.
class GibberishdetectorResponse {
  final String status;
  final dynamic error;
  final GibberishdetectorData? data;

  GibberishdetectorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory GibberishdetectorResponse.fromJson(Map<String, dynamic> json) => GibberishdetectorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GibberishdetectorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Gibberish Detector API.

class GibberishdetectorData {
  bool? isGibberish;
  double? score;
  double? confidence;
  String? text;
  int? textLength;

  GibberishdetectorData({
    this.isGibberish,
    this.score,
    this.confidence,
    this.text,
    this.textLength,
  });

  factory GibberishdetectorData.fromJson(Map<String, dynamic> json) => GibberishdetectorData(
      isGibberish: json['isGibberish'],
      score: json['score'],
      confidence: json['confidence'],
      text: json['text'],
      textLength: json['textLength'],
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
