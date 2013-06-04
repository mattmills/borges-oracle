require 'bundler'
Bundler.require

task :name, [:first_name, :last_name] do |t, args|
  puts "First name is #{args.first_name}"
  puts "Last  name is #{args.last_name}"
end

# Filenames here is a comma separated list of file sources

task :create_dictionary, [:filenames] do |t,args|
  markov = MarkyMarkov::Dictionary.new('dictionary', 3) # Saves/opens dictionary.mmd
  args.filenames.split(",").map{|fn| markov.parse_file fn }
  markov.save_dictionary! # Saves the modified dictionary/creates one if it didn't exist.
end
