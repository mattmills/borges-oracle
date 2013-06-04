require 'bundler'

Bundler.require

class BorgesOracle < Sinatra::Base
  get '/' do
    markov = MarkyMarkov::Dictionary.new('dictionary')
    story = (1..2).map{ markov.generate_n_sentences 7 }
    haml :index, :locals => story
  end
end