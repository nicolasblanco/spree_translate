module Spree
  OptionType.class_eval do
    translates :name, :presentation
    
    #include SpreeTranslate::Translatable
  end
end
