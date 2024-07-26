view: events {
  sql_table_name: `sources.events` ;;
  drill_fields: [event_id]

  dimension: event_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.event_id ;;
  }
  dimension: added_cart {
    type: string
    sql: ${TABLE}.added_cart ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }
  dimension: campaing {
    type: number
    sql: ${TABLE}.campaing ;;
  }
  dimension: category_id {
    type: number
    sql: ${TABLE}.category_id ;;
  }
  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension: ean {
    type: number
    sql: ${TABLE}.ean ;;
  }
  dimension_group: end_window {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_window ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension_group: impact {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.impact_time ;;
  }
  dimension: impacted {
    type: number
    sql: ${TABLE}.impacted ;;
  }
  dimension: macro_category_id {
    type: number
    sql: ${TABLE}.macro_category_id ;;
  }
  dimension: macro_category_name {
    type: string
    sql: ${TABLE}.macro_category_name ;;
  }
  dimension: order_channel {
    type: string
    sql: ${TABLE}.order_channel ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: product_units {
    type: number
    sql: ${TABLE}.product_units ;;
  }
  dimension: product_views {
    type: string
    sql: ${TABLE}.product_views ;;
  }
  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
  }
  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }
  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.sub_category_id ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }
  dimension: total_price_local {
    type: number
    sql: ${TABLE}.total_price_local ;;
  }
  dimension: total_price_usd {
    type: string
    sql: ${TABLE}.total_price_USD ;;
  }
  dimension: trademark_id {
    type: string
    sql: ${TABLE}.trademark_id ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  dimension: window {
    type: string
    sql: ${TABLE}.`window` ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	event_id,
	category_name,
	macro_category_name,
	product_name,
	trademark_name,
	event_name,
	event_external_temp_beiersdorf.count,
	event_external_temp_bayer.count,
	events_unilever_latest.count
	]
  }

}
