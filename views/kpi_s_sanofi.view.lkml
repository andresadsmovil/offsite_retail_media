view: kpi_s_sanofi {
  sql_table_name: `sources.kpi_s_sanofi` ;;

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
  dimension: campaing_name {
    type: string
    sql: ${TABLE}.campaing_name ;;
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
  dimension: unique_devices {
    type: number
    sql: ${TABLE}.unique_devices ;;
  }
  dimension: unique_devices_acum {
    type: number
    sql: ${TABLE}.unique_devices_acum ;;
  }
  dimension: win_att {
    type: string
    sql: ${TABLE}.win_att ;;
  }
  measure: count {
    type: count
    drill_fields: [campaing_name]
  }
}
