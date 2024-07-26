connection: "farmatodo_sources"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: all_retail_media_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: all_retail_media_default_datagroup

explore: campaign_events_report {}

explore: binicle_managed_service {
    join: binicle_managed_service__bw {
      view_label: "Binicle Managed Service: Bw"
      sql: LEFT JOIN UNNEST(${binicle_managed_service.bw}) as binicle_managed_service__bw ;;
      relationship: one_to_many
    }
}

explore: binnicle_self_service {}

explore: farmatodo_external {}

explore: creative_info {}

explore: events_unilever_latest {
  join: events {
    type: left_outer
    sql_on: ${events_unilever_latest.event_id} = ${events.event_id} ;;
    relationship: many_to_one
  }
}

explore: events {}

explore: farmatodo_parametric_products_table {}

explore: farmatodo_parametric_table {}

explore: farmatodo_processed_parametric_table {}

explore: funnel_events {}

explore: inversion_kpi {}

explore: kpi_s {}

explore: kpi_s_date_hour {}

explore: onsite_reports {
  access_filter: {
    field:provider
    user_attribute: advertiser
  }
}

explore: kpi_s_sanofi {}

explore: purchase_events {
    join: purchase_events__purchase_s {
      view_label: "Purchase Events: Purchase S"
      sql: LEFT JOIN UNNEST(${purchase_events.purchase_s}) as purchase_events__purchase_s ;;
      relationship: one_to_many
    }
    join: purchase_events__purchase_s__order_id_s {
      view_label: "Purchase Events: Purchase S Order Id S"
      sql: LEFT JOIN UNNEST(${purchase_events__purchase_s.order_id_s}) as purchase_events__purchase_s__order_id_s ;;
      relationship: one_to_many
    }
    join: purchase_events__purchase_s__order_id_s__products_s {
      view_label: "Purchase Events: Purchase S Order Id S Products S"
      sql: LEFT JOIN UNNEST(${purchase_events__purchase_s__order_id_s.products_s}) as purchase_events__purchase_s__order_id_s__products_s ;;
      relationship: one_to_many
    }
}

explore: retail_media_offside {}

explore: sku_farmatodo {}
