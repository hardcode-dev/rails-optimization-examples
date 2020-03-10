# test-prof test sampling

## For RSpec in your spec_helper.rb
require 'test_prof/recipes/rspec/sample'

## For Minitest in your test_helper.rb
require 'test_prof/recipes/minitest/sample'

```bash
SAMPLE=10 rspec

SAMPLE_GROUPS=10 rspec
```
