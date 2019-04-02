require 'pry'

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
 
#   }
# }

def reformat_languages(languages)
new_hash = {}
languages.each do |style, name_hash|
  name_hash.each do |language, type_hash|
    if new_hash[language] == nil
      new_hash[language] = {}
      end
      new_hash[language][:style]||= []
      new_hash[language][:style] << style
      binding.pry
      new_hash[language][type_hash.keys[0]]= type_hash.values[0]
    end
  end
  new_hash
end