view: titleview {
  sql_table_name: dbo.titleview ;;

  dimension: au_lname {
    type: string
    sql: ${TABLE}.au_lname ;;
  }

  dimension: au_ord {
    type: number
    sql: ${TABLE}.au_ord ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}.price ;;
  }

  dimension: pub_id {
    type: string
    sql: ${TABLE}.pub_id ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: ytd_sales {
    type: number
    sql: ${TABLE}.ytd_sales ;;
  }

  measure: count {
    type: count
    drill_fields: [au_lname]
  }
}
