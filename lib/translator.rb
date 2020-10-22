# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)

  emoticons = YAML.load_file('./lib/emoticons.yml')

  # emoticon_hashes = {}
  #
  # emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)
  #
  #   english = value[0]
  #   japanese = value[1]
  #   emoticon_hashes[meaning] = emoticon_hashes[meaning]
  #   binding.pry
  #   emoticon-translator = {"english" => english, "japanese" => japanese}
  # end
  empty_hash = {}
  emoticons.each do |key, value|
    empty_hash[key] = {}
    empty_hash[key][:english] = value[0]
    empty_hash[key][:japanese] = value[1]
  end
  empty_hash
end
