view: purchase_events {
  sql_table_name: `sources.purchase_events` ;;

  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: purchase_s {
    hidden: yes
    sql: ${TABLE}.purchase_s ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}

view: purchase_events__purchase_s {

  dimension: order_id_s {
    hidden: yes
    sql: order_id_s ;;
  }
  dimension_group: purchase {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: purchase_date ;;
  }
  dimension: purchase_events__purchase_s {
    type: string
    hidden: yes
    sql: purchase_events__purchase_s ;;
  }
}

view: purchase_events__purchase_s__order_id_s {

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: products_s {
    hidden: yes
    sql: ${TABLE}.products_s ;;
  }
}

view: purchase_events__purchase_s__order_id_s__products_s {

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }
  dimension: ean {
    type: number
    value_format_name: id
    sql: ${TABLE}.ean ;;
  }
  dimension: order_channel {
    type: string
    sql: ${TABLE}.order_channel ;;
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
    value_format_name: id
    sql: ${TABLE}.product_units ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }
  dimension: total_price_local {
    type: number
    value_format_name: id
    sql: ${TABLE}.total_price_local ;;
  }
  dimension: trademark_name {
    type: string
    sql: ${TABLE}.trademark_name ;;
  }
}
