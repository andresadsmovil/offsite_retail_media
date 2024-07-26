view: sku_farmatodo {
  sql_table_name: `sources.sku_farmatodo` ;;

  dimension: clase {
    type: string
    sql: ${TABLE}.Clase ;;
  }
  dimension: departamendo {
    type: string
    sql: ${TABLE}.Departamendo ;;
  }
  dimension: descripcion_item {
    type: string
    sql: ${TABLE}.Descripcion_Item ;;
  }
  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }
  dimension: ean {
    type: string
    sql: ${TABLE}.EAN ;;
  }
  dimension: estado_del_articulo {
    type: string
    sql: ${TABLE}.Estado_del_Articulo ;;
  }
  dimension: grupo {
    type: string
    sql: ${TABLE}.Grupo ;;
  }
  dimension: item {
    type: number
    sql: ${TABLE}.Item ;;
  }
  dimension: nit {
    type: string
    sql: ${TABLE}.NIT ;;
  }
  dimension: nombre_proveedor {
    type: string
    sql: ${TABLE}.Nombre_Proveedor ;;
  }
  dimension: nombre_proveedor_padre {
    type: string
    sql: ${TABLE}.Nombre_Proveedor_Padre ;;
  }
  dimension: sub_clase {
    type: string
    sql: ${TABLE}.Sub_Clase ;;
  }
  dimension: tipo_de_despacho {
    type: string
    sql: ${TABLE}.Tipo_de_Despacho ;;
  }
  dimension: unidad_de_negocio {
    type: string
    sql: ${TABLE}.Unidad_de_Negocio ;;
  }
  measure: count {
    type: count
  }
}
