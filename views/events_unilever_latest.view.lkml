view: events_unilever_latest {
  sql_table_name: `sources.events_unilever_latest` ;;

  dimension: added_cart {
    type: number
    sql: ${TABLE}.added_cart ;;
  }
  dimension: advertising_id {
    type: string
    sql: ${TABLE}.advertising_id ;;
  }
  dimension: advertising_ids {
    type: string
    sql: ${TABLE}.advertising_ids ;;
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
  dimension: event_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.event_id ;;
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
  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
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
    type: number
    sql: ${TABLE}.order_id ;;
  }
  dimension: platform_opened {
    type: string
    sql: ${TABLE}.platform_opened ;;
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
    type: number
    sql: ${TABLE}.product_views ;;
  }
  dimension: sales_channel {
    type: string
    sql: ${TABLE}.sales_channel ;;
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
	category_name,
	macro_category_name,
	product_name,
	trademark_name,
	event_name,
	events.category_name,
	events.macro_category_name,
	events.product_name,
	events.trademark_name,
	events.event_id,
	events.event_name
	]
  }

}
