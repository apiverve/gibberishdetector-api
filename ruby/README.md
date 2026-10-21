# Gibberish Detector API - Ruby Gem

Gibberish Detector analyzes text using bigram frequency and vowel ratios to identify nonsensical or randomly generated content.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_gibberishdetector'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_gibberishdetector
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_gibberishdetector'

# Initialize the client
client = APIVerve::Gibberishdetector::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ text: "The quick brown fox jumps over the lazy dog" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "The quick brown fox jumps over the lazy dog" })
  puts response["data"]
rescue APIVerve::Gibberishdetector::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Gibberishdetector::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Gibberishdetector::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/gibberishdetector?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/gibberishdetector?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/gibberishdetector?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
