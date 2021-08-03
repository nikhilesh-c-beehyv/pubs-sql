view: publishers {
  sql_table_name: dbo.publishers ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: pub_id {
    type: string
    sql: ${TABLE}.pub_id ;;
  }

  dimension: pub_name {
    type: string
    sql: ${TABLE}.pub_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  measure: count {
    type: count
    drill_fields: [pub_name]
  }
}
