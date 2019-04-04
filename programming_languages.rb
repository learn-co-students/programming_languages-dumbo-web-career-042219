require 'pry'

def reformat_languages(languages)
   newFormat = {} 
   languages.each do |style, name|
    name.each do |lang, type|
      if newFormat.has_key?(lang)
        newFormat[lang][:style] << style
      else
        newFormat[lang] = type
        newFormat[lang][:style] = [style]
      end
    end
  end
   newFormat
 end