view: sco_dimweeks {
  sql_table_name: `SCO_Poc.SCO_DIMWeeks`
    ;;
  label: "Time"

  dimension_group: date_week {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DateWeek ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
