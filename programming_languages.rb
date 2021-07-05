require 'pry'


def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs_o_style|
    langs_o_style.each do |lang, properties|
      new_hash[lang] ||= properties
      new_hash[lang][:style] ||= []
      new_hash[lang][:style] << style
    end
  end
  new_hash
end
