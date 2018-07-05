require 'minitest/autorun'
require 'minitest/pride'
#require binary_translator file
require './lib/binary_translator'

class BinaryTranslatorTest < Minitest::Test

  def test_it_has_an_instance_of_Binary_Translator
    bt = BinaryTranslator.new
    assert_instance_of BinaryTranslator, bt
  end

  def test_it_translates_a
    bt_a = BinaryTranslator.new
    assert_equal "000001", bt_a.translates_a
  end

  def test_it_translates_z
    bt_z = BinaryTranslator.new
    assert_equal "011010", bt_z.translates_z
  end

  def test_it_translates_turing
    bt_turing = BinaryTranslator.new
    assert_equal "010100010101010010001001001110000111", bt_turing.translates_turing
  end
end
