# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)

  # emoticons = YAML.load_file('./lib/emoticons.yml')
  #
  # emoticon_hashes = {}
  #
  # emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
  #
  #   english = value[0]
  #   japanese = value[1]
  #   emoticon_hashes[meaning] = emoticon_hashes[meaning]
  #   emoticon-translator = {"english" => english, "japanese" => japanese}
  #   binding.pry
  # end
  emoticons = YAML.load_file(path)
  lookup = {}
  lookup[:get_meaning] = {}
  lookup[:get_emoticon] = {}

  emoticons.each do |word, pair|
    japanese = pair[1]
    american = pair[0]

    lookup[:get_meaning][japanese] = word
    lookup[:get_emoticon][american] = japanese
  end

  lookup
end

def get_japanese_emoticon

end

def get_english_meaning

end
