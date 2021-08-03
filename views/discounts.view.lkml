view: discounts {
  sql_table_name: dbo.discounts ;;

  dimension: discount {
    type: number
    sql: ${TABLE}.discount ;;
  }

  dimension: discounttype {
    type: string
    sql: ${TABLE}.discounttype ;;
  }

  dimension: highqty {
    type: number
    sql: ${TABLE}.highqty ;;
  }

  dimension: lowqty {
    type: number
    sql: ${TABLE}.lowqty ;;
  }

  dimension: stor_id {
    type: string
    sql: ${TABLE}.stor_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
