# frozen_string_literal: true

# Run every exercise test.rb in the repository.
# Exit status is non-zero if any test run fails.

require 'English'

test_files = Dir['exercises/**/test.rb'].sort

if test_files.empty?
  warn 'No test.rb files found under exercises/'
  exit 1
end

failures = []

test_files.each do |file|
  puts "\n=== #{file} ==="
  success = system("ruby #{file}")
  failures << file unless success
end

puts "\n=== Summary ==="
puts "Ran #{test_files.length} test file(s)."

if failures.empty?
  puts 'All tests passed.'
  exit 0
else
  puts "#{failures.length} failure(s):"
  failures.each { |f| puts "  - #{f}" }
  exit 1
end
