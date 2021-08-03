view: titleauthor {
  sql_table_name: dbo.titleauthor ;;

  dimension: au_id {
    type: string
    sql: ${TABLE}.au_id ;;
  }

  dimension: au_ord {
    type: number
    sql: ${TABLE}.au_ord ;;
  }

  dimension: royaltyper {
    type: number
    sql: ${TABLE}.royaltyper ;;
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
