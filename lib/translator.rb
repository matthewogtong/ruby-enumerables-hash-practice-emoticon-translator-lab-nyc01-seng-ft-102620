# require modules here
require 'pry'
require 'yaml'


def load_library(file_path)

  emoticon_library = YAML.load_file(file_path)


  emoticon_library.each do |emote_name, emote_value|

    emote_value.each do |emote|
      if !emote_name = {emote_name => {:english => emote}}
        {emote_name => {:english => emote}}
      elsif !emote_name = {emote_name => {:english => emote}} && !emote_name = {emote_name => {:japanese => emote}}
        {emote_name => {:japanese => emote}}
      end
      # if !emote_name = {:english => emote} && !emote_name = {:japanese => emote}
      #   emote_name = {"japanese": emote}
      # end
      binding.pry
    end
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
