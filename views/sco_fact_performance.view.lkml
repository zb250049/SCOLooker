view: sco_fact_performance {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.SCO_FactPerformance`
    ;;
  label: "Performance"
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

  dimension: failure_Code {
    type: number
    sql: ${TABLE}.failure_Code ;;
  }


  dimension: assistence_Code {
    type: number
    sql: ${TABLE}.assistence_Code ;;
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



  dimension: Itemization_Time_Avg__sec_ {
    type: number
    sql: ${TABLE}.Itemization_Time_Avg__sec_ ;;
  }

  measure: total_Itemization_Time_Avg__sec_ {
    type: average
  sql: ${Itemization_Time_Avg__sec_} ;;
    value_format_name: decimal_1
  }

  dimension: Transaction_Time_Avg_sec_  {
    type: number
    sql: ${TABLE}.Transaction_Time_Avg_sec_  ;;
  }

  measure: total_Transaction_Time_Avg_sec_ {
    type: average
    sql: ${Transaction_Time_Avg_sec_} ;;
    value_format_name: decimal_1
  }


  dimension: Number_of_Transactions  {
    type: number
    sql: ${TABLE}.Number_of_Transaction  ;;
  }

  measure: total_Number_of_Transactions {
    type: sum
    sql: ${Number_of_Transactions} ;;
    value_format_name: decimal_1
  }

  set: detailPerformance {
    fields: [store,lane,date_date,time,processor_type]
    }

  dimension: Memory_Usage  {
    type: number
    sql: ${TABLE}.Memory_Usage  ;;

  }
  measure: AVG_Memory_Usage {
    type: average
    sql: ${Memory_Usage} ;;
    value_format_name: decimal_0
    drill_fields: [store,lane,time,Memory_Usage,cpu_total,Decice_Error_Group_Code,ErrorCode]
  }


  dimension: Decice_Error_Group_Code  {
    type: string
    sql: ${TABLE}.Decice_Error_Group_Code  ;;
  }

  dimension: ErrorCode  {
    type: number
    sql: ${TABLE}.Error_Code  ;;
  }

  dimension: ErrorCount  {
    label: "Error Count"
    type: number
    sql: ${TABLE}.ErrorCount  ;;
  }
  measure: Total_ErrorCount {
    label: "Total Error Count"
    type: sum
    sql: ${ErrorCount} ;;
    value_format_name: decimal_0
  }
  set: detail_Error {
    fields: [store,lane,time,date_date,cpu_mc_afee_avg,cpu_scotapp_avg,cpu_total_avg]
  }
}
