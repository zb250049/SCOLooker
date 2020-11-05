view: sco_dim_failure {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.SCO_DimFailure`
    ;;
  label: "Failure"
  dimension: failure_code {
    type: number
    sql: ${TABLE}.Failure_Code ;;
    drill_fields:[sco_fact_performance.detailPerformance*]
    link: {
      label: "Explore Top 50 Store Lanes performance"
      url: "{{ link }}&limit=50"
    }
  }

  dimension: failure_description {
    type: string
    sql: ${TABLE}.Failure_Description ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
