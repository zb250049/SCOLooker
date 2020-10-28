view: sco_dim_store_lane {
  sql_table_name: `SCO_Poc.SCO_DImStoreLane`
    ;;
  label: "Stores Lane"
  dimension: adk_version {
    type: string
    sql: ${TABLE}.ADK_Version ;;
    drill_fields:[sco_stg_monitoring.detail_TranAkFailedVsComleted*]
    link: {
      label: "Explore Top 20 Store Lanes"
      url: "{{ link }}&limit=20"
    }
    hidden: no
  }



  dimension: configuration {
    type: string
    sql: ${TABLE}.CONFIGURATION ;;
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

  dimension: store {
    type: string
    sql: ${TABLE}.Store ;;
  }

  dimension: store__lane {
    type: string
    sql: ${TABLE}.Store__Lane ;;
  }

  dimension: tb_integration_version {
    type: string
    sql: ${TABLE}.TB_Integration_Version ;;
  }

  dimension: tb_sdk_version {
    type: string
    sql: ${TABLE}.TB_SDK_Version ;;
  }

  measure: count {
    type: count
    drill_fields: [processor_name]
  }
}
