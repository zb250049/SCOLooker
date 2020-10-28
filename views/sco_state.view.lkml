view: sco_state {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.SCO_State`
    ;;

  dimension: state_name {
    type: string
    sql: ${TABLE}.State_Name ;;
  }

  dimension: total_no__of_trans {
    type: number
    sql: ${TABLE}.Total_no__of_Trans ;;
    hidden: yes
  }

  dimension: total_no_of_trans_w__ {
    type: number
    sql: ${TABLE}.Total_No_of_Trans_w__ ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }

  measure: total_no__of_transactoins {
    type: sum
    sql: ${total_no__of_trans} ;;
    value_format_name: decimal_0
    hidden:no

  }

  measure: total_no_of_transaction_w__ {
    type: sum
    sql: ${total_no_of_trans_w__} ;;
    value_format_name: decimal_0
    hidden:no

  }
}
