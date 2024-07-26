view: kpi_s_date_hour {
  sql_table_name: `sources.kpi_s_date_hour` ;;

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
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: cpac {
    type: number
    sql: ${TABLE}.cpac ;;
  }
  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }
  dimension: cps {
    type: number
    sql: ${TABLE}.cps ;;
  }
  dimension: cpsu {
    type: number
    sql: ${TABLE}.cpsu ;;
  }
  dimension: cpui {
    type: number
    sql: ${TABLE}.cpui ;;
  }
  dimension: cpuv {
    type: number
    sql: ${TABLE}.cpuv ;;
  }
  dimension: cpvv {
    type: number
    sql: ${TABLE}.cpvv ;;
  }
  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
  }
  dimension: imp {
    type: number
    sql: ${TABLE}.imp ;;
  }
  dimension: inversion {
    type: number
    sql: ${TABLE}.inversion ;;
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
  dimension: roas {
    type: number
    sql: ${TABLE}.roas ;;
  }
  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }
  dimension: total_price {
    type: number
    sql: ${TABLE}.total_price ;;
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
