connection: "farmatodo_sources"

# include all the views
include: "/views/**/*.view.lkml"
include: "/**/*.dashboard"


datagroup: all_report_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "12 hours"
}

persist_with: all_report_default_datagroup


explore: bw_campaigns_lines {}

explore: retail_media_offsite_users {
  persist_with: all_report_default_datagroup
}


explore: retail_media_offsite {
  persist_with: all_report_default_datagroup
}
