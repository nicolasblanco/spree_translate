Spree::Admin::GeneralSettingsController.class_eval do
  before_filter :update_i18n_settings, only: :update

  private
    def update_i18n_settings
      params.each do |name, value|
        next unless SpreeTranslate::Config.has_preference? name
        SpreeTranslate::Config[name] = value.map(&:to_sym)
      end
    end
end
