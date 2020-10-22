# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)

  emoticons = YAML.load_file('./lib/emoticons.yml')

  emoticons.each do |meaning, value|  # meaning= "surprised"   # value= [":o", "o_O"]  <-(e,j)

    english = value[0]
    japanese = value[1]
    emoticon-meaning =
    {
      meaning => {
        :english => english,
        :japanese => japanese
      }
    }
    binding.pry
  end
end

def get_japanese_emoticon

end

def get_english_meaning

end
