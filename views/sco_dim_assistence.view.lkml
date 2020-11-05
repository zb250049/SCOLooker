view: sco_dim_assistence {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.SCO_DimAssistence`
    ;;
  label: "Assistance"
  dimension: assistence_code {
    type: number
    sql: ${TABLE}.Assistence_Code ;;
  }

  dimension: assitence_desc {
    type: string
    sql: ${TABLE}.Assitence_Desc ;;
    drill_fields:[sco_fact_performance.detailPerformance*]
    link: {
      label: "Explore Top 50 Store Lanes performance"
      url: "{{ link }}&limit=50"
    }

  }

  measure: count {
    type: count
    drill_fields: []
  }
}
