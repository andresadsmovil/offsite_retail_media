view: farmatodo_external {
  sql_table_name: `sources.farmatodo_external` ;;

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }
  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }
  dimension: string_field_2 {
    type: string
    sql: ${TABLE}.string_field_2 ;;
  }
  dimension: string_field_3 {
    type: string
    sql: ${TABLE}.string_field_3 ;;
  }
  measure: count {
    type: count
  }
}
