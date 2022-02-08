require 'json'

module StringRegistry
  class << self
    def deep_intern(data)
      case data
      when Hash
        new_hash = data.transform_keys { |k| deep_intern(k) }
        new_hash.transform_values! { |v| deep_intern(v) }
        new_hash.freeze
      when Array
        data.map { |d| deep_intern(d) }.freeze
      when String
        # String#-@ doesn't deduplicate the string if it's tainted.
        # So in such case we need to untaint it first.
        -data
      else
        data.freeze
      end
    end
  end
end


puts RUBY_VERSION
puts "start repro (should crash after 14 dots)"
heap = []
loop do
  print '.'
  heap << StringRegistry.deep_intern(JSON.parse(File.read('data.json')))
end
