class MakeForeignKeysDeferrable < ActiveRecord::Migration

  def change
    drop_foreign_keys
    setup_foreign_keys
  end

  def drop_foreign_keys
    remove_foreign_key "adjustment_metadata", name: "adjustment_metadata_adjustment_id_fk"
    remove_foreign_key "adjustment_metadata", name: "adjustment_metadata_enterprise_id_fk"
    remove_foreign_key "carts", name: "carts_user_id_fk"
    remove_foreign_key "cms_blocks", name: "cms_blocks_page_id_fk"
    remove_foreign_key "cms_categories", name: "cms_categories_site_id_fk"
    remove_foreign_key "cms_categorizations", name: "cms_categorizations_category_id_fk"
    remove_foreign_key "cms_files", name: "cms_files_block_id_fk"
    remove_foreign_key "cms_files", name: "cms_files_site_id_fk"
    remove_foreign_key "cms_layouts", name: "cms_layouts_parent_id_fk"
    remove_foreign_key "cms_layouts", name: "cms_layouts_site_id_fk"
    remove_foreign_key "cms_pages", name: "cms_pages_layout_id_fk"
    remove_foreign_key "cms_pages", name: "cms_pages_parent_id_fk"
    remove_foreign_key "cms_pages", name: "cms_pages_site_id_fk"
    remove_foreign_key "cms_pages", name: "cms_pages_target_page_id_fk"
    remove_foreign_key "cms_snippets", name: "cms_snippets_site_id_fk"
    remove_foreign_key "coordinator_fees", name: "coordinator_fees_enterprise_fee_id_fk"
    remove_foreign_key "coordinator_fees", name: "coordinator_fees_order_cycle_id_fk"
    remove_foreign_key "distributors_payment_methods", name: "distributors_payment_methods_distributor_id_fk"
    remove_foreign_key "distributors_payment_methods", name: "distributors_payment_methods_payment_method_id_fk"
    remove_foreign_key "distributors_shipping_methods", name: "distributors_shipping_methods_distributor_id_fk"
    remove_foreign_key "distributors_shipping_methods", name: "distributors_shipping_methods_shipping_method_id_fk"
    remove_foreign_key "enterprise_fees", name: "enterprise_fees_enterprise_id_fk"
    remove_foreign_key "enterprise_groups_enterprises", name: "enterprise_groups_enterprises_enterprise_group_id_fk"
    remove_foreign_key "enterprise_groups_enterprises", name: "enterprise_groups_enterprises_enterprise_id_fk"
    remove_foreign_key "enterprise_roles", name: "enterprise_roles_enterprise_id_fk"
    remove_foreign_key "enterprise_roles", name: "enterprise_roles_user_id_fk"
    remove_foreign_key "enterprises", name: "enterprises_address_id_fk"
    remove_foreign_key "exchange_fees", name: "exchange_fees_enterprise_fee_id_fk"
    remove_foreign_key "exchange_fees", name: "exchange_fees_exchange_id_fk"
    remove_foreign_key "exchange_variants", name: "exchange_variants_exchange_id_fk"
    remove_foreign_key "exchange_variants", name: "exchange_variants_variant_id_fk"
    remove_foreign_key "exchanges", name: "exchanges_order_cycle_id_fk"
    remove_foreign_key "exchanges", name: "exchanges_payment_enterprise_id_fk"
    remove_foreign_key "exchanges", name: "exchanges_receiver_id_fk"
    remove_foreign_key "exchanges", name: "exchanges_sender_id_fk"
    remove_foreign_key "order_cycles", name: "order_cycles_coordinator_id_fk"
    remove_foreign_key "product_distributions", name: "product_distributions_distributor_id_fk"
    remove_foreign_key "product_distributions", name: "product_distributions_enterprise_fee_id_fk"
    remove_foreign_key "product_distributions", name: "product_distributions_product_id_fk"
    remove_foreign_key "spree_addresses", name: "spree_addresses_country_id_fk"
    remove_foreign_key "spree_addresses", name: "spree_addresses_state_id_fk"
    remove_foreign_key "spree_inventory_units", name: "spree_inventory_units_order_id_fk"
    remove_foreign_key "spree_inventory_units", name: "spree_inventory_units_return_authorization_id_fk"
    remove_foreign_key "spree_inventory_units", name: "spree_inventory_units_shipment_id_fk"
    remove_foreign_key "spree_inventory_units", name: "spree_inventory_units_variant_id_fk"
    remove_foreign_key "spree_line_items", name: "spree_line_items_order_id_fk"
    remove_foreign_key "spree_line_items", name: "spree_line_items_variant_id_fk"
    remove_foreign_key "spree_option_types_prototypes", name: "spree_option_types_prototypes_option_type_id_fk"
    remove_foreign_key "spree_option_types_prototypes", name: "spree_option_types_prototypes_prototype_id_fk"
    remove_foreign_key "spree_option_values", name: "spree_option_values_option_type_id_fk"
    remove_foreign_key "spree_option_values_variants", name: "spree_option_values_variants_option_value_id_fk"
    remove_foreign_key "spree_option_values_variants", name: "spree_option_values_variants_variant_id_fk"
    remove_foreign_key "spree_orders", name: "spree_orders_bill_address_id_fk"
    remove_foreign_key "spree_orders", name: "spree_orders_cart_id_fk"
    remove_foreign_key "spree_orders", name: "spree_orders_distributor_id_fk"
    remove_foreign_key "spree_orders", name: "spree_orders_order_cycle_id_fk"
    remove_foreign_key "spree_orders", name: "spree_orders_ship_address_id_fk"
    remove_foreign_key "spree_orders", name: "spree_orders_user_id_fk"
    remove_foreign_key "spree_payments", name: "spree_payments_order_id_fk"
    remove_foreign_key "spree_payments", name: "spree_payments_payment_method_id_fk"
    remove_foreign_key "spree_prices", name: "spree_prices_variant_id_fk"
    remove_foreign_key "spree_product_option_types", name: "spree_product_option_types_option_type_id_fk"
    remove_foreign_key "spree_product_option_types", name: "spree_product_option_types_product_id_fk"
    remove_foreign_key "spree_product_properties", name: "spree_product_properties_product_id_fk"
    remove_foreign_key "spree_product_properties", name: "spree_product_properties_property_id_fk"
    remove_foreign_key "spree_products_promotion_rules", name: "spree_products_promotion_rules_product_id_fk"
    remove_foreign_key "spree_products_promotion_rules", name: "spree_products_promotion_rules_promotion_rule_id_fk"
    remove_foreign_key "spree_products", name: "spree_products_shipping_category_id_fk"
    remove_foreign_key "spree_products", name: "spree_products_supplier_id_fk"
    remove_foreign_key "spree_products", name: "spree_products_tax_category_id_fk"
    remove_foreign_key "spree_products_taxons", name: "spree_products_taxons_product_id_fk"
    remove_foreign_key "spree_products_taxons", name: "spree_products_taxons_taxon_id_fk"
    remove_foreign_key "spree_promotion_action_line_items", name: "spree_promotion_action_line_items_promotion_action_id_fk"
    remove_foreign_key "spree_promotion_action_line_items", name: "spree_promotion_action_line_items_variant_id_fk"
    remove_foreign_key "spree_promotion_actions", name: "spree_promotion_actions_activator_id_fk"
    remove_foreign_key "spree_promotion_rules", name: "spree_promotion_rules_activator_id_fk"
    remove_foreign_key "spree_properties_prototypes", name: "spree_properties_prototypes_property_id_fk"
    remove_foreign_key "spree_properties_prototypes", name: "spree_properties_prototypes_prototype_id_fk"
    remove_foreign_key "spree_return_authorizations", name: "spree_return_authorizations_order_id_fk"
    remove_foreign_key "spree_roles_users", name: "spree_roles_users_role_id_fk"
    remove_foreign_key "spree_roles_users", name: "spree_roles_users_user_id_fk"
    remove_foreign_key "spree_shipments", name: "spree_shipments_address_id_fk"
    remove_foreign_key "spree_shipments", name: "spree_shipments_order_id_fk"
    remove_foreign_key "spree_shipping_methods", name: "spree_shipping_methods_shipping_category_id_fk"
    remove_foreign_key "spree_shipping_methods", name: "spree_shipping_methods_zone_id_fk"
    remove_foreign_key "spree_state_changes", name: "spree_state_changes_user_id_fk"
    remove_foreign_key "spree_states", name: "spree_states_country_id_fk"
    remove_foreign_key "spree_tax_rates", name: "spree_tax_rates_tax_category_id_fk"
    remove_foreign_key "spree_tax_rates", name: "spree_tax_rates_zone_id_fk"
    remove_foreign_key "spree_taxons", name: "spree_taxons_parent_id_fk"
    remove_foreign_key "spree_taxons", name: "spree_taxons_taxonomy_id_fk"
    remove_foreign_key "spree_users", name: "spree_users_bill_address_id_fk"
    remove_foreign_key "spree_users", name: "spree_users_ship_address_id_fk"
    remove_foreign_key "spree_variants", name: "spree_variants_product_id_fk"
    remove_foreign_key "spree_zone_members", name: "spree_zone_members_zone_id_fk"
    remove_foreign_key "suburbs", name: "suburbs_state_id_fk"
  end

  def setup_foreign_keys
    add_foreign_key "adjustment_metadata", "spree_adjustments", name: "adjustment_metadata_adjustment_id_fk", column: "adjustment_id", options: "deferrable"
    add_foreign_key "adjustment_metadata", "enterprises", name: "adjustment_metadata_enterprise_id_fk", options: "deferrable"
    add_foreign_key "carts", "spree_users", name: "carts_user_id_fk", column: "user_id", options: "deferrable"
    add_foreign_key "cms_blocks", "cms_pages", name: "cms_blocks_page_id_fk", column: "page_id", options: "deferrable"
    add_foreign_key "cms_categories", "cms_sites", name: "cms_categories_site_id_fk", column: "site_id", dependent: :delete, options: "deferrable"
    add_foreign_key "cms_categorizations", "cms_categories", name: "cms_categorizations_category_id_fk", column: "category_id", options: "deferrable"
    add_foreign_key "cms_files", "cms_blocks", name: "cms_files_block_id_fk", column: "block_id", options: "deferrable"
    add_foreign_key "cms_files", "cms_sites", name: "cms_files_site_id_fk", column: "site_id", options: "deferrable"
    add_foreign_key "cms_layouts", "cms_layouts", name: "cms_layouts_parent_id_fk", column: "parent_id", options: "deferrable"
    add_foreign_key "cms_layouts", "cms_sites", name: "cms_layouts_site_id_fk", column: "site_id", dependent: :delete, options: "deferrable"
    add_foreign_key "cms_pages", "cms_layouts", name: "cms_pages_layout_id_fk", column: "layout_id", options: "deferrable"
    add_foreign_key "cms_pages", "cms_pages", name: "cms_pages_parent_id_fk", column: "parent_id", options: "deferrable"
    add_foreign_key "cms_pages", "cms_sites", name: "cms_pages_site_id_fk", column: "site_id", dependent: :delete, options: "deferrable"
    add_foreign_key "cms_pages", "cms_pages", name: "cms_pages_target_page_id_fk", column: "target_page_id", options: "deferrable"
    add_foreign_key "cms_snippets", "cms_sites", name: "cms_snippets_site_id_fk", column: "site_id", dependent: :delete, options: "deferrable"
    add_foreign_key "coordinator_fees", "enterprise_fees", name: "coordinator_fees_enterprise_fee_id_fk", options: "deferrable"
    add_foreign_key "coordinator_fees", "order_cycles", name: "coordinator_fees_order_cycle_id_fk", options: "deferrable"
    add_foreign_key "distributors_payment_methods", "enterprises", name: "distributors_payment_methods_distributor_id_fk", column: "distributor_id", options: "deferrable"
    add_foreign_key "distributors_payment_methods", "spree_payment_methods", name: "distributors_payment_methods_payment_method_id_fk", column: "payment_method_id", options: "deferrable"
    add_foreign_key "distributors_shipping_methods", "enterprises", name: "distributors_shipping_methods_distributor_id_fk", column: "distributor_id", options: "deferrable"
    add_foreign_key "distributors_shipping_methods", "spree_shipping_methods", name: "distributors_shipping_methods_shipping_method_id_fk", column: "shipping_method_id", options: "deferrable"
    add_foreign_key "enterprise_fees", "enterprises", name: "enterprise_fees_enterprise_id_fk", options: "deferrable"
    add_foreign_key "enterprise_groups_enterprises", "enterprise_groups", name: "enterprise_groups_enterprises_enterprise_group_id_fk", options: "deferrable"
    add_foreign_key "enterprise_groups_enterprises", "enterprises", name: "enterprise_groups_enterprises_enterprise_id_fk", options: "deferrable"
    add_foreign_key "enterprise_roles", "enterprises", name: "enterprise_roles_enterprise_id_fk", options: "deferrable"
    add_foreign_key "enterprise_roles", "spree_users", name: "enterprise_roles_user_id_fk", column: "user_id", options: "deferrable"
    add_foreign_key "enterprises", "spree_addresses", name: "enterprises_address_id_fk", column: "address_id", options: "deferrable"
    add_foreign_key "exchange_fees", "enterprise_fees", name: "exchange_fees_enterprise_fee_id_fk", options: "deferrable"
    add_foreign_key "exchange_fees", "exchanges", name: "exchange_fees_exchange_id_fk", options: "deferrable"
    add_foreign_key "exchange_variants", "exchanges", name: "exchange_variants_exchange_id_fk", options: "deferrable"
    add_foreign_key "exchange_variants", "spree_variants", name: "exchange_variants_variant_id_fk", column: "variant_id", options: "deferrable"
    add_foreign_key "exchanges", "order_cycles", name: "exchanges_order_cycle_id_fk", options: "deferrable"
    add_foreign_key "exchanges", "enterprises", name: "exchanges_payment_enterprise_id_fk", column: "payment_enterprise_id", options: "deferrable"
    add_foreign_key "exchanges", "enterprises", name: "exchanges_receiver_id_fk", column: "receiver_id", options: "deferrable"
    add_foreign_key "exchanges", "enterprises", name: "exchanges_sender_id_fk", column: "sender_id", options: "deferrable"
    add_foreign_key "order_cycles", "enterprises", name: "order_cycles_coordinator_id_fk", column: "coordinator_id", options: "deferrable"
    add_foreign_key "product_distributions", "enterprises", name: "product_distributions_distributor_id_fk", column: "distributor_id", options: "deferrable"
    add_foreign_key "product_distributions", "enterprise_fees", name: "product_distributions_enterprise_fee_id_fk", options: "deferrable"
    add_foreign_key "product_distributions", "spree_products", name: "product_distributions_product_id_fk", column: "product_id", options: "deferrable"
    add_foreign_key "spree_addresses", "spree_countries", name: "spree_addresses_country_id_fk", column: "country_id", options: "deferrable"
    add_foreign_key "spree_addresses", "spree_states", name: "spree_addresses_state_id_fk", column: "state_id", options: "deferrable"
    add_foreign_key "spree_inventory_units", "spree_orders", name: "spree_inventory_units_order_id_fk", column: "order_id", options: "deferrable"
    add_foreign_key "spree_inventory_units", "spree_return_authorizations", name: "spree_inventory_units_return_authorization_id_fk", column: "return_authorization_id", options: "deferrable"
    add_foreign_key "spree_inventory_units", "spree_shipments", name: "spree_inventory_units_shipment_id_fk", column: "shipment_id", options: "deferrable"
    add_foreign_key "spree_inventory_units", "spree_variants", name: "spree_inventory_units_variant_id_fk", column: "variant_id", options: "deferrable"
    add_foreign_key "spree_line_items", "spree_orders", name: "spree_line_items_order_id_fk", column: "order_id", options: "deferrable"
    add_foreign_key "spree_line_items", "spree_variants", name: "spree_line_items_variant_id_fk", column: "variant_id", options: "deferrable"
    add_foreign_key "spree_option_types_prototypes", "spree_option_types", name: "spree_option_types_prototypes_option_type_id_fk", column: "option_type_id", options: "deferrable"
    add_foreign_key "spree_option_types_prototypes", "spree_prototypes", name: "spree_option_types_prototypes_prototype_id_fk", column: "prototype_id", options: "deferrable"
    add_foreign_key "spree_option_values", "spree_option_types", name: "spree_option_values_option_type_id_fk", column: "option_type_id", options: "deferrable"
    add_foreign_key "spree_option_values_variants", "spree_option_values", name: "spree_option_values_variants_option_value_id_fk", column: "option_value_id", options: "deferrable"
    add_foreign_key "spree_option_values_variants", "spree_variants", name: "spree_option_values_variants_variant_id_fk", column: "variant_id", options: "deferrable"
    add_foreign_key "spree_orders", "spree_addresses", name: "spree_orders_bill_address_id_fk", column: "bill_address_id", options: "deferrable"
    add_foreign_key "spree_orders", "carts", name: "spree_orders_cart_id_fk", options: "deferrable"
    add_foreign_key "spree_orders", "enterprises", name: "spree_orders_distributor_id_fk", column: "distributor_id", options: "deferrable"
    add_foreign_key "spree_orders", "order_cycles", name: "spree_orders_order_cycle_id_fk", options: "deferrable"
    add_foreign_key "spree_orders", "spree_addresses", name: "spree_orders_ship_address_id_fk", column: "ship_address_id", options: "deferrable"
    add_foreign_key "spree_orders", "spree_users", name: "spree_orders_user_id_fk", column: "user_id", options: "deferrable"
    add_foreign_key "spree_payments", "spree_orders", name: "spree_payments_order_id_fk", column: "order_id", options: "deferrable"
    add_foreign_key "spree_payments", "spree_payment_methods", name: "spree_payments_payment_method_id_fk", column: "payment_method_id", options: "deferrable"
    add_foreign_key "spree_prices", "spree_variants", name: "spree_prices_variant_id_fk", column: "variant_id", options: "deferrable"
    add_foreign_key "spree_product_option_types", "spree_option_types", name: "spree_product_option_types_option_type_id_fk", column: "option_type_id", options: "deferrable"
    add_foreign_key "spree_product_option_types", "spree_products", name: "spree_product_option_types_product_id_fk", column: "product_id", options: "deferrable"
    add_foreign_key "spree_product_properties", "spree_products", name: "spree_product_properties_product_id_fk", column: "product_id", options: "deferrable"
    add_foreign_key "spree_product_properties", "spree_properties", name: "spree_product_properties_property_id_fk", column: "property_id", options: "deferrable"
    add_foreign_key "spree_products_promotion_rules", "spree_products", name: "spree_products_promotion_rules_product_id_fk", column: "product_id", options: "deferrable"
    add_foreign_key "spree_products_promotion_rules", "spree_promotion_rules", name: "spree_products_promotion_rules_promotion_rule_id_fk", column: "promotion_rule_id", options: "deferrable"
    add_foreign_key "spree_products", "spree_shipping_categories", name: "spree_products_shipping_category_id_fk", column: "shipping_category_id", options: "deferrable"
    add_foreign_key "spree_products", "enterprises", name: "spree_products_supplier_id_fk", column: "supplier_id", options: "deferrable"
    add_foreign_key "spree_products", "spree_tax_categories", name: "spree_products_tax_category_id_fk", column: "tax_category_id", options: "deferrable"
    add_foreign_key "spree_products_taxons", "spree_products", name: "spree_products_taxons_product_id_fk", column: "product_id", dependent: :delete, options: "deferrable"
    add_foreign_key "spree_products_taxons", "spree_taxons", name: "spree_products_taxons_taxon_id_fk", column: "taxon_id", dependent: :delete, options: "deferrable"
    add_foreign_key "spree_promotion_action_line_items", "spree_promotion_actions", name: "spree_promotion_action_line_items_promotion_action_id_fk", column: "promotion_action_id", options: "deferrable"
    add_foreign_key "spree_promotion_action_line_items", "spree_variants", name: "spree_promotion_action_line_items_variant_id_fk", column: "variant_id", options: "deferrable"
    add_foreign_key "spree_promotion_actions", "spree_activators", name: "spree_promotion_actions_activator_id_fk", column: "activator_id", options: "deferrable"
    add_foreign_key "spree_promotion_rules", "spree_activators", name: "spree_promotion_rules_activator_id_fk", column: "activator_id", options: "deferrable"
    add_foreign_key "spree_properties_prototypes", "spree_properties", name: "spree_properties_prototypes_property_id_fk", column: "property_id", options: "deferrable"
    add_foreign_key "spree_properties_prototypes", "spree_prototypes", name: "spree_properties_prototypes_prototype_id_fk", column: "prototype_id", options: "deferrable"
    add_foreign_key "spree_return_authorizations", "spree_orders", name: "spree_return_authorizations_order_id_fk", column: "order_id", options: "deferrable"
    add_foreign_key "spree_roles_users", "spree_roles", name: "spree_roles_users_role_id_fk", column: "role_id", options: "deferrable"
    add_foreign_key "spree_roles_users", "spree_users", name: "spree_roles_users_user_id_fk", column: "user_id", options: "deferrable"
    add_foreign_key "spree_shipments", "spree_addresses", name: "spree_shipments_address_id_fk", column: "address_id", options: "deferrable"
    add_foreign_key "spree_shipments", "spree_orders", name: "spree_shipments_order_id_fk", column: "order_id", options: "deferrable"
    add_foreign_key "spree_shipping_methods", "spree_shipping_categories", name: "spree_shipping_methods_shipping_category_id_fk", column: "shipping_category_id", options: "deferrable"
    add_foreign_key "spree_shipping_methods", "spree_zones", name: "spree_shipping_methods_zone_id_fk", column: "zone_id", options: "deferrable"
    add_foreign_key "spree_state_changes", "spree_users", name: "spree_state_changes_user_id_fk", column: "user_id", options: "deferrable"
    add_foreign_key "spree_states", "spree_countries", name: "spree_states_country_id_fk", column: "country_id", options: "deferrable"
    add_foreign_key "spree_tax_rates", "spree_tax_categories", name: "spree_tax_rates_tax_category_id_fk", column: "tax_category_id", options: "deferrable"
    add_foreign_key "spree_tax_rates", "spree_zones", name: "spree_tax_rates_zone_id_fk", column: "zone_id", options: "deferrable"
    add_foreign_key "spree_taxons", "spree_taxons", name: "spree_taxons_parent_id_fk", column: "parent_id", options: "deferrable"
    add_foreign_key "spree_taxons", "spree_taxonomies", name: "spree_taxons_taxonomy_id_fk", column: "taxonomy_id", options: "deferrable"
    add_foreign_key "spree_users", "spree_addresses", name: "spree_users_bill_address_id_fk", column: "bill_address_id", options: "deferrable"
    add_foreign_key "spree_users", "spree_addresses", name: "spree_users_ship_address_id_fk", column: "ship_address_id", options: "deferrable"
    add_foreign_key "spree_variants", "spree_products", name: "spree_variants_product_id_fk", column: "product_id", options: "deferrable"
    add_foreign_key "spree_zone_members", "spree_zones", name: "spree_zone_members_zone_id_fk", column: "zone_id", options: "deferrable"
    add_foreign_key "suburbs", "spree_states", name: "suburbs_state_id_fk", column: "state_id", options: "deferrable"
  end
end
