view: sco_dim_store {
  sql_table_name: `SCO_Poc.SCO_DimStore`
    ;;
  label: "Stores"

  dimension: store {
    type: string
    sql: ${TABLE}.Store ;;
  }

  dimension: ZipCode {
    type: string
    sql: ${TABLE}.ZipCode ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
