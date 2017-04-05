require 'test/unit'
require 'E:/workspaceForRubyMine/helloRuby/robotProgram/wordplay'
class TestWordplay < Test::Unit::TestCase
  def test_sentences
    assert_equal(['a', 'b', 'c d', 'e f g'], 'a.b.c d.e f g.'.sentences)
    test_text = %q{Hello.This is a test of sentence separation.This is the end of the test.}
    assert_equal('This is the end of the test', test_text.sentences[2])
  end

  def test_words
    assert_equal(%w{this is a test}, 'this is a test'.words)
    assert_equal(%w{these are mostly words}, 'these are,mostly,words'.words)
  end

  def test_sentence_choice
    assert_equal('This is a great test',
                 Wordplay.best_sentence(['This is a test',
                                         'This is another test',
                                         'This is a great test'],
                                        %w{test great this}))
  end

  def test_basic_pronouns
    assert_equal('i am a robot', Wordplay.switch_prononus('you are a robot'))
  end

  def test_mixed_pronouns
    assert_equal('you gave me life', Wordplay.switch_prononus('i gave you life'))
    assert_equal('i am not what you are', Wordplay.switch_prononus('you are not what i am'))
  end
end