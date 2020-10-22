# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)

  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticon_lib = {'english'  => {},
                 'japanese' => {} }

  emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
    english = value[0]
    japanese = value[1]
    emoticon_lib['english'][japanese] = meaning
    emoticon_lib['japanese'][english] = japanese
    binding.pry
 end
 emoticon_lib
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
