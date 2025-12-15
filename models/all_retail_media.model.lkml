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

explore: retail_media_offsite_users {}


explore: retail_media_offsite {}




# En el archivo de modelo (por ejemplo, 'retail_media.model')


# 1. Definición del Datagroup
# Si la tabla de datos subyacente se actualiza diariamente (por la noche):
datagroup: retail_media_daily_update {
  # Expira la caché después de 12 horas si el trigger falla.
  max_cache_age: "12 hours"

  # El trigger SQL: consulta la hora de la última actualización de la tabla.
  # El sistema de persistencia de Looker ejecuta esta consulta periódicamente
  # y si el valor devuelto cambia, anula la caché.
  sql_trigger: SELECT MAX(DATE(date_create_raw)) FROM reports_generated.retail_media_offsite ;;
}

# Puedes definir otro Datagroup para datos más estáticos o menos sensibles al tiempo.
datagroup: retail_media_weekly_update {
  max_cache_age: "7 days"
  # O simplemente un tiempo de expiración si no hay un trigger claro:
  sql_trigger: SELECT TRUNC(NOW(), WEEK) ;;
}
