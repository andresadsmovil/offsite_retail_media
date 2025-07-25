view: retail_media_offsite {

  sql_table_name: `reports_generated.retail_media_offsite` ;;

  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: concat(${TABLE}.advertiser_id, '-', ${TABLE}.campaign_id, '-', ${TABLE}.win_att);;
  }

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: win_att {
    type: string
    sql: ${TABLE}.win_att ;;
    html: <H4 style= <div style="font-size: 15px; text-align: center;">{{value}}</H3>;;
  }
  dimension: advertiser_name{
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
    html: <H4 style= <div style="font-size: 20px; text-align: center;">{{value}}</H4>;;
  }
  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
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
    html: <img src='{{ value }}' width='60' height='60'>;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }
  dimension: investment {
    type: number
    sql: ${TABLE}.ads_spend ;;
  }
  dimension_group: date_impression {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_impression ;;
  }
  dimension_group: date_create {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_create ;;
     html: <H4 style= <div style="font-size: 15px; text-align: center;">{{value}}</H3>;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: account_id {
    type: string
    sql: CAST(${TABLE}.account_id AS STRING);;
  }
  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
    ##   html: <H4 style= <div style="font-size: 20px; text-align: center;">{{value}}</H4>;;
  }
  dimension: day_name {
    type: string
    sql:  CASE WHEN ${TABLE}.day_name = 'Monday' THEN '1 Monday'
          WHEN ${TABLE}.day_name = 'Tuesday' THEN '2 Tuesday'
          WHEN ${TABLE}.day_name = 'Wednesday' THEN '3 Wednesday'
          WHEN ${TABLE}.day_name = 'Thursday' THEN '4 Thursday'
          WHEN ${TABLE}.day_name = 'Friday' THEN '5 Friday'
          WHEN ${TABLE}.day_name = 'Saturday' THEN '6 Saturday'
          WHEN ${TABLE}.day_name = 'Sunday' THEN '7 Sunday'
          ELSE NULL END ;;
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
  dimension: sales_model {
    type: string
    sql: ${TABLE}.sales_model ;;
    html: <H4 style= <div style="font-size: 20px; text-align: center;">{{value}}</H4>;;
  }
  dimension: spend_bw {
    type: number
    sql: ${TABLE}.spend_bw ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }
  dimension: advertiser_internal_id {
    type: string
    sql: CAST(${TABLE}.advertiser_internal_id  AS STRING);;
  }
  dimension: total_price_local {
    type: number
    sql: ${TABLE}.attribution_sales ;;
  }
  dimension: user_id {
    type: number
    sql: ${TABLE}.unique_users ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }
  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }
  dimension: user_acum {
    type: number
    sql: ${TABLE}.unique_users_acum ;;
  }
  dimension: unique_events {
    type: number
    sql: ${TABLE}.unique_events ;;
  }
  dimension: video_completes {
    type: number
    sql: ${TABLE}.video_completes ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  measure: sum_investment {
    group_label: "Measures"
    type: sum
    sql: ${investment} ;;
    value_format: "$#,##0"
  }
  measure: sum_user_acum {
    group_label: "Measures"
    type: sum
    sql: ${user_acum} ;;
    value_format: "#,##0"
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
  measure: maxcpm {
    group_label: "Measures"
    type: average
    sql: ${cpm} ;;
    value_format: "$#,##0"
  }
  measure: maxcpc {
    group_label: "Measures"
    type: average
    sql: ${cpc} ;;
  }
  measure: max_total_sales {
    group_label: "Measures"
    type: sum
    sql: ${total_sales} ;;
    value_format: "$#,##0"

  }
  measure: sum_unique_events {
    group_label: "Measures"
    type: sum
    sql: ${unique_events} ;;
  }
  measure: sum_new_users {
    group_label: "Measures"
    type: sum
    sql:  ${TABLE}.new_users ;;
  }
  measure: event_Product_Added {
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Added', 'add-to-cart') THEN product_units ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: event_Product_Viewed {
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Viewed', 'product-view') THEN product_units ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: event_product_bought {
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Bought (Verified.v2)', 'purchase') THEN product_units ELSE NULL END ;;
    value_format: "#,##0"
  }
  measure: event_product_bought_total_price_local {
    group_label: "Measures"
    type: sum
    sql: CASE WHEN ${event_name} in ('Product Bought (Verified.v2)', 'purchase') THEN ${total_price_local} ELSE NULL END ;;
    value_format: "$#,##0"
  }
  measure: max_quantity {
    group_label: "Measures"
    type: max
    sql: ${quantity} ;;
    value_format: "#,##0"
  }
  measure: max_cpm {
    group_label: "Measures"
    type: number
    sql:
    case
      when max(${sales_model}) = 'CPM' then ${maxcpm}
      when max(${sales_model}) = 'CPC'then (${sum_investment}/${sum_impressions}) * 1000
      else ${maxcpm}

    end ;;
    value_format: "$#,##0"
  }
  measure: max_cpc {
    group_label: "Measures"
    type: number
    sql:
    case
      when max(${sales_model}) = 'CPC' then ${maxcpc}
      when max(${sales_model}) = 'CPM'then (${sum_investment}/${sum_clicks})
      else ${maxcpc}

    end ;;
    value_format: "$#,##0"
  }

}
