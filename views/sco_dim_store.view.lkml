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
  }




  measure: count {
    type: count
    drill_fields: []
  }
}
