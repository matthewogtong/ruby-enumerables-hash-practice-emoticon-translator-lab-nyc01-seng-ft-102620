# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)

  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)

    emoticon-meaning = {}
    emoticon-translator = 
    binding.pry
    # english = value[0]
    # japanese = value[1]
    # emoticon_lib['get_meaning'][japanese] = meaning
    # emoticon_lib['get_emoticon'][english] = japanese
  end
end

def get_japanese_emoticon

end

def get_english_meaning

end
