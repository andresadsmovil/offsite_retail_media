view: binicle_managed_service {
  sql_table_name: `sources.binicle_managed_service` ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: agencia {
    type: string
    sql: ${TABLE}.agencia ;;
  }
  dimension: bw {
    hidden: yes
    sql: ${TABLE}.bw ;;
  }
  dimension: campaign_day {
    type: number
    sql: ${TABLE}.campaign_day ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_in_flight_days {
    type: number
    sql: ${TABLE}.Campaign_in_flight_days ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_remaining_days {
    type: number
    sql: ${TABLE}.Campaign_remaining_days ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.CID ;;
  }
  dimension: clicks_yesterday {
    type: number
    sql: ${TABLE}.Clicks_yesterday ;;
  }
  dimension: comision_agencia {
    type: number
    sql: ${TABLE}.Comision_Agencia ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension_group: end_date_campaign {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date_campaign ;;
  }
  dimension: estado_linea {
    type: string
    sql: ${TABLE}.Estado_Linea ;;
  }
  dimension: gross_margin {
    type: number
    sql: ${TABLE}.Gross_margin ;;
  }
  dimension: impressions_yesterday {
    type: number
    sql: ${TABLE}.Impressions_yesterday ;;
  }
  dimension: inventory_cost {
    type: number
    sql: ${TABLE}.inventory_cost ;;
  }
  dimension: net_profit {
    type: number
    sql: ${TABLE}.Net_profit ;;
  }
  dimension: objetivo {
    type: number
    sql: ${TABLE}.objetivo ;;
  }
  dimension: precio_negociado {
    type: number
    sql: ${TABLE}.Precio_negociado ;;
  }
  dimension: product__product_name {
    type: string
    sql: ${TABLE}.Product__Product_Name ;;
  }
  dimension: profit {
    type: number
    sql: ${TABLE}.profit ;;
  }
  dimension: sale_model {
    type: string
    sql: ${TABLE}.Sale_Model ;;
  }
  dimension_group: star_date_campaign {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.star_date_campaign ;;
  }
  dimension: trafficker {
    type: string
    sql: ${TABLE}.trafficker ;;
  }
  dimension: usd_total {
    type: number
    sql: ${TABLE}.USD_Total ;;
  }
  dimension: venta_total {
    type: number
    sql: ${TABLE}.Venta_total ;;
  }
  dimension: video_completes_yesterday {
    type: number
    sql: ${TABLE}.video_completes_yesterday ;;
  }
  dimension: xrate {
    type: number
    sql: ${TABLE}.xrate ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, account_name, product__product_name, advertiser_name]
  }
}

view: binicle_managed_service__bw {

  dimension: binicle_managed_service__bw {
    type: string
    hidden: yes
    sql: binicle_managed_service__bw ;;
  }
  dimension: clicks {
    type: number
    sql: clicks ;;
  }
  dimension: creative_name {
    type: string
    sql: creative_name ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: date ;;
  }
  dimension_group: end_date_line {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: end_date_line ;;
  }
  dimension: impressions {
    type: number
    sql: impressions ;;
  }
  dimension: line_item_budget {
    type: number
    sql: line_item_budget ;;
  }
  dimension: line_item_id {
    type: number
    sql: line_item_id ;;
  }
  dimension: line_item_spend {
    type: number
    sql: line_item_spend ;;
  }
  dimension: size {
    type: string
    sql: size ;;
  }
  dimension: spend_usd {
    type: number
    sql: spend_usd ;;
  }
  dimension_group: star_date_line {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: star_date_line ;;
  }
  dimension: video_completes {
    type: number
    sql: video_completes ;;
  }
}
