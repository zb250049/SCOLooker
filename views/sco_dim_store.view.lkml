view: sco_dim_store {
  sql_table_name: `SCO_Poc.SCO_DimStore`
    ;;
  label: "Stores"


  dimension: ZipCode {
   type: zipcode
    sql: ${TABLE}.ZipCode ;;
  }
  dimension: store {
    type: string
    sql: ${TABLE}.Store ;;
    drill_fields:[sco_stg_monitoring.detail_TranAkFailedVsComleted*]
    link: {
      label: "Explore Top 20 Store Lanes"
      url: "{{ link }}&limit=20"
    }
    hidden: no
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
