view: validation_alerts_last_date {
  sql_table_name: `looker_ml.validation_alerts_last_date` ;;

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: app {
    type: string
    sql: ${TABLE}.app ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: flag_alert {
    type: string
    sql: ${TABLE}.flag_alert ;;
  }
  dimension: flag_block {
    type: string
    sql: ${TABLE}.flag_Block ;;
  }
  dimension: flag_brand_safety {
    type: string
    sql: ${TABLE}.flag_Brand_Safety ;;
  }
  dimension: flag_impressions {
    type: string
    sql: ${TABLE}.flag_impressions ;;
  }
  dimension: flag_in_geo {
    type: string
    sql: ${TABLE}.flag_In_Geo ;;
  }
  dimension: flag_ivt {
    type: string
    sql: ${TABLE}.flag_ivt ;;
  }
  dimension: flag_viewability {
    type: string
    sql: ${TABLE}.flag_viewability ;;
  }
  dimension: last_block {
    type: number
    sql: ${TABLE}.last_Block ;;
  }
  dimension: last_brand_safety {
    type: number
    sql: ${TABLE}.last_Brand_Safety ;;
  }
  dimension: last_impressions {
    type: number
    sql: ${TABLE}.last_impressions ;;
  }
  dimension: last_in_geo {
    type: number
    sql: ${TABLE}.last_In_Geo ;;
  }
  dimension: last_ivt {
    type: number
    sql: ${TABLE}.last_IVT ;;
  }
  dimension: last_viewability {
    type: number
    sql: ${TABLE}.last_Viewability ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, advertiser_name]
  }
}
