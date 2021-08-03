view: employee {
  sql_table_name: dbo.employee ;;

  dimension: emp_id {
    type: string
    sql: ${TABLE}.emp_id ;;
  }

  dimension: fname {
    type: string
    sql: ${TABLE}.fname ;;
  }

  dimension_group: hire {
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
    sql: ${TABLE}.hire_date ;;
  }

  dimension: job_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.job_id ;;
  }

  dimension: job_lvl {
    type: number
    sql: ${TABLE}.job_lvl ;;
  }

  dimension: lname {
    type: string
    sql: ${TABLE}.lname ;;
  }

  dimension: minit {
    type: string
    sql: ${TABLE}.minit ;;
  }

  dimension: pub_id {
    type: string
    sql: ${TABLE}.pub_id ;;
  }

  measure: count {
    type: count
    drill_fields: [fname, lname, jobs.job_id]
  }
}
