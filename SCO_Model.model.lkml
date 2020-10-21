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