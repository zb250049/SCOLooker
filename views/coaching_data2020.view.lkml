view: coaching_data2020 {
  sql_table_name: `com-loyalpro-global-dev.SCO_Poc.Coaching_data2020`
    ;;

  dimension: __of_days_past_scheduled_date {
    type: number
    sql: ${TABLE}.__of_Days_Past_Scheduled_Date ;;
  }

  dimension: __of_days_since_first_flagged_as_of_today {
    type: number
    sql: ${TABLE}.__of_Days_Since_First_Flagged_as_of_Today ;;
  }

  dimension: _coaching_state {
    type: string
    sql: ${TABLE}._Coaching_State ;;
    drill_fields:[overduweDetailComleted*]
    link: {
      label: "Explore Top 20 Storeד"
      url: "{{ link }}&limit=20"
    }
  }

  dimension: cashier {
    type: number
    sql: ${TABLE}.Cashier ;;
  }

  dimension_group: coached {
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
    sql: ${TABLE}.Coached_Time ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.Created_on ;;
  }

  dimension: district {
    type: number
    sql: ${TABLE}.District ;;
  }

  dimension: number_of_coached_sessions_to_date {
    type: number
    sql: ${TABLE}.Number_of_Coached_Sessions_to_Date ;;
  }

  dimension: overdue_state {
    type: string
    sql: ${TABLE}.Overdue_State ;;
    drill_fields:[overduweDetailComleted*]
    link: {
      label: "Explore Top 20 Storeד"
      url: "{{ link }}&limit=20"
  }
}

    set: overduweDetailComleted {
      fields: [store,resolution,overdue_state]
    }


  dimension: resolution {
    type: string
    sql: ${TABLE}.resolution ;;
    drill_fields:[overduweDetailComleted*]
    link: {
      label: "Explore Top 20 Storeד"
      url: "{{ link }}&limit=20"
  }
}
  dimension_group: scheduled {
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
    sql: ${TABLE}.Scheduled_Date ;;
  }

  dimension: store {
    type: number
    sql: ${TABLE}.Store ;;
  }

  dimension: tz {
    type: string
    sql: ${TABLE}.TZ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
