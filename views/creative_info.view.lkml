view: creative_info {
  sql_table_name: `sources.creative_info` ;;

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
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
  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }
  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.Date ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }
  dimension: imp {
    type: number
    sql: ${TABLE}.imp ;;
  }
  dimension: imp_total {
    type: number
    sql: ${TABLE}.imp_total ;;
  }
  dimension: inversion {
    type: number
    sql: ${TABLE}.inversion ;;
  }
  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  measure: count {
    type: count
    drill_fields: [creative_name, trademark_name, campaign_name]
  }
}
