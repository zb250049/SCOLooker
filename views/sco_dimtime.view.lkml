view: sco_dimtime {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.SCO_DIMTime`
    ;;
label: "Time"
  dimension: hour_key {
    type: number
    sql: ${TABLE}.Hour_Key ;;
  }

  dimension: hour_name {
    type: string
    sql: ${TABLE}.Hour_Name ;;
    drill_fields:[sco_fact_performance.detailPerformance*]
    link: {
      label: "Explore Top 50 Store Lanes performance"
      url: "{{ link }}&limit=50"
    }
  }

  dimension: qtr_hour_key {
    type: number
    sql: ${TABLE}.QtrHour_Key ;;
  }

  dimension: qtr_hour_name {
    type: string
    sql: ${TABLE}.QtrHour_Name ;;
    drill_fields:[sco_fact_performance.detailPerformance*]
    link: {
      label: "Explore Top 50 Store Lanes performance"
      url: "{{ link }}&limit=50"
    }
  }

  measure: count {
    type: count
    drill_fields: [hour_name, qtr_hour_name]
  }
}
