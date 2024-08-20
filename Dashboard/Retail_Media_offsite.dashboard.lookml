---
- dashboard: retail_media_offsite
  title: Retail Media Offsite
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: BDD2vO749fdIjfEtG7XdXS
  elements:
  - title: Ads spend
    name: Ads spend
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_investment]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads spend
    defaults_version: 1
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 3
    col: 0
    width: 8
    height: 2
  - title: Attribution sales
    name: Attribution sales
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_total_price_local]
    filters:
      retail_media_offsite.event_name: Product Bought (Verified.v2)
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Attribution sales
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 3
    col: 8
    width: 8
    height: 2
  - title: ROAS
    name: ROAS
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.event_product_bought_total_price_local, retail_media_offsite.sum_investment]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.event_product_bought_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ROAS
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [retail_media_offsite.event_product_bought_total_price_local, retail_media_offsite.sum_investment]
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 3
    col: 16
    width: 7
    height: 2
  - title: Metrics over time
    name: Metrics over time
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_line
    fields: [retail_media_offsite.sum_investment, retail_media_offsite.sum_unique_user,
      retail_media_offsite.event_product_bought_total_price_local, retail_media_offsite.date_purchase_date]
    fill_fields: [retail_media_offsite.date_purchase_date]
    filters: {}
    sorts: [retail_media_offsite.date_purchase_date desc]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: retail_media_offsite.sum_investment,
            id: retail_media_offsite.sum_investment, name: Ads Spend}, {axisId: retail_media_offsite.event_product_bought_total_price_local,
            id: retail_media_offsite.event_product_bought_total_price_local, name: Attribution
              Sales}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: retail_media_offsite.sum_unique_user, id: retail_media_offsite.sum_unique_user,
            name: Unique User}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      retail_media_offsite.sum_investment: Ads Spend
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
      retail_media_offsite.event_product_bought_total_price_local: Attribution Sales
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 7
    col: 0
    width: 24
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2
       <p style="text-align:center">
      <font size=6 color="#1F2653"><b> Investment, attribution and users by date
       </b><br></font>
    row: 5
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2
       <p style="text-align:left">
      <font size=6 color="#1F2653"><b>Purchase funnel
       </b><br></font>
    row: 13
    col: 0
    width: 24
    height: 2
  - title: Unique Users
    name: Unique Users
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_unique_user]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Unique Users
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 17
    col: 3
    width: 3
    height: 2
  - title: clicks
    name: clicks
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_clicks]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Clicks
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 17
    col: 6
    width: 3
    height: 2
  - title: Impressions
    name: Impressions
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_impressions]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Impressions
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 17
    col: 0
    width: 3
    height: 2
  - title: Product Viewed
    name: Product Viewed
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.event_Product_Viewed, retail_media_offsite.event_product_bought,
      retail_media_offsite.event_Product_Added]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought}+${retail_media_offsite.event_Product_Viewed}"
      label: Product Viewed
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: product_viewed
      _type_hint: number
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Product Viewed
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [retail_media_offsite.event_Product_Viewed, retail_media_offsite.event_product_bought,
      retail_media_offsite.event_Product_Added]
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 17
    col: 10
    width: 4
    height: 2
  - title: Product Added
    name: Product Added
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.event_product_bought, retail_media_offsite.event_Product_Added]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought}"
      label: Product Added
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: product_added
      _type_hint: number
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Product Added
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [retail_media_offsite.event_product_bought, retail_media_offsite.event_Product_Added]
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 17
    col: 14
    width: 4
    height: 2
  - title: Product Bought
    name: Product Bought
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.event_product_bought]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought}+${retail_media_offsite.event_Product_Viewed}"
      label: Product Viewed
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: product_viewed
      _type_hint: number
      is_disabled: true
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Product Bought
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 17
    col: 19
    width: 4
    height: 2
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 60
    col: 0
    width: 24
    height: 1
  - title: Creative
    name: Creative
    model: all_retail_media
    explore: retail_media_offsite
    type: table
    fields: [retail_media_offsite.creative_id, retail_media_offsite.image_url, retail_media_offsite.size,
      retail_media_offsite.sum_investment, retail_media_offsite.event_product_bought_total_price_local,
      retail_media_offsite.sum_unique_user, retail_media_offsite.sum_impressions,
      retail_media_offsite.sum_clicks]
    sorts: [retail_media_offsite.sum_investment desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.event_product_bought_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - category: table_calculation
      expression: "${retail_media_offsite.sum_clicks}/${retail_media_offsite.sum_impressions}"
      label: CTR
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ctr
      _type_hint: number
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sales
      retail_media_offsite.sum_unique_user: Unique Users
      retail_media_offsite.sum_impressions: Impressions
      retail_media_offsite.sum_clicks: Clicks
      retail_media_offsite.event_product_bought_total_price_local: Attribution Sales
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: retail_media_offsite.sum_investment,
            id: retail_media_offsite.sum_investment, name: Sum Investment}, {axisId: retail_media_offsite.sum_total_price_local,
            id: retail_media_offsite.sum_total_price_local, name: Sum Total Price
              Local}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: retail_media_offsite.sum_unique_user, id: retail_media_offsite.sum_unique_user,
            name: Sum Unique User}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Ads sales
    defaults_version: 1
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    title_hidden: true
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 50
    col: 0
    width: 24
    height: 10
  - name: " "
    type: text
    title_text: " "
    subtitle_text: ''
    body_text: |2
       <p style="text-align:left">
      <font size=6 color="#1F2653"><b>Creative
       </b><br></font>
    row: 48
    col: 0
    width: 24
    height: 2
  - title: Ads Spend Over time by Creatived
    name: Ads Spend Over time by Creatived
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_line
    fields: [retail_media_offsite.creative_id, retail_media_offsite.sum_investment,
      retail_media_offsite.date_impression_date]
    pivots: [retail_media_offsite.creative_id]
    fill_fields: [retail_media_offsite.date_impression_date]
    sorts: [retail_media_offsite.creative_id, retail_media_offsite.date_impression_date
        desc]
    limit: 500
    column_limit: 20
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: retail_media_offsite.sum_investment,
            id: retail_media_offsite.sum_investment, name: Sum Investment}, {axisId: retail_media_offsite.sum_total_price_local,
            id: retail_media_offsite.sum_total_price_local, name: Sum Total Price
              Local}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: retail_media_offsite.sum_unique_user, id: retail_media_offsite.sum_unique_user,
            name: Sum Unique User}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 61
    col: 0
    width: 12
    height: 7
  - title: Attribution Sales Over time by Creatived
    name: Attribution Sales Over time by Creatived
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_line
    fields: [retail_media_offsite.sum_total_price_local, retail_media_offsite.creative_id,
      retail_media_offsite.date_impression_date]
    pivots: [retail_media_offsite.creative_id]
    fill_fields: [retail_media_offsite.date_impression_date]
    sorts: [retail_media_offsite.creative_id, retail_media_offsite.date_impression_date
        desc]
    limit: 500
    column_limit: 20
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: retail_media_offsite.sum_investment,
            id: retail_media_offsite.sum_investment, name: Sum Investment}, {axisId: retail_media_offsite.sum_total_price_local,
            id: retail_media_offsite.sum_total_price_local, name: Sum Total Price
              Local}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: retail_media_offsite.sum_unique_user, id: retail_media_offsite.sum_unique_user,
            name: Sum Unique User}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 61
    col: 12
    width: 12
    height: 7
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 21
    col: 0
    width: 24
    height: 1
  - title: Category
    name: Category
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_bar
    fields: [retail_media_offsite.event_product_bought_total_price_local, retail_media_offsite.category_name]
    sorts: [retail_media_offsite.event_product_bought_total_price_local desc 0]
    limit: 10
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: asc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: retail_media_offsite.event_product_bought_total_price_local,
            id: retail_media_offsite.event_product_bought_total_price_local, name: Attribution
              Sales}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_colors:
      retail_media_offsite.event_Product_Added: "#A8A116"
      retail_media_offsite.event_product_bought: "#EA4335"
      retail_media_offsite.event_Product_Viewed: "#9334E6"
      retail_media_offsite.event_product_bought_total_price_local: "#12B5CB"
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
      retail_media_offsite.event_Product_Added: Product Added
      retail_media_offsite.event_product_bought: Product Bought
      retail_media_offsite.event_Product_Viewed: Product Viewed
      retail_media_offsite.event_product_bought_total_price_local: Attribution Sales
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 39
    col: 8
    width: 7
    height: 9
  - title: Metrics over time Sales
    name: Metrics over time Sales
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_line
    fields: [retail_media_offsite.event_Product_Added, retail_media_offsite.event_product_bought,
      retail_media_offsite.event_Product_Viewed, retail_media_offsite.date_impression_date]
    fill_fields: [retail_media_offsite.date_impression_date]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: retail_media_offsite.event_Product_Added,
            id: retail_media_offsite.event_Product_Added, name: Product Added}, {
            axisId: retail_media_offsite.event_product_bought, id: retail_media_offsite.event_product_bought,
            name: Product Bought}, {axisId: retail_media_offsite.event_Product_Viewed,
            id: retail_media_offsite.event_Product_Viewed, name: Product Viewed}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_colors:
      retail_media_offsite.event_Product_Added: "#A8A116"
      retail_media_offsite.event_product_bought: "#EA4335"
      retail_media_offsite.event_Product_Viewed: "#9334E6"
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
      retail_media_offsite.event_Product_Added: Product Added
      retail_media_offsite.event_product_bought: Product Bought
      retail_media_offsite.event_Product_Viewed: Product Viewed
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 22
    col: 0
    width: 24
    height: 7
  - title: Products
    name: Products
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_bar
    fields: [retail_media_offsite.event_product_bought_total_price_local, retail_media_offsite.product_name]
    sorts: [retail_media_offsite.event_product_bought_total_price_local desc 0]
    limit: 10
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: asc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: true
    totals_color: "#193480"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: retail_media_offsite.event_product_bought_total_price_local,
            id: retail_media_offsite.event_product_bought_total_price_local, name: Attribution
              Sales}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    label_value_format: ''
    series_colors:
      retail_media_offsite.event_Product_Added: "#A8A116"
      retail_media_offsite.event_product_bought: "#EA4335"
      retail_media_offsite.event_Product_Viewed: "#9334E6"
      retail_media_offsite.event_product_bought_total_price_local: "#12B5CB"
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
      retail_media_offsite.event_Product_Added: Product Added
      retail_media_offsite.event_product_bought: Product Bought
      retail_media_offsite.event_Product_Viewed: Product Viewed
      retail_media_offsite.event_product_bought_total_price_local: Attribution Sales
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 39
    col: 15
    width: 9
    height: 9
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2
       <p style="text-align:left">
      <font size=6 color="#1F2653"><b>Participation in sales
       </b><br></font>
    row: 37
    col: 0
    width: 24
    height: 2
  - title: General
    name: General
    model: all_retail_media
    explore: retail_media_offsite
    type: table
    fields: [retail_media_offsite.trademark_name, retail_media_offsite.category_name,
      retail_media_offsite.ean, retail_media_offsite.product_name, retail_media_offsite.creative_id,
      retail_media_offsite.size, retail_media_offsite.sum_unique_user, retail_media_offsite.sum_investment,
      retail_media_offsite.event_product_bought_total_price_local]
    sorts: [retail_media_offsite.event_product_bought_total_price_local desc]
    limit: 500
    column_limit: 50
    total: true
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sales
      retail_media_offsite.sum_unique_user: Unique Users
      retail_media_offsite.sum_impressions: Impressions
      retail_media_offsite.sum_clicks: Clicks
      retail_media_offsite.event_product_bought_total_price_local: Attribution Sales
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: retail_media_offsite.sum_investment,
            id: retail_media_offsite.sum_investment, name: Sum Investment}, {axisId: retail_media_offsite.sum_total_price_local,
            id: retail_media_offsite.sum_total_price_local, name: Sum Total Price
              Local}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: retail_media_offsite.sum_unique_user, id: retail_media_offsite.sum_unique_user,
            name: Sum Unique User}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Ads sales
    defaults_version: 1
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    title_hidden: true
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 70
    col: 0
    width: 24
    height: 9
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2
       <p style="text-align:left">
      <font size=6 color="#1F2653"><b>General
       </b><br></font>
    row: 68
    col: 0
    width: 24
    height: 2
  - title: CPAC
    name: CPAC
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_investment, retail_media_offsite.event_product_bought,
      retail_media_offsite.event_Product_Added]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought}+${retail_media_offsite.event_Product_Viewed}"
      label: Product Viewed
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: product_viewed
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.sum_investment}/(${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought})"
      label: CPAC
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: cpac
      _type_hint: number
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CPAC
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [retail_media_offsite.sum_investment, retail_media_offsite.event_product_bought,
      retail_media_offsite.event_Product_Added]
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 19
    col: 14
    width: 4
    height: 2
  - title: CPPV
    name: CPPV
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_investment, retail_media_offsite.event_Product_Viewed,
      retail_media_offsite.event_product_bought, retail_media_offsite.event_Product_Added]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought}+${retail_media_offsite.event_Product_Viewed}"
      label: Product Viewed
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: product_viewed
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.sum_investment}/(${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought}+${retail_media_offsite.event_Product_Viewed})"
      label: CPPV
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: cppv
      _type_hint: number
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CPPV
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [retail_media_offsite.sum_investment, retail_media_offsite.event_Product_Viewed,
      retail_media_offsite.event_product_bought, retail_media_offsite.event_Product_Added]
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 19
    col: 10
    width: 4
    height: 2
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 29
    col: 0
    width: 24
    height: 1
  - title: Indicators by day of the week
    name: Indicators by day of the week
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_line
    fields: [retail_media_offsite.event_Product_Added, retail_media_offsite.event_product_bought,
      retail_media_offsite.event_Product_Viewed, retail_media_offsite.day_name]
    sorts: [retail_media_offsite.event_Product_Added desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: retail_media_offsite.event_Product_Added,
            id: retail_media_offsite.event_Product_Added, name: Product Added}, {
            axisId: retail_media_offsite.event_product_bought, id: retail_media_offsite.event_product_bought,
            name: Product Bought}, {axisId: retail_media_offsite.event_Product_Viewed,
            id: retail_media_offsite.event_Product_Viewed, name: Product Viewed}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_colors:
      retail_media_offsite.event_Product_Added: "#A8A116"
      retail_media_offsite.event_product_bought: "#EA4335"
      retail_media_offsite.event_Product_Viewed: "#9334E6"
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
      retail_media_offsite.event_Product_Added: Product Added
      retail_media_offsite.event_product_bought: Product Bought
      retail_media_offsite.event_Product_Viewed: Product Viewed
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 30
    col: 12
    width: 12
    height: 7
  - title: Indicators by time of day
    name: Indicators by time of day
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_line
    fields: [retail_media_offsite.event_Product_Added, retail_media_offsite.event_product_bought,
      retail_media_offsite.event_Product_Viewed, retail_media_offsite.hour]
    sorts: [retail_media_offsite.event_Product_Added desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: retail_media_offsite.event_Product_Added,
            id: retail_media_offsite.event_Product_Added, name: Product Added}, {
            axisId: retail_media_offsite.event_product_bought, id: retail_media_offsite.event_product_bought,
            name: Product Bought}, {axisId: retail_media_offsite.event_Product_Viewed,
            id: retail_media_offsite.event_Product_Viewed, name: Product Viewed}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: ''
    series_colors:
      retail_media_offsite.event_Product_Added: "#A8A116"
      retail_media_offsite.event_product_bought: "#EA4335"
      retail_media_offsite.event_Product_Viewed: "#9334E6"
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
      retail_media_offsite.event_Product_Added: Product Added
      retail_media_offsite.event_product_bought: Product Bought
      retail_media_offsite.event_Product_Viewed: Product Viewed
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 30
    col: 0
    width: 11
    height: 7
  - title: Trademark name
    name: Trademark name
    model: all_retail_media
    explore: retail_media_offsite
    type: looker_bar
    fields: [retail_media_offsite.event_product_bought_total_price_local, retail_media_offsite.trademark_name]
    sorts: [retail_media_offsite.event_product_bought_total_price_local desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: asc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: true
    totals_color: "#193480"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: retail_media_offsite.event_product_bought_total_price_local,
            id: retail_media_offsite.event_product_bought_total_price_local, name: Attribution
              Sales}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    label_value_format: ''
    series_colors:
      retail_media_offsite.event_Product_Added: "#A8A116"
      retail_media_offsite.event_product_bought: "#EA4335"
      retail_media_offsite.event_Product_Viewed: "#9334E6"
      retail_media_offsite.event_product_bought_total_price_local: "#12B5CB"
    series_labels:
      retail_media_offsite.sum_investment: Ads Sales
      retail_media_offsite.sum_total_price_local: Attribution Sale
      retail_media_offsite.sum_unique_user: Unique User
      retail_media_offsite.event_Product_Added: Product Added
      retail_media_offsite.event_product_bought: Product Bought
      retail_media_offsite.event_Product_Viewed: Product Viewed
      retail_media_offsite.event_product_bought_total_price_local: Attribution Sales
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Ads sales
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 39
    col: 0
    width: 8
    height: 9
  - title: CPUI
    name: CPUI
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_investment, retail_media_offsite.sum_unique_user]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought}+${retail_media_offsite.event_Product_Viewed}"
      label: Product Viewed
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: product_viewed
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.sum_investment}/${retail_media_offsite.sum_unique_user}"
      label: CPUI
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: cpui
      _type_hint: number
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CPUI
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [retail_media_offsite.sum_investment, retail_media_offsite.sum_unique_user]
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 19
    col: 3
    width: 3
    height: 2
  - title: CPUV
    name: CPUV
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.sum_investment, retail_media_offsite.event_product_bought]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${retail_media_offsite.sum_total_price_local}/${retail_media_offsite.sum_investment}"
      label: ROAS
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.event_Product_Added}+${retail_media_offsite.event_product_bought}+${retail_media_offsite.event_Product_Viewed}"
      label: Product Viewed
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: product_viewed
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${retail_media_offsite.sum_investment}/${retail_media_offsite.event_product_bought}"
      label: CPUV
      value_format:
      value_format_name: decimal_2
      _kind_hint: measure
      table_calculation: cpuv
      _type_hint: number
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CPUV
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [retail_media_offsite.sum_investment, retail_media_offsite.event_product_bought]
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 19
    col: 19
    width: 4
    height: 2
  - name: " (8)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2
       <p style="text-align:center">
      <font  size=6 color="#1F2653"><b>Lower funnel
       </b><br> </font>
    row: 15
    col: 19
    width: 4
    height: 2
  - name: " (9)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2
       <p style="text-align:center">
      <font size=6 color="#1F2653"><b>Upper funnel
       </b><br></font>
    row: 15
    col: 0
    width: 9
    height: 2
  - name: " (10)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |2
       <p style="text-align:center">
      <font size=6 color="#1F2653"><b>Middle funnel
       </b><br></font>
    row: 15
    col: 10
    width: 8
    height: 2
  - title: Ads spend (Copy)
    name: Ads spend (Copy)
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.campaign_name]
    sorts: [retail_media_offsite.campaign_name]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Campaign Name
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 0
    col: 0
    width: 13
    height: 2
  - name: " (11)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 1
  - title: Ads spend (Copy 2)
    name: Ads spend (Copy 2)
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.trademark_name]
    filters: {}
    sorts: [retail_media_offsite.trademark_name]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Trademark Name
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 0
    col: 13
    width: 5
    height: 2
  - title: Win Att
    name: Win Att
    model: all_retail_media
    explore: retail_media_offsite
    type: single_value
    fields: [retail_media_offsite.win_att]
    filters: {}
    limit: 500
    column_limit: 50
    query_timezone: UTC
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Win Att
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Product Name: retail_media_offsite.product_name
      Sales Channel: retail_media_offsite.sales_channel
      Date Impression Date: retail_media_offsite.date_impression_date
      Cid: retail_media_offsite.cid
      Advertiser Name: retail_media_offsite.advertiser_name
      Trademark Name: retail_media_offsite.trademark_name
      Campaign ID: retail_media_offsite.campaign_id
      Retailer: retail_media_offsite.account_name
      Advertiser Internal ID: retail_media_offsite.advertiser_internal_id
      Win Att: retail_media_offsite.win_att
    row: 0
    col: 18
    width: 5
    height: 2
  filters:
  - name: Retailer
    title: Retailer
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: [Advertiser Name, Advertiser Internal ID, Trademark Name,
      Campaign ID, Cid, Product Name, Date Impression Date, Win Att]
    field: retail_media_offsite.account_name
  - name: Advertiser Name
    title: Advertiser Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: [Retailer, Advertiser Internal ID, Trademark Name, Campaign
        ID, Cid, Product Name, Date Impression Date, Win Att]
    field: retail_media_offsite.advertiser_name
  - name: Advertiser Internal ID
    title: Advertiser Internal ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: [Advertiser Name, Retailer, Trademark Name, Campaign ID, Cid,
      Product Name, Date Impression Date, Win Att]
    field: retail_media_offsite.advertiser_internal_id
  - name: Trademark Name
    title: Trademark Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: [Advertiser Name, Retailer, Advertiser Internal ID, Campaign
        ID, Cid, Product Name, Date Impression Date, Win Att]
    field: retail_media_offsite.trademark_name
  - name: Campaign ID
    title: Campaign ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: [Advertiser Name, Retailer, Advertiser Internal ID, Trademark
        Name, Cid, Product Name, Date Impression Date, Win Att]
    field: retail_media_offsite.campaign_id
  - name: Cid
    title: Cid
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: [Advertiser Name, Retailer, Advertiser Internal ID, Trademark
        Name, Campaign ID, Product Name, Date Impression Date, Win Att]
    field: retail_media_offsite.cid
  - name: Product Name
    title: Product Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: [Advertiser Name, Retailer, Advertiser Internal ID, Trademark
        Name, Campaign ID, Cid, Date Impression Date, Win Att]
    field: retail_media_offsite.product_name
  - name: Sales Channel
    title: Sales Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: [Advertiser Name, Retailer, Advertiser Internal ID, Trademark
        Name, Campaign ID, Cid, Product Name, Date Impression Date, Win Att]
    field: retail_media_offsite.sales_channel
  - name: Date Impression Date
    title: Date Impression Date
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: []
    field: retail_media_offsite.date_impression_date
  - name: Win Att
    title: Win Att
    type: field_filter
    default_value: 15 days
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
    model: all_retail_media
    explore: retail_media_offsite
    listens_to_filters: []
    field: retail_media_offsite.win_att
