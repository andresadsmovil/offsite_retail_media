view: retail_media_offsite_users {
  sql_table_name: `adsmovil-farmatodo.reports_generated.retail_media_offsite_users` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: advertiser_internal_id {
    type: number
    sql: ${TABLE}.advertiser_internal_id ;;
  }
  dimension_group: date_impression {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_impression ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: campaign_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
   dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  dimension: window_att {
    type: string
    sql: ${TABLE}.window_att ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
  measure: new_user_Product_Added {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Added', 'add-to-cart') THEN ${TABLE}.new_user ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure:new_user_Product_Viewed {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Viewed', 'product-view') THEN ${TABLE}.new_user ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: new_user_product_bought {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Bought (Verified.v2)', 'purchase') THEN ${TABLE}.new_user ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: product_units {
    type: sum
    sql: ${TABLE}.product_units ;;
  }
  measure: product_units_Product_Added {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Added', 'add-to-cart') THEN ${TABLE}.product_units ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure:product_units_Product_Viewed {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Viewed', 'product-view') THEN ${TABLE}.product_units ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: product_units_product_bought {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Bought (Verified.v2)', 'purchase') THEN ${TABLE}.product_units ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: unique_user {
    type: sum
    sql: ${TABLE}.unique_user ;;
  }
  measure: ads_spend {
    type: sum
    sql: ${TABLE}.ads_spend ;;
  }
  measure:unique_user_Product_Added {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Added', 'add-to-cart') THEN ${TABLE}.unique_user ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure:unique_user_Product_Viewed {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Viewed', 'product-view') THEN ${TABLE}.unique_user ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: unique_user_product_bought {
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Bought (Verified.v2)', 'purchase') THEN ${TABLE}.unique_user ELSE NULL END ;;
    value_format: "#,##0"
  }

}
