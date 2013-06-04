require 'bundler'

Bundler.require

class BorgesOracle < Sinatra::Base
  get '/' do
    markov = MarkyMarkov::Dictionary.new('dictionary')
    story = (1..5).map{ markov.generate_n_sentences 7 }
    title = markov.generate_n_words 3
    haml :index, :locals => {:story => story, :title => title}
  end
end