view: sco_error {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.SCO_Error`
    ;;
label: "Errors"
  dimension: decice_error_group_code {
    type: string
    sql: ${TABLE}.Decice_Error_Group_Code ;;
    drill_fields:[sco_fact_performance.detail_Error*]
    link: {
      label: "Explore Top 50 Store Lanes performance"
      url: "{{ link }}&limit=50"
    }
  }

  dimension: error_description {
    type: string
    sql: ${TABLE}.ErrorDescription ;;
    drill_fields:[sco_fact_performance.detail_Error*]
    link: {
      label: "Explore Top 50 Store Lanes performance"
      url: "{{ link }}&limit=50"
    }
  }
  dimension: error_code {
    type: number
    sql: ${TABLE}.Error_Code ;;
    value_format: "0"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
