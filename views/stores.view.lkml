view: stores {
  sql_table_name: dbo.stores ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: stor_address {
    type: string
    sql: ${TABLE}.stor_address ;;
  }

  dimension: stor_id {
    type: string
    sql: ${TABLE}.stor_id ;;
  }

  dimension: stor_name {
    type: string
    sql: ${TABLE}.stor_name ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [stor_name]
  }
}
