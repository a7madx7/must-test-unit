load '../test_helper.rb'
# require 'minitest/autorun'
class MustMiniTest < Minitest::Test
  must 'evaluate to true' do
    assert true
  end
end
class MustTest < Test::Unit::TestCase
  must 'evaluate to true' do
    assert true
  end
end
