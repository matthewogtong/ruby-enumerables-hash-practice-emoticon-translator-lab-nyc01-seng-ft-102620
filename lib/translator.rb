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
  end
  emoticon_final_hash
end

def get_english_meaning(file_path, emoticon)

  emoticons = load_library(file_path)

  emoticons.each do |key, value|
    if emoticons[key][:japanese] == emoticon
      return key
      binding.pry
    end
  end
  return 'Sorry, that emoticon was not found'

end
