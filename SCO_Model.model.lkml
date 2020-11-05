connection: "sco_poc"

# include all the views
include: "/views/**/*.view"

datagroup: sco_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sco_poc_default_datagroup

explore: sco_stg_monitoring {
  label: "Monitoring"
  join: sco_dimweeks {
    relationship: many_to_one
    sql_on: ${sco_dimweeks.date_week_date} = ${sco_stg_monitoring.date_week_date} ;;
  }

  join: sco_dim_store_lane {
    relationship: many_to_one
    sql_on: ${sco_dim_store_lane.store__lane} = ${sco_stg_monitoring.store___lane} ;;
  }

  join: sco_dim_store {
    relationship: many_to_one
    sql_on: ${sco_dim_store.store} = ${sco_stg_monitoring.store} ;;
  }


}

explore: sco_state {
  label: "state"
}

explore: coaching_data2020 {
  label: "Coaching Data 2020"
}


explore: sco_fact_performance{
  label:"Performance"
  join: sco_dimweeks {
    relationship: many_to_one
    sql_on: ${sco_dimweeks.date_week_date} = ${sco_fact_performance.date_date} ;;
  }

  join: sco_dim_store_lane {
    relationship: many_to_one
    sql_on: ${sco_dim_store_lane.store__lane} = ${sco_fact_performance.lane} ;;

  }

  join: sco_dim_store {
    relationship: many_to_one
    sql_on: ${sco_dim_store.store} = ${sco_fact_performance.store} ;;
  }

  join: sco_dimtime{
    relationship: many_to_one
    sql_on: ${sco_dimtime.qtr_hour_key} = ${sco_fact_performance.hour_key} ;;
  }
  join: sco_dim_failure{
    relationship: many_to_one
    sql_on: ${sco_dim_failure.failure_code} = ${sco_fact_performance.failure_Code} ;;
    }

  join: sco_dim_assistence{
    relationship: many_to_one
    sql_on: ${sco_dim_assistence.assistence_code} = ${sco_fact_performance.assistence_Code} ;;
  }
}
