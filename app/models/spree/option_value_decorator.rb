module Spree
  OptionValue.class_eval do
    translates :name, :presentation
    
    #include SpreeGlobalize::Translatable
  end
end
