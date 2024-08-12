view: farmatodo_processed_parametric_table {
  sql_table_name: `sources.farmatodo_processed_parametric_table` ;;

  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }
  dimension: ean {
    type: number
    sql: ${TABLE}.ean ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: sku {
    type: number
    sql: ${TABLE}.sku ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, category_name, advertiser_name, product_name, trademark_name]
  }
}
