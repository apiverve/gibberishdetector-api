# Gibberish Detector API - Dart/Flutter Client

Gibberish Detector analyzes text using bigram frequency and vowel ratios to identify nonsensical or randomly generated content.

[![pub package](https://img.shields.io/pub/v/apiverve_gibberishdetector.svg)](https://pub.dev/packages/apiverve_gibberishdetector)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Gibberish Detector API](https://apiverve.com/marketplace/gibberishdetector?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_gibberishdetector: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_gibberishdetector/apiverve_gibberishdetector.dart';

void main() async {
  final client = GibberishdetectorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'The quick brown fox jumps over the lazy dog'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "isGibberish": false,
    "score": 0.469,
    "confidence": 46.93,
    "text": "The quick brown fox jumps over the lazy dog",
    "textLength": 43
  }
}
```

## API Reference

- **API Home:** [Gibberish Detector API](https://apiverve.com/marketplace/gibberishdetector?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/gibberishdetector](https://docs.apiverve.com/ref/gibberishdetector?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
