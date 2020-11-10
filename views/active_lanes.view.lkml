view: active_lanes {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.Active Lanes`
    ;;

  dimension: sco_stg_monitoring_dateweeklanecount_1 {
    type: string
    sql: ${TABLE}.sco_stg_monitoring_dateweeklanecount_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
