view: sco_stg_monitoring {
  sql_table_name: `SCO_Poc.SCO_STG_Monitoring`
    ;;
  label: "Monitoring"
  dimension: abnormal_restart_count {
    type: number
    sql: ${TABLE}.Abnormal_Restart_Count ;;
  }

  dimension: abnormal_restarts_per_1000_transactions {
    type: number
    sql: ${TABLE}.Abnormal_Restarts_per_1000_Transactions ;;
  }

  dimension: adk_version {
    type: string
    sql: ${TABLE}.ADK_Version ;;
  }

  dimension: avg_abnormal_restarts______lane___week_ {
    type: number
    sql: ${TABLE}.Avg_Abnormal_Restarts______lane___week_ ;;
  }

  dimension: avg_normal___abnormal_restarts______lane___week_ {
    type: number
    sql: ${TABLE}.Avg_Normal___Abnormal_Restarts______lane___week_ ;;
  }

  dimension: avg_normal_closed______lane___week_ {
    type: number
    sql: ${TABLE}.Avg_Normal_Closed______lane___week_ ;;
  }

  dimension: avg_normal_restarts______lane___week_ {
    type: number
    sql: ${TABLE}.Avg_Normal_Restarts______lane___week_ ;;
  }

  dimension: complete_transaction_count {
    type: number
    hidden: yes
    sql: ${TABLE}.Complete_Transaction_Count ;;
  }

  measure: total_complete_transaction_count {
    type: sum
    sql: ${complete_transaction_count} ;;
    value_format_name: decimal_0
    hidden:no
    drill_fields: [detail*]
    link: {
      label: "Explore Top 15 Results"
      url: "{{ link }}&limit=15"
    }
  }
  set: detail {
    fields: [store___lane,total_complete_transaction_count]
  }
  dimension: complete_transactions______lane___day_ {
    type: number
    sql: ${TABLE}.Complete_Transactions______lane___day_ ;;
  }

  dimension: configuration {
    type: string
    sql: ${TABLE}.CONFIGURATION ;;
  }

  dimension: count_of_transaction_with_mobile_replay {
    type: number
    sql: ${TABLE}.Count_of_Transaction_with_Mobile_Replay ;;
  }

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

  dimension: days_of_service_avg {
    type: number
    sql: ${TABLE}.Days_of_Service_Avg ;;
  }

  dimension: failed_transactions_per_1000_complete_transactions {
    type: number
    sql: ${TABLE}.Failed_Transactions_per_1000_Complete_Transactions ;;
  }

  dimension: first_security___unexpected_decrease_avg____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.First_Security___Unexpected_decrease_Avg____normalized_to_items_scanned_ ;;
  }

  dimension: first_security___unexpected_decrease_sd____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.First_Security___Unexpected_decrease_SD____normalized_to_items_scanned_ ;;
  }

  dimension: first_security___unexpected_increase_avg____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.First_Security___Unexpected_Increase_Avg____normalized_to_items_scanned_ ;;
  }

  dimension: first_security___unexpected_increase_sd____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.First_Security___Unexpected_Increase_SD____normalized_to_items_scanned_ ;;
  }

  dimension: first_security___weight_mismatch__avg____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.First_Security___Weight_mismatch__Avg____normalized_to_items_scanned_ ;;
  }

  dimension: first_security___weight_mismatch_sd____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.First_Security___Weight_mismatch_SD____normalized_to_items_scanned_ ;;
  }

  dimension: first_security_event_when_item_is_scanned____normalized_to_items_scanned_ {
    type: string
    sql: ${TABLE}.First_Security_Event_when_Item_is_Scanned____normalized_to_items_scanned_ ;;
  }

  dimension: itemization_time_avg__sec_ {
    type: number
    sql: ${TABLE}.Itemization_Time_Avg__sec_ ;;
  }

  dimension: itemization_time_per_item__sec_ {
    type: number
    sql: ${TABLE}.Itemization_Time_per_item__sec_ ;;
  }

  dimension: itemization_time_sd_sec_ {
    type: number
    sql: ${TABLE}.Itemization_Time_SD_sec_ ;;
  }

  dimension: lane_closed_count {
    type: number
    sql: ${TABLE}.Lane_Closed_Count ;;
  }

  dimension: missing_days {
    type: string
    sql: ${TABLE}.Missing_Days ;;
  }

  dimension: mobile_replay_failed_transactions_count {
    type: number
    sql: ${TABLE}.Mobile_Replay_Failed_Transactions_Count ;;
  }

  dimension: mobile_replay_itemization_time_avg__sec_ {
    type: string
    sql: ${TABLE}.Mobile_Replay_Itemization_Time_Avg__sec_ ;;
  }

  dimension: mobile_replay_itemization_time_per_item__sec_ {
    type: string
    sql: ${TABLE}.Mobile_Replay_Itemization_Time_per_item__sec_ ;;
  }

  dimension: mobile_replay_itemization_time_sd_sec_ {
    type: number
    sql: ${TABLE}.Mobile_Replay_Itemization_Time_SD_sec_ ;;
  }

  dimension: mobile_replay_transaction_size_avg__number_of_replay_items_ {
    type: number
    sql: ${TABLE}.Mobile_Replay_Transaction_Size_Avg__Number_of_replay_items_ ;;
  }

  dimension: mobile_replay_transaction_size_sd__number_of_replay_items_ {
    type: number
    sql: ${TABLE}.Mobile_Replay_Transaction_Size_SD__Number_of_replay_items_ ;;
  }

  dimension: mobile_replay_transaction_with_non_security_assist_event_avg____ {
    type: string
    sql: ${TABLE}.Mobile_Replay_Transaction_with_non_security_assist_event_Avg____ ;;
  }

  dimension: mobile_replay_transaction_with_non_security_assist_event_sd____ {
    type: number
    sql: ${TABLE}.Mobile_Replay_Transaction_with_non_security_assist_event_SD____ ;;
  }

  dimension: mobile_replay_transaction_with_non_security_attendant_assist_event_avg____ {
    type: string
    sql: ${TABLE}.Mobile_Replay_Transaction_with_non_security_attendant_assist_event_Avg____ ;;
  }

  dimension: mobile_replay_transaction_with_non_security_attendant_assist_event_sd____ {
    type: number
    sql: ${TABLE}.Mobile_Replay_Transaction_with_non_security_attendant_assist_event_SD____ ;;
  }

  dimension: mobile_replay_transaction_with_non_security_shopper_assist_event_avg____ {
    type: string
    sql: ${TABLE}.Mobile_Replay_Transaction_with_non_security_shopper_assist_event_Avg____ ;;
  }

  dimension: mobile_replay_transaction_with_non_security_shopper_assist_event_sd____ {
    type: number
    sql: ${TABLE}.Mobile_Replay_Transaction_with_non_security_shopper_assist_event_SD____ ;;
  }

  dimension: normal___abnormal_restart_count {
    type: number
    sql: ${TABLE}.Normal___Abnormal_Restart_Count ;;
  }

  dimension: normal___abnormal_restarts_per_1000_transactions {
    type: number
    sql: ${TABLE}.Normal___Abnormal_Restarts_per_1000_Transactions ;;
  }

  dimension: normal_restart_count {
    type: number
    sql: ${TABLE}.Normal_Restart_Count ;;
  }

  dimension: normal_restarts_per_1000_transactions {
    type: number
    sql: ${TABLE}.Normal_Restarts_per_1000_Transactions ;;
  }

  dimension: number_of_lanes__for_which_diagnostic_file_is_available_ {
    type: number
    sql: ${TABLE}.Number_of_lanes__for_which_diagnostic_file_is_available_ ;;
  }

  dimension: physical_memory {
    type: string
    sql: ${TABLE}.Physical_Memory ;;
  }

  dimension: pos_version {
    type: string
    sql: ${TABLE}.POS_Version ;;
  }

  dimension: processor_name {
    type: string
    sql: ${TABLE}.Processor_Name ;;
  }

  dimension: security {
    type: string
    sql: ${TABLE}.SECURITY ;;
  }

  dimension: security_at_tender___unexpected_decrease_avg__total___increase_total_transaction_ {
    type: number
    sql: ${TABLE}.Security_at_Tender___Unexpected_decrease_Avg__Total___increase_Total_Transaction_ ;;
  }

  dimension: security_at_tender___unexpected_decrease_sd__total___increase_total_transaction_ {
    type: number
    sql: ${TABLE}.Security_at_Tender___Unexpected_decrease_SD__Total___increase_Total_Transaction_ ;;
  }

  dimension: security_at_tender___unexpected_increase_avg__total___increase_total_transaction_ {
    type: number
    sql: ${TABLE}.Security_at_Tender___Unexpected_increase_Avg__Total___increase_Total_Transaction_ ;;
  }

  dimension: security_at_tender___unexpected_increase_sd__total___increase_total_transaction_ {
    type: number
    sql: ${TABLE}.Security_at_Tender___Unexpected_increase_SD__Total___increase_Total_Transaction_ ;;
  }

  dimension: security_event_during_tendering____normalized_to_transaction_ {
    type: string
    sql: ${TABLE}.Security_Event_during_tendering____normalized_to_transaction_ ;;
  }

  dimension: security_events_outside_transaction____normalized_to_transaction_ {
    type: string
    sql: ${TABLE}.Security_Events_outside_transaction____normalized_to_transaction_ ;;
  }

  dimension: security_outside_transaction___unexpected_increase__avg__total___increase_total_transaction_ {
    type: number
    sql: ${TABLE}.Security_Outside_Transaction___Unexpected_increase__Avg__Total___increase_Total_Transaction_ ;;
  }

  dimension: security_outside_transaction___unexpected_increase_sd___total___increase_total_transaction_ {
    type: number
    sql: ${TABLE}.Security_Outside_Transaction___Unexpected_increase_SD___Total___increase_Total_Transaction_ ;;
  }

  dimension: stability {
    type: string
    sql: ${TABLE}.STABILITY ;;
  }

  dimension: store {
    type: string
    sql: ${TABLE}.Store ;;
  }

  dimension: store___lane {
    type: string
    sql: ${TABLE}.Store___Lane ;;
  }

  dimension: tb_integration_version {
    type: string
    sql: ${TABLE}.TB_Integration_Version ;;
  }

  dimension: tb_sdk_version {
    type: string
    sql: ${TABLE}.TB_SDK_Version ;;
  }

  dimension: tender_time_avg__sec_ {
    type: number
    sql: ${TABLE}.Tender_Time_Avg__sec_ ;;
  }

  dimension: tender_time_sd__sec_ {
    type: number
    sql: ${TABLE}.Tender_Time_SD__sec_ ;;
  }

  dimension: time_available__hours_per_day_ {
    type: number
    sql: ${TABLE}.Time_Available__hours_per_day_ ;;
  }

  dimension: time_closed__hours_per_day_ {
    type: number
    sql: ${TABLE}.Time_Closed__hours_per_day_ ;;
  }

  dimension: time_down__hours_per_day_ {
    type: number
    sql: ${TABLE}.Time_Down__hours_per_day_ ;;
    hidden: yes
  }

  measure: total_time_down__hours_per_day {
    type: sum
    sql: ${time_down__hours_per_day_} ;;
    value_format_name: decimal_0
    hidden: no
  }
  dimension: time_running__hours_per_day_ {
    type: number
    sql: ${TABLE}.Time_Running__hours_per_day_ ;;
  }

  dimension: total_failed_transactions_count {
    type: number
    sql: ${TABLE}.Total_Failed_Transactions_Count ;;
  }

  dimension: total_security___unexpected_decrease_avg____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.Total_Security___Unexpected_decrease_Avg____normalized_to_items_scanned_ ;;
  }

  dimension: total_security___unexpected_decrease_sd____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.Total_Security___Unexpected_decrease_SD____normalized_to_items_scanned_ ;;
  }

  dimension: total_security___unexpected_increase_avg____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.Total_Security___Unexpected_increase_Avg____normalized_to_items_scanned_ ;;
  }

  dimension: total_security___unexpected_increase_sd____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.Total_Security___Unexpected_increase_SD____normalized_to_items_scanned_ ;;
  }

  dimension: total_security___weight_mismatch__sd____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.Total_Security___Weight_mismatch__SD____normalized_to_items_scanned_ ;;
  }

  dimension: total_security___weight_mismatch_avg____normalized_to_items_scanned_ {
    type: number
    sql: ${TABLE}.Total_Security___Weight_mismatch_Avg____normalized_to_items_scanned_ ;;
  }

  dimension: total_security_event____normalized_to_items_scanned_ {
    type: string
    sql: ${TABLE}.Total_Security_Event____normalized_to_items_scanned_ ;;
  }

  dimension: transaction_size_avg__number_of_items_ {
    type: number
    sql: ${TABLE}.Transaction_Size_Avg__Number_of_items_ ;;
  }

  dimension: transaction_size_sd__number_of_items_ {
    type: number
    sql: ${TABLE}.Transaction_Size_SD__Number_of_items_ ;;
  }

  dimension: transaction_time_avg__sec_ {
    type: number
    hidden: yes
    sql: ${TABLE}.Transaction_Time_Avg__sec_ ;;
  }

  measure: total_transaction_time_avg__sec {
    type: average
    sql: ${transaction_time_avg__sec_} ;;
    value_format_name: decimal_0
    hidden: no
  }


  dimension: transaction_time_sd__sec_ {
    type: number
    sql: ${TABLE}.Transaction_Time_SD__sec_ ;;
  }

  dimension: transaction_with_non_security_assist_event_avg____ {
    type: number
    sql: ${TABLE}.Transaction_with_non_security_assist_event_Avg____ ;;
  }

  dimension: transaction_with_non_security_assist_event_sd____ {
    type: number
    sql: ${TABLE}.Transaction_with_non_security_assist_event_SD____ ;;
  }

  dimension: transaction_with_non_security_attendant_assist_event_avg____ {
    type: number
    sql: ${TABLE}.Transaction_with_non_security_attendant_assist_event_Avg____ ;;
  }

  dimension: transaction_with_non_security_attendant_assist_event_sd____ {
    type: number
    sql: ${TABLE}.Transaction_with_non_security_attendant_assist_event_SD____ ;;
  }

  dimension: transaction_with_non_security_shopper_assist_event_avg____ {
    type: number
    sql: ${TABLE}.Transaction_with_non_security_shopper_assist_event_Avg____ ;;
  }

  dimension: transaction_with_non_security_shopper_assist_event_sd____ {
    type: number
    sql: ${TABLE}.Transaction_with_non_security_shopper_assist_event_SD____ ;;
  }

  dimension: transaction_with_security_event_avg____ {
    type: number
    sql: ${TABLE}.Transaction_with_security_event_Avg____ ;;
  }

  dimension: transaction_with_security_event_sd____ {
    type: number
    sql: ${TABLE}.Transaction_with_security_event_SD____ ;;
  }

  dimension: transaction_with_security_or_non_security_assist_event_avg____ {
    type: number
    sql: ${TABLE}.Transaction_with_security_or_non_security_assist_event_Avg____ ;;
    hidden: yes
  }

  measure: transaction_with_security_or_non_security_assist_event{
    type: sum
    sql: ${transaction_with_security_or_non_security_assist_event_avg____}*complete_transaction_count/100 ;;
    value_format_name: decimal_0
    hidden: no
    drill_fields: [detailAssis*]
    link: {
      label: "Explore Top 15 Results"
      url: "{{ link }}&limit=15"
    }
  }
  dimension: status {
    sql: ${TABLE}.transaction_with_security_or_non_security_assist_event_avg____ ;;
    html:
      {% if transaction_with_security_or_non_security_assist_event_avg____<20 %}
         <p><img src="http://findicons.com/files/icons/573/must_have/48/check.png" height=20 width=20>{{ rendered_value }}</p>
      {% else %}
        <p><img src="http://findicons.com/files/icons/719/crystal_clear_actions/64/cancel.png" height=20 width=20>{{ rendered_value }}</p>
      {% endif %}
;;
  }

  set: detailAssis {
    fields: [store___lane, transaction_with_security_or_non_security_assist_event,status]
  }


  dimension: transaction_with_security_or_non_security_assist_event_sd____ {
    type: number
    sql: ${TABLE}.Transaction_with_security_or_non_security_assist_event_SD____ ;;
  }

  dimension: transaction_with_security_or_non_security_assist_events____transaction_ {
    type: string
    sql: ${TABLE}.Transaction_with_Security_or_Non_Security_Assist_Events____Transaction_ ;;
  }

  dimension: transaction_with_unexpected_weight_decrease_security_event_avg____ {
    type: number
    sql: ${TABLE}.Transaction_with_unexpected_weight_decrease_security_event_Avg____ ;;
  }

  dimension: transaction_with_unexpected_weight_decrease_security_event_sd____ {
    type: number
    sql: ${TABLE}.Transaction_with_unexpected_weight_decrease_security_event_SD____ ;;
  }

  dimension: transaction_with_unexpected_weight_increase_security_event_avg____ {
    type: number
    sql: ${TABLE}.Transaction_with_unexpected_weight_increase_security_event_Avg____ ;;
  }

  dimension: transaction_with_unexpected_weight_increase_security_event_sd____ {
    type: number
    sql: ${TABLE}.Transaction_with_unexpected_weight_increase_security_event_SD____ ;;
  }

  dimension: transaction_with_weight_mismatch_security_event_avg____ {
    type: number
    sql: ${TABLE}.Transaction_with_weight_mismatch_security_event_Avg____ ;;
  }

  dimension: transaction_with_weight_mismatch_security_event_sd____ {
    type: number
    sql: ${TABLE}.Transaction_with_weight_mismatch_security_event_SD____ ;;
  }

  dimension: transactions_with_mobile_replay______lane___day_ {
    type: number
    sql: ${TABLE}.Transactions_with_Mobile_Replay______lane___day_ ;;
  }

  dimension: usage {
    type: string
    sql: ${TABLE}.USAGE ;;
  }

  dimension: utilization_avg__hours_per_day_ {
    type: number
    sql: ${TABLE}.Utilization_Avg__hours_per_day_ ;;
  }

  dimension: utilization_sd__hours_per_day_ {
    type: number
    sql: ${TABLE}.Utilization_SD__hours_per_day_ ;;
  }

  measure: count {
    type: count
    drill_fields: [processor_name]
  }
}
