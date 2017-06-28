module SpreeTranslate
  module LocaleHelper
    def select_available_locales_fields
      select_tag(
        'locale',
        options_for_select(I18n.available_locales, I18n.available_locales),
        common_options
      )
    end

    def common_options
      { class: 'fullwidth', multiple: 'true' }
    end
  end
end
