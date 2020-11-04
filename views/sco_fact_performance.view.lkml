view: sco_fact_performance {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.SCO_FactPerformance`
    ;;

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: cpu_bit9_parity {
    type: number
    sql: ${TABLE}.CPU_Bit9_Parity ;;
  }

  measure: cpu_bit9_parity_avg {
    type:average
    sql: ${cpu_bit9_parity} ;;
    value_format_name: decimal_1
  }

  dimension: cpu_mc_afee {
    type: number
    sql: ${TABLE}.CPU_McAfee ;;
  }

  measure: cpu_mc_afee_avg {
    type:average
    sql: ${cpu_mc_afee} ;;
    value_format_name: decimal_1
  }

  dimension: cpu_sccm_adaptiva {
    type: number
    sql: ${TABLE}.CPU_SCCM_Adaptiva ;;
  }

  measure: cpu_sccm_adaptiva_avg {
    type:average
    sql: ${cpu_sccm_adaptiva} ;;
    value_format_name: decimal_1
  }

  dimension: cpu_scotapp {
    type: number
    sql: ${TABLE}.CPU_SCOTApp ;;
  }

  measure: cpu_scotapp_avg {
    type:average
    sql: ${cpu_scotapp} ;;
    value_format_name: decimal_1
  }

  dimension: cpu_sscoui {
    type: number
    sql: ${TABLE}.CPU_SSCOUI ;;
  }

  measure: cpu_sscoui_avg {
    type:average
    sql: ${cpu_sscoui} ;;
    value_format_name: decimal_1
  }

  dimension: cpu_total {
    type: number
    sql: ${TABLE}.CPU_Total ;;
  }

  measure: cpu_total_avg {
    type:average
    sql: ${cpu_total} ;;
    value_format_name: decimal_1
  }


  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: hour_key {
    type: number
    sql: ${TABLE}.HourKey ;;
  }

  dimension: lane {
    type: string
    sql: ${TABLE}.Lane ;;
  }

  dimension: processor_type {
    type: string
    sql: ${TABLE}.Processor_Type ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}.Store ;;
  }

  dimension: time {
   type: string
    sql: ${TABLE}.Time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  set: detailPerformance {
    fields: [store,lane,date_date,time,processor_type]
    }
}
