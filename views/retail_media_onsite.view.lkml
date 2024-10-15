view: retail_media_onsite {
  sql_table_name: `adsmovil-farmatodo.reports_generated.retail_media_onsite` ;;

  dimension: ads_spend {
    type: number
    sql: ${TABLE}.adSpend ;;
  }
  dimension: advertiser_internal_id {
    type: number
    sql: ${TABLE}.advertiser_internal_id ;;
  }
  dimension: budget_amount {
    type: number
    sql: ${TABLE}.budgetAmount ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaignName ;;
  }
  dimension: campaignid {
    type: string
    sql: ${TABLE}.campaignid ;;
  }
  dimension: charge_type {
    type: string
    sql: ${TABLE}.chargeType ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.cid ;;
  }
  dimension: clicks_charged {
    type: number
    sql: ${TABLE}.clicksCharged ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: enddate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.enddate ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.imageURL ;;
  }
  dimension: impressions_total {
    type: number
    sql: ${TABLE}.impressionsTotal ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.productId ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }
  dimension: purchases_amount {
    type: number
    sql: ${TABLE}.purchasesAmount ;;
  }
  dimension: purchases_quantity {
    type: number
    sql: ${TABLE}.purchasesQuantity ;;
  }
  dimension: retailer {
    type: string
    sql: ${TABLE}.retailer ;;
  }
  dimension_group: startdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startdate ;;
  }
  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendorId ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, campaign_name]
  }
  measure: sum_ads_spend {
    group_label: "Measures"
    type: sum
    sql: ${ads_spend} ;;
    value_format: "$#,##0"
  }
  measure: max_budget_amount {
    group_label: "Measures"
    type: max
    sql: ${budget_amount} ;;
    value_format: "$#,##0"
  }
  measure: sum_impressions_total {
    group_label: "Measures"
    type: sum
    sql: ${impressions_total} ;;
  }
  measure: sum_purchases_amount {
    group_label: "Measures"
    type: sum
    sql: ${purchases_amount} ;;
    value_format: "$#,##0"
  }
  measure: sum_purchases_quantity {
    group_label: "Measures"
    type: sum
    sql: ${purchases_quantity} ;;
  }
  measure: sum_click {
    group_label: "Measures"
    type: sum
    sql: ${clicks_charged} ;;
  }
}
