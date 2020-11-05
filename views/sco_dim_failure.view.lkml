view: sco_dim_failure {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.SCO_DimFailure`
    ;;
  label: "Failure"
  dimension: failure_code {
    type: number
    sql: ${TABLE}.Failure_Code ;;
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
