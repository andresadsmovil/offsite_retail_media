view: retail_media_offside {
  sql_table_name: `sources.retail_media_offside` ;;

  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
  }
  dimension_group: date_purchase {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_purchase ;;
  }
  dimension: ean {
    type: number
    sql: ${TABLE}.ean ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: investment {
    type: number
    sql: ${TABLE}.investment ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: product_units {
    type: number
    sql: ${TABLE}.product_units ;;
  }
  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
  }
  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }
  dimension: spend_bw {
    type: number
    sql: ${TABLE}.spend_bw ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }
  dimension: total_price_local {
    type: number
    sql: ${TABLE}.total_price_local ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }
  dimension: video_completes {
    type: number
    sql: ${TABLE}.video_completes ;;
  }
  measure: count {
    type: count
    drill_fields: [category_name, product_name, event_name]
  }
}
