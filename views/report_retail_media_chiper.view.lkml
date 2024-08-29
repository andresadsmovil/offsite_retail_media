view: report_retail_media_chiper {
  sql_table_name: `adsmovil-reports.looker_ml.report_retail_media_chiper` ;;

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }
  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }
  dimension: h3_9 {
    type: string
    sql: ${TABLE}.h3_9 ;;
  }
  dimension: l1 {
    type: string
    sql: ${TABLE}.l1 ;;
  }
  dimension: l2 {
    type: string
    sql: ${TABLE}.l2 ;;
  }
  dimension: l3 {
    type: string
    sql: ${TABLE}.l3 ;;
  }
  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }
  dimension: lat_int {
    type: number
    sql: ${TABLE}.lat_int ;;
  }
  dimension: lon {
    type: number
    sql: ${TABLE}.lon ;;
  }
  dimension: lon_int {
    type: number
    sql: ${TABLE}.lon_int ;;
  }
  dimension: macro_category {
    type: string
    sql: ${TABLE}.macro_category ;;
  }
  dimension: name_sku {
    type: string
    sql: ${TABLE}.name_sku ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: sales_usd {
    type: number
    sql: ${TABLE}.sales_usd ;;
  }
  dimension: store_id {
    type: number
    sql: ${TABLE}.store_ID ;;
  }
  dimension: store_type {
    type: string
    sql: ${TABLE}.store_type ;;
  }
  measure: count {
    type: count
  }
}
