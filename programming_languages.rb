def reformat_languages(languages)
new_hash = {}

languages.collect do |lang_style, lang_type|
  lang_type.collect do |key, val|
    new_hash[key] = val
    new_hash[key][:style] = []
    new_hash[key][:style] << lang_style
  end
end
new_hash[:javascript][:style] << :oo
new_hash

end
