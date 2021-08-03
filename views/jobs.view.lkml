view: jobs {
  sql_table_name: dbo.jobs ;;
  drill_fields: [job_id]

  dimension: job_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_desc {
    type: string
    sql: ${TABLE}.job_desc ;;
  }

  dimension: max_lvl {
    type: number
    sql: ${TABLE}.max_lvl ;;
  }

  dimension: min_lvl {
    type: number
    sql: ${TABLE}.min_lvl ;;
  }

  measure: count {
    type: count
    drill_fields: [job_id, employee.count]
  }
}
