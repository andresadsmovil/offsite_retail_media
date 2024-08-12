connection: "all_report"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: all_report_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: all_report_default_datagroup


explore: all_report_campaign {}
