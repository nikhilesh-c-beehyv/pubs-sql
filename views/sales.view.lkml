view: sales {
  sql_table_name: dbo.sales ;;

  dimension_group: ord {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ord_date ;;
  }

  dimension: ord_num {
    type: string
    sql: ${TABLE}.ord_num ;;
  }

  dimension: payterms {
    type: string
    sql: ${TABLE}.payterms ;;
  }

  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }

  dimension: stor_id {
    type: string
    sql: ${TABLE}.stor_id ;;
  }

  dimension: title_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.title_id ;;
  }

  measure: count {
    type: count
    drill_fields: [titles.title_id]
  }
}
