require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  # hash[:my_key]= "my value"
  # hash[:my_key] = {second_level_key: "second level value"}
  new_hash = {}

   languages.each do |style, languages|
    languages.each do |language, type|
      if new_hash[language] == nil
        new_hash[language] = {type: type[:type], style: [style]}
      else
        new_hash[language][:style] << style
      end
    end
    # binding.pry
  end
  new_hash
end

#----------------------------------------NOTES
#review this lab in more detail. Solution makes sense but not the lab instructions. How to derive one from the other