view: pub_info {
  sql_table_name: dbo.pub_info ;;

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: pr_info {
    type: string
    sql: ${TABLE}.pr_info ;;
  }

  dimension: pub_id {
    type: string
    sql: ${TABLE}.pub_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
