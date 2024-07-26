view: onsite_reports {
  sql_table_name: `adsmovil-farmatodo.sources.onsite_reports` ;;

  parameter: selected_metric {
    type: unquoted
    allowed_value: {
      label: "impressions"
      value: "sum_impressions_total"
    }
    allowed_value: {
      label: "roas"
      value: "sum_roas"
    }
    allowed_value: {
      label: "ventas"
      value: "sum_purchases_amount"
    }
    allowed_value: {
      label: "clics"
      value: "sum_click"
    }
    allowed_value: {
      label: "gastos"
      value: "sum_ads_spend"
    }
  }

  parameter: selected_metric_2 {
    type: unquoted
    allowed_value: {
      label: "impressions"
      value: "sum_impressions_total"
    }
    allowed_value: {
      label: "roas"
      value: "sum_roas"
    }
    allowed_value: {
      label: "ventas"
      value: "sum_purchases_amount"
    }
    allowed_value: {
      label: "clics"
      value: "sum_click"
    }
    allowed_value: {
      label: "gastos"
      value: "sum_ads_spend"
    }
  }

  dimension: ads_spend {
    type: number
    sql: ${TABLE}.adSpend ;;
  }
  dimension: CID {
    type: string
    sql: ${TABLE}.CID ;;
  }
  dimension: advertiser_internal_id {
    type: string
    sql: ${TABLE}.advertiser_internal_id ;;
  }
  dimension: adsspend_estimation {
    type: number
    sql: ${TABLE}.adsspend_estimation ;;
  }
  dimension: adsspend_today {
    type: number
    sql: ${TABLE}.adsspend_today ;;
  }
  dimension: budget_amount {
    type: number
    sql: ${TABLE}.budgetAmount ;;
  }
  dimension: retailer {
    type: string
    sql: ${TABLE}.retailer ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaignName ;;
    ##   html: <H4 style= <div style="background: #1F2653; font-size: 20px; text-align: center;">{{value}}</H4>;;
  }
  dimension: charge_type {
    type: string
    sql: ${TABLE}.chargeType ;;
  }
  dimension: clicks_charged {
    type: number
    sql: ${TABLE}.clicksCharged ;;
  }
  dimension: cpc {
    type: number
    sql: ${TABLE}.CPC ;;
  }
  dimension: ctr {
    type: number
    sql: ${TABLE}.CTR ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }
  dimension: diff_date {
    type: number
    sql: ${TABLE}.diff_date ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.endDate ;;
    ##  html: <H3 style=" front-size: 20px; text-align: center;">{{value}}</H3>;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.imageURL;;
    html: "<img src='{{ value }}' width='50' height='50'>";;
  }
  dimension: impressions_total {
    type: number
    sql: ${TABLE}.impressionsTotal ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }
  dimension: purchases_amount {
    type: number
    sql: ${TABLE}.purchasesAmount ;;
  }
  dimension: purchases_quantity {
    type: number
    sql: ${TABLE}.purchasesQuantity ;;
  }
  dimension: roas {
    type: number
    sql: ${TABLE}.ROAS ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startDate ;;
    ##  html: <H3 style=" front-size: 20px; text-align: center;">{{value}}</H3>;;
  }
  dimension: target_roas {
    type: number
    sql: ${TABLE}.targetRoas ;;
  }
  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendorId ;;
  }



  measure: sum_ads_spend {
    group_label: "Measures"
    type: sum
    sql: ${ads_spend} ;;
    value_format: "$#,##0"
  }
  measure: max_budget_amount {
    group_label: "Measures"
    type: sum
    sql: ${budget_amount} ;;
    value_format: "$#,##0"
  }
  measure: sum_impressions_total {
    group_label: "Measures"
    type: sum
    sql: ${impressions_total} ;;
  }
  measure: sum_purchases_amount {
    group_label: "Measures"
    type: sum
    sql: ${purchases_amount} ;;
    value_format: "$#,##0"
  }
  measure: sum_purchases_quantity {
    group_label: "Measures"
    type: sum
    sql: ${purchases_quantity} ;;
  }
  measure: sum_roas {
    group_label: "Measures"
    type: sum
    sql: ${roas} ;;
  }
  measure: sum_click {
    group_label: "Measures"
    type: sum
    sql: ${clicks_charged} ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, campaign_name]
  }

  measure: dynamic_metric {
    type: number
    sql: {% if selected_metric._parameter_value == 'sum_impressions_total' %}
          ${sum_impressions_total}
        {% elsif selected_metric._parameter_value == 'sum_roas' %}
          ${sum_roas}
        {% elsif selected_metric._parameter_value == 'sum_click' %}
          ${sum_click}
        {% elsif selected_metric._parameter_value == 'sum_purchases_amount' %}
          ${sum_purchases_amount}
        {% elsif selected_metric._parameter_value == 'sum_ads_spend' %}
          ${sum_ads_spend}
          {% endif %};;
    label_from_parameter: selected_metric
  }

  measure: dynamic_metric_2 {
    type: number
    sql: {% if selected_metric_2._parameter_value == 'sum_impressions_total' %}
          ${sum_impressions_total}
        {% elsif selected_metric_2._parameter_value == 'sum_roas' %}
          ${sum_roas}
        {% elsif selected_metric_2._parameter_value == 'sum_click' %}
          ${sum_click}
        {% elsif selected_metric_2._parameter_value == 'sum_purchases_amount' %}
          ${sum_purchases_amount}
        {% elsif selected_metric_2._parameter_value == 'sum_ads_spend' %}
          ${sum_ads_spend}
          {% endif %};;
    label_from_parameter: selected_metric_2
  }
}
