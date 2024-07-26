view: funnel_events {
  sql_table_name: `sources.funnel_events` ;;

  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension_group: funnel_event {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.funnel_event_date ;;
  }
  measure: count {
    type: count
    drill_fields: [event_name]
  }
}
