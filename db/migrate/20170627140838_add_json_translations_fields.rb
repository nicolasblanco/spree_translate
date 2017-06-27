class AddJsonTranslationsFields < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_option_types, :name_translations, 'jsonb'
    add_column :spree_option_types, :presentation_translations, 'jsonb'

    add_column :spree_option_values, :name_translations, 'jsonb'
    add_column :spree_option_values, :presentation_translations, 'jsonb'

    add_column :spree_products, :name_translations, 'jsonb'
    add_column :spree_products, :description_translations, 'jsonb'
    add_column :spree_products, :meta_description_translations, 'jsonb'
    add_column :spree_products, :meta_keywords_translations, 'jsonb'
    add_column :spree_products, :slug_translations, 'jsonb'

    add_column :spree_product_properties, :value_translations, 'jsonb'

    add_column :spree_promotions, :name_translations, 'jsonb'
    add_column :spree_promotions, :description_translations, 'jsonb'

    add_column :spree_properties, :name_translations, 'jsonb'
    add_column :spree_properties, :presentation_translations, 'jsonb'

    add_column :spree_shipping_methods, :name_translations, 'jsonb'

    add_column :spree_stores, :name_translations, 'jsonb'
    add_column :spree_stores, :meta_description_translations, 'jsonb'
    add_column :spree_stores, :meta_keywords_translations, 'jsonb'
    add_column :spree_stores, :seo_title_translations, 'jsonb'

    add_column :spree_taxons, :name_translations, 'jsonb'
    add_column :spree_taxons, :description_translations, 'jsonb'
    add_column :spree_taxons, :meta_title_translations, 'jsonb'
    add_column :spree_taxons, :meta_description_translations, 'jsonb'
    add_column :spree_taxons, :meta_keywords_translations, 'jsonb'
    add_column :spree_taxons, :permalink_translations, 'jsonb'

    add_column :spree_taxonomies, :name_translations, 'jsonb'
  end
end
