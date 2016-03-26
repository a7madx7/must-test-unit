# encoding: utf-8
# Ruby Dose Facebook Page
# https://www.facebook.com/ruby.dose

require 'must/test/unit/version'

module Must::Test::Unit
  def must(name, &block)
    # convert "any method description" to any_method_description
    test_name = "test_#{name.gsub(/\s+/, '_')}".to_sym

    # don't define a new method if its already defined
    defined = instance_method(test_name) rescue false
    raise "#{test_name} is already defined on #{self}" if defined

    if block_given?
      # define the actual test_something_is_valid TestCase method
      # pass it its functionality through a closure block
      define_method(test_name, &block)
    else
      define_method(test_name) do
        flunk "No implementation provided for #{name}"
      end
    end
  end
end

require 'minitest/autorun'
Minitest::Test.extend(Must::Test::Unit)

require 'test/unit'
Test::Unit::TestCase.extend(Must::Test::Unit)
