view: titles {
  sql_table_name: dbo.titles ;;
  drill_fields: [title_id]

  dimension: title_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.title_id ;;
  }

  dimension: advance {
    type: string
    sql: ${TABLE}.advance ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: pub_id {
    type: string
    sql: ${TABLE}.pub_id ;;
  }

  dimension_group: pubdate {
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
    sql: ${TABLE}.pubdate ;;
  }

  dimension: royalty {
    type: number
    sql: ${TABLE}.royalty ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: ytd_sales {
    type: number
    sql: ${TABLE}.ytd_sales ;;
  }

  measure: count {
    type: count
    drill_fields: [title_id, roysched.count, sales.count, titleauthor.count]
  }
}
