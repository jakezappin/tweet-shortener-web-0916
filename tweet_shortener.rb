# Write your code here.

def dictionary
  dictionary = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

  return dictionary
end

def word_substituter(tweet)
  dict = dictionary
  tweet_array = tweet.split(" ")
  tweet_array.each do |word|
    dict.each do |long_words, abbrev_word|
      long_words.split(", ").each do |long_word|
        if long_word.upcase == word.upcase
          word.replace(abbrev_word)
        end
      end
    end
  end
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end

  return tweets
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet.slice!(137...tweet.length)
  tweet << "..."

  return tweet
end
