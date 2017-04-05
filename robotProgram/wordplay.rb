class Wordplay
  def self.switch_prononus(text)
    text.gsub(/\b(I am|You are|I|You|Your|My)\b/i) do |prononu|
      case prononu.downcase
        when 'i'
          'you'
        when 'you'
          'me'
        when 'me'
          'you'
        when 'i am'
          'you are'
        when 'you are'
          'i am'
        when 'your'
          'my'
        when 'my'
          'your'
      end
    end.sub(/^me \b/i,'i')
  end
end

puts Wordplay.switch_prononus('Your cat is fighting with my cat')
puts Wordplay.switch_prononus('I gave you hope')
class String
  def sentences
    gsub(/[\n\r]/, ' ').split(/\.\s*/)
  end
  def words
    scan(/\w[\w'\-]*/)
  end
end
puts %q{Hello.This is a test of
basic sentence splitting. It
even works over multiple lines.}.sentences

puts "This is a test of words' capabilities".words

puts %q{Hello.This is a test of
basic sentence splitting. It
even works over multiple lines.}.sentences[1].words[3]

hot_words = %w{test ruby}
my_string = 'This is a test.Dull sentence here.Ruby is great.So is cake.'
my_string.sentences.find_all do |s|
  s.downcase.words.any?{|word| hot_words.include?(word)}
end
