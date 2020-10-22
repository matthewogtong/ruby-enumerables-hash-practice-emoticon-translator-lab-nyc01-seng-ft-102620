require 'pry'
require 'yaml'

def load_library(file_path)

  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticon_final_hash = {}

  emoticons.each do |meaning, value|
    emoticon_final_hash[meaning] = {}
    binding.pry
  end



end
