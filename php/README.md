# Gibberish Detector API - PHP Package

Gibberish Detector analyzes text using bigram frequency and vowel ratios to identify nonsensical or randomly generated content.

## Installation

Install via Composer:

```bash
composer require apiverve/gibberishdetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Gibberishdetector\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['text' => 'The quick brown fox jumps over the lazy dog']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Gibberishdetector\Client;
use APIVerve\Gibberishdetector\Exceptions\APIException;
use APIVerve\Gibberishdetector\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'The quick brown fox jumps over the lazy dog']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "isGibberish": false,
    "score": 0.12,
    "confidence": 88,
    "confidenceLevel": "high",
    "text": "The quick brown fox jumps over the lazy dog",
    "textLength": 43,
    "wordCount": 9
  }
}
```

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/gibberishdetector?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/gibberishdetector?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/gibberishdetector?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
