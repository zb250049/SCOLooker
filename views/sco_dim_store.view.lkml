view: sco_dim_store {
  sql_table_name: `SCO_Poc.SCO_DimStore`
    ;;
  label: "Stores"


  dimension: ZipCode {
   type: zipcode
    sql: ${TABLE}.ZipCode ;;

    drill_fields:[sco_fact_performance.detailPerformance*]
    link: {
      label: "Explore Top 50 Store Lanes performance"
      url: "{{ link }}&limit=50"
    }
  }

  dimension: latitude {
    type:number
    sql: ${TABLE}.Altitude ;;


  }

dimension: longtitude {
  type:number
  sql: ${TABLE}.longtitude ;;


}


  dimension: Geo {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude:${longtitude} ;;
   drill_fields:[sco_stg_monitoring.detail_TranAkFailedVsComleted*]
    link: {
      label: "Explore Top 20 Store Lanes"
      url: "{{ link }}&limit=20"
    }
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
