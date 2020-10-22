require 'pry'
require 'yaml'

def load_library(file_path)

  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticon_final_hash = {}

  emoticons.each do |meaning, value|
    emoticon_final_hash[meaning] =
    {
      :english => value[0],
      :japanese => value[1]
    }
    binding.pry
  end
  emoticon_final_hash
end

def get_english_meaning()
