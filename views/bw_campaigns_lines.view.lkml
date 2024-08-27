view: bw_campaigns_lines {
  sql_table_name: `adsmovil-produccion.Beeswax_Campaign_Details.bw_campaigns_lines` ;;


  dimension: primary_key {
    primary_key: yes
    hidden: yes
    sql: concat(${TABLE}.advertiser_id, '-', ${TABLE}.campaign_id);;
  }

  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: bid_shading {
    type: string
    sql: ${TABLE}.bid_shading ;;
  }
  dimension: bid_shading_win_rate_control {
    type: string
    sql: ${TABLE}.bid_shading_win_rate_control ;;
  }
  dimension: bidding_strategy {
    type: string
    sql: ${TABLE}.bidding_strategy ;;
  }
  dimension: budget_based_on_cost {
    type: number
    sql: ${TABLE}.Budget_Based_On_Cost ;;
  }
  dimension: budget_based_on_sale {
    type: number
    sql: ${TABLE}.Budget_Based_On_Sale ;;
  }
  dimension: campaign_active {
    type: number
    sql: ${TABLE}.campaign_active ;;
  }
  dimension: campaign_bid_modifier {
    type: number
    sql: ${TABLE}.campaign_bid_modifier ;;
  }
  dimension: campaign_budget {
    type: number
    sql: ${TABLE}.campaign_budget ;;
  }
  dimension: campaign_budget_type {
    type: number
    sql: ${TABLE}.campaign_budget_type ;;
  }
  dimension: campaign_currency {
    type: string
    sql: ${TABLE}.campaign_currency ;;
  }
  dimension: campaign_daily_budget {
    type: number
    sql: ${TABLE}.campaign_daily_budget ;;
  }
  dimension: campaign_frec_cap {
    type: string
    sql: ${TABLE}.campaign_frec_cap ;;
  }
  dimension: campaign_id {
    type: number
     sql: CAST(${TABLE}.campaign_id AS STRING) ;;
  }
  dimension: campaign_max_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.campaign_max_bid ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_pacing {
    type: number
    sql: ${TABLE}.campaign_pacing ;;
  }
  dimension: campaign_spend {
    type: number
    sql: ${TABLE}.campaign_spend ;;
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
  dimension: cpm_bid {
    type: string
    sql: ${TABLE}.cpm_bid ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension: custom {
    type: string
    sql: ${TABLE}.custom ;;
  }
  dimension: ecpc_target {
    type: string
    sql: ${TABLE}.ecpc_target ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date ;;
  }
  dimension: imp {
    type: number
    sql: ${TABLE}.imp ;;
  }
  dimension: line_active {
    type: number
    sql: ${TABLE}.line_active ;;
  }
  dimension: line_bid_modifier {
    type: number
    sql: ${TABLE}.line_bid_modifier ;;
  }
  dimension: line_budget_type {
    type: number
    sql: ${TABLE}.line_budget_type ;;
  }
  dimension: line_ctr {
    type: number
    sql: ${TABLE}.line_ctr ;;
  }
  dimension: line_currency {
    type: string
    sql: ${TABLE}.line_currency ;;
  }
  dimension: line_daily_budget {
    type: number
    sql: ${TABLE}.line_daily_budget ;;
  }
  dimension: line_e_cpc {
    type: number
    sql: ${TABLE}.line_eCPC ;;
  }
  dimension: line_e_cpcv {
    type: number
    sql: ${TABLE}.line_eCPCV ;;
  }
  dimension: line_e_cpm {
    type: number
    sql: ${TABLE}.line_eCPM ;;
  }
  dimension: line_frec_cap {
    type: string
    sql: ${TABLE}.line_frec_cap ;;
  }
  dimension: line_item_budget {
    type: number
    sql: ${TABLE}.line_item_budget ;;
  }
  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: line_item_impressions {
    type: number
    sql: ${TABLE}.line_item_impressions ;;
  }
  dimension: line_item_name {
    type: string
    sql: ${TABLE}.line_item_name ;;
  }
  dimension: line_item_spend {
    type: number
    sql: ${TABLE}.line_item_spend ;;
  }
  dimension: line_item_type_id {
    type: number
    sql: ${TABLE}.line_item_type_id ;;
  }
  dimension: line_max_bid {
    type: number
    value_format_name: id
    sql: ${TABLE}.line_max_bid ;;
  }
  dimension: line_pacing {
    type: number
    sql: ${TABLE}.line_pacing ;;
  }
  dimension: line_vcr {
    type: number
    sql: ${TABLE}.line_vcr ;;
  }
  dimension: max_bid {
    type: string
    sql: ${TABLE}.max_bid ;;
  }
  dimension: numero_linea {
    type: string
    sql: ${TABLE}.numero_linea ;;
  }
  dimension: pacing {
    type: string
    sql: ${TABLE}.pacing ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }
  dimension: sales_model {
    type: string
    sql: ${TABLE}.sales_model ;;
  }
  dimension: sales_unit_price {
    type: number
    sql: ${TABLE}.sales_unit_price ;;
  }
  dimension: sf_campaign_id {
    type: string
    sql: ${TABLE}.sf_campaign_id ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
  }
  dimension: target_vcr {
    type: string
    sql: ${TABLE}.target_vcr ;;
  }
  dimension: total_sales {
    type: number
    sql: ${TABLE}.total_sales ;;
  }
  dimension: total_sales_usd {
    type: number
    sql: ${TABLE}.total_sales_USD ;;
  }
  dimension: trafficker {
    type: string
    sql: ${TABLE}.Trafficker ;;
  }
  dimension: usd_sales_unit_price {
    type: number
    sql: ${TABLE}.USD_sales_unit_price ;;
  }
  dimension: video_completes {
    type: number
    sql: ${TABLE}.video_completes ;;
  }
  dimension: xrate {
    type: number
    sql: ${TABLE}.xrate ;;
  }
  measure: count {
    type: count
    drill_fields: [line_item_name, campaign_name]
  }
  measure: max_total_sales {
    group_label: "Measures"
    type: max
    sql: ${total_sales} ;;
    value_format: "#,##0"
  }
}
