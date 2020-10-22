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

  translated_emoticons = load_library(file_path)

  translated_emoticons.each do |meaning, value|
    if translated_emoticons[meaning][value] == emoticon
      english_meaning = translated_emoticons[meaning][value][:english]
    end
    binding.pry
    english_meaning
  end

end
