view: all_report_campaign {
  sql_table_name: `looker_ml.all_report_campaign` ;;

  dimension: account_currency {
    type: string
    sql: ${TABLE}.account_currency ;;
  }
  dimension: account_id {
    type: string
    sql: CAST(${TABLE}.account_id AS STRING) ;;
  }
  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }
  dimension: advertiser_id {
    type: string
    sql: CAST(${TABLE}.advertiser_id  AS STRING);;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: app_bundle {
    type: string
    sql: ${TABLE}.app_bundle ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }
  dimension: campaign_id {
    type: string
    sql: CAST(${TABLE}.campaign_id  AS STRING);;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: click_thru_rate {
    type: number
    sql: ${TABLE}.click_thru_rate ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.conversion_rate ;;
  }
  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }
  dimension: cost_per_click_account_currency {
    type: number
    sql: ${TABLE}.cost_per_click_account_currency ;;
  }
  dimension: cost_per_completed_video_account_currency {
    type: number
    sql: ${TABLE}.cost_per_completed_video_account_currency ;;
  }
  dimension: cost_per_conversion_account_currency {
    type: number
    sql: ${TABLE}.cost_per_conversion_account_currency ;;
  }
  dimension: cpm_account_currency {
    type: number
    sql: ${TABLE}.cpm_account_currency ;;
  }
  dimension: creative_id {
    type: string
    sql: CAST(${TABLE}.creative_id AS STRING) ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }
  dimension: creative_size {
    type: string
    sql: ${TABLE}.creative_size ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: date_utc {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_utc ;;
  }
  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }
  dimension: deal_id {
    type: string
    sql: ${TABLE}.deal_id ;;
  }
  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension: environment_type {
    type: string
    sql: ${TABLE}.environment_type ;;
  }
  dimension: imp {
    type: number
    sql: ${TABLE}.imp ;;
  }
  dimension: inventory_source {
    type: string
    sql: ${TABLE}.inventory_source ;;
  }
  dimension: line_item_id {
    type: string
    sql: CAST(${TABLE}.line_item_id AS STRING) ;;
  }
  dimension: line_item_name {
    type: string
    sql: ${TABLE}.line_item_name ;;
  }
  dimension: media_cost_account_currency {
    type: number
    sql: ${TABLE}.media_cost_account_currency ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: platform_browser {
    type: string
    sql: ${TABLE}.platform_browser ;;
  }
  dimension: platform_device_type {
    type: string
    sql: ${TABLE}.platform_device_type ;;
  }
  dimension: platform_fee_account_currency {
    type: number
    sql: ${TABLE}.platform_fee_account_currency ;;
  }
  dimension: platform_fee_rate {
    type: number
    sql: ${TABLE}.platform_fee_rate ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }
  dimension: spend_account_currency {
    type: number
    sql: ${TABLE}.spend_account_currency ;;
  }
  dimension: tag_id {
    type: string
    sql: CAST(${TABLE}.tag_id AS STRING) ;;
  }
  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }
  dimension: video_completes {
    type: number
    sql: ${TABLE}.video_completes ;;
  }
  dimension: video_midpoints {
    type: number
    sql: ${TABLE}.video_midpoints ;;
  }
  dimension: video_plays {
    type: number
    sql: ${TABLE}.video_plays ;;
  }
  dimension: video_q1s {
    type: number
    sql: ${TABLE}.video_q1s ;;
  }
  dimension: video_q3s {
    type: number
    sql: ${TABLE}.video_q3s ;;
  }
  dimension: view_rate {
    type: number
    sql: ${TABLE}.view_rate ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: sum_click_thru_rate {
    group_label: "Measures"
    type: sum
    sql: ${click_thru_rate} ;;
  }
  measure: sum_clicks {
    group_label: "Measures"
    type: sum
    sql: ${clicks} ;;
  }
  measure: sum_conversion_rates {
    group_label: "Measures"
    type: sum
    sql: ${conversion_rate} ;;
  }
  measure: sum_conversions {
    group_label: "Measures"
    type: sum
    sql: ${conversions} ;;
  }
  measure: sum_cost_per_click_account_currency {
    group_label: "Measures"
    type: sum
    sql: ${cost_per_click_account_currency} ;;
  }
  measure: sum_cost_per_completed_video_account_currency {
    group_label: "Measures"
    type: sum
    sql: ${cost_per_completed_video_account_currency} ;;
  }
  measure: sum_cost_per_conversion_account_currency {
    group_label: "Measures"
    type: sum
    sql: ${cost_per_conversion_account_currency} ;;
  }
  measure: sum_cpm_account_currency {
    group_label: "Measures"
    type: sum
    sql: ${cpm_account_currency} ;;
  }
  measure: sum_imp {
    group_label: "Measures"
    type: sum
    sql: ${imp} ;;
  }
  measure: sum_platform_fee_account_currency {
    group_label: "Measures"
    type: sum
    sql: ${platform_fee_account_currency} ;;
  }
  measure: sum_platform_fee_rate {
    group_label: "Measures"
    type: sum
    sql: ${platform_fee_rate} ;;
  }
  measure: sum_spend_account_currency {
    group_label: "Measures"
    type: sum
    sql: ${spend_account_currency} ;;
  }
  measure: sum_video_completes {
    group_label: "Measures"
    type: sum
    sql: ${video_completes} ;;
  }
  measure: sum_video_midpoints {
    group_label: "Measures"
    type: sum
    sql: ${video_midpoints} ;;
  }
  measure: sum_video_plays {
    group_label: "Measures"
    type: sum
    sql: ${video_plays} ;;
  }
  measure: sum_video_q1s {
    group_label: "Measures"
    type: sum
    sql: ${video_q1s} ;;
  }
  measure: sum_view_rate {
    group_label: "Measures"
    type: sum
    sql: ${view_rate} ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  creative_name,
  line_item_name,
  campaign_name,
  account_name,
  app_name,
  advertiser_name
  ]
  }

}
