view: kpi_s {
  sql_table_name: `sources.kpi_s` ;;

  dimension: add_carr {
    type: number
    sql: ${TABLE}.add_carr ;;
  }
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
  dimension: product_bought {
    type: number
    sql: ${TABLE}.product_bought ;;
  }
  dimension: products_view {
    type: number
    sql: ${TABLE}.products_view ;;
  }
  dimension_group: purchase {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.purchase_date ;;
  }
  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  dimension: unique_devices {
    type: number
    sql: ${TABLE}.unique_devices ;;
  }
  dimension: unique_devices_acum {
    type: number
    sql: ${TABLE}.unique_devices_acum ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, trademark_name]
  }
}
