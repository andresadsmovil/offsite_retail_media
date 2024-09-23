connection: "farmatodo_sources"

# include all the views
include: "/views/**/*.view.lkml"
include: "/**/*.dashboard"


datagroup: all_report_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: all_report_default_datagroup


explore: bw_campaigns_lines {}


# explore: retail_media_offsite {}



explore: retail_media_offsite {
  from: retail_media_offsite
  view_label: "Retail Media Offsite"
  join: bw_campaigns_lines {
    view_label: "Saleforce"
    relationship: many_to_one
    sql_on: ${retail_media_offsite.campaign_id} = ${bw_campaigns_lines.campaign_id} ;;
  }
  # Dimensiones y medidas de productos
}

explore: report_retail_media_chiper {}
