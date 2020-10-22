# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)

  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticon_hashes = {}

  emoticons.each do |key, value|
    emoticon_hashes[key] = {}
    emoticon_hashes[key][:english] = value[0]
    emoticon_hashes[key][:japanese] = value[1]
  end
  emoticon_hashes
  binding.pry
end
