# require modules here
require 'yaml'
require 'pry'


def load_library(filepath)
  # code goes here
  library = YAML.load_file(filepath)
  #binding.pry
  result = {"get_meaning" => {}, "get_emoticon" => {}}
  library.each do |key, value|
    result["get_meaning"][value[1]] = key
    result["get_emoticon"][value[0]] = value[1]
  end
  result
end

#load_library('lib/emoticons.yml')

def get_japanese_emoticon(filepath, emoticon)
  # code goes here
  library = load_library(filepath)
  if library["get_emoticon"][emoticon] != nil
    library["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

#get_japanese_emoticon("lib/emoticons.yml", "O:)")

def get_english_meaning(filepath, emoticon)
  # code goes here
  library = load_library(filepath)
  if library["get_meaning"][emoticon] != nil
    library["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
