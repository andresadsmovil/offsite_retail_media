view: retail_media_offsite {
  sql_table_name: `sources.retail_media_offsite` ;;

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
    type: string
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
    type: string
    sql: ${TABLE}.ean ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url;;
    html: <img src='{{ value }}' width='80' height='80'>;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: investment {
    type: number
    sql: ${TABLE}.ads_sales ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_impression ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  dimension: day_name {
    type: string
    sql: ${TABLE}.day_name ;;
  }
  dimension: hour {
    type: number
    sql: ${TABLE}.hour ;;
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
    sql: ${TABLE}.attibution_sales ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.unique_users ;;
  }
  dimension: unique_events {
    type: number
    sql: ${TABLE}.unique_events ;;
  }
  dimension: video_completes {
    type: number
    sql: ${TABLE}.video_completes ;;
  }
  measure: count {
    type: count
    drill_fields: [category_name, product_name, event_name]
  }
  measure: sum_investment {
    group_label: "Measures"
    type: sum
    sql: ${investment} ;;
    value_format: "$#,##0"
  }
  measure: sum_total_price_local {
    group_label: "Measures"
    type: sum
    sql: ${total_price_local} ;;
    value_format: "$#,##0"
  }
  measure: sum_unique_user {
    group_label: "Measures"
    type: sum
    sql: ${user_id} ;;
    value_format: "#,##0"
    }
  measure: sum_impressions {
    group_label: "Measures"
    type: sum
    sql: ${impressions} ;;
  }
  measure: sum_clicks {
    group_label: "Measures"
    type: sum
    sql: ${clicks} ;;
  }
  measure: sum_unique_events {
    group_label: "Measures"
    type: sum
    sql: ${unique_events} ;;
   }
  measure: event_Product_Added {
    type: sum
    sql: CASE WHEN ${event_name} = 'Product Added' THEN ${product_units} ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: event_Product_Viewed {
    type: sum
    sql: CASE WHEN ${event_name} = 'Product Viewed' THEN ${product_units} ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: event_product_bought {
    type: sum
    sql: CASE WHEN ${event_name} = 'Product Bought (Verified.v2)' THEN ${product_units} ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: event_product_bought_total_price_local {
    type: sum
    sql: CASE WHEN ${event_name} = 'Product Bought (Verified.v2)' THEN ${total_price_local} ELSE NULL END ;;
    value_format: "$#,##0"
  }
}