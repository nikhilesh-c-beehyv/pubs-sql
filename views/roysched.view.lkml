view: roysched {
  sql_table_name: dbo.roysched ;;

  dimension: hirange {
    type: number
    sql: ${TABLE}.hirange ;;
  }

  dimension: lorange {
    type: number
    sql: ${TABLE}.lorange ;;
  }

  dimension: royalty {
    type: number
    sql: ${TABLE}.royalty ;;
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
