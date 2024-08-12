view: campaign_events_report {
  sql_table_name: `sources.campaign_events_report` ;;

  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
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
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: ean {
    type: number
    sql: ${TABLE}.ean ;;
  }
  dimension: order_channel {
    type: string
    sql: ${TABLE}.order_channel ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: product_units {
    type: number
    sql: ${TABLE}.product_units ;;
  }
  dimension_group: purchase {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.purchase_date ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }
  dimension: total_price_local {
    type: number
    sql: ${TABLE}.total_price_local ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  dimension: win_att {
    type: string
    sql: ${TABLE}.win_att ;;
  }
  measure: count {
    type: count
    drill_fields: [category_name, product_name, trademark_name, campaign_name]
  }
}
