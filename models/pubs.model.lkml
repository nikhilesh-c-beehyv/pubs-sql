connection: "ifac-pubs-sql"

# include all the views
include: "/views/**/*.view"

datagroup: pubs_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pubs_default_datagroup

explore: authors {}

explore: discounts {}

explore: employee {
  join: jobs {
    type: left_outer
    sql_on: ${employee.job_id} = ${jobs.job_id} ;;
    relationship: many_to_one
  }
}

explore: jobs {}

explore: pub_info {}

explore: publishers {}

explore: roysched {
  join: titles {
    type: left_outer
    sql_on: ${roysched.title_id} = ${titles.title_id} ;;
    relationship: many_to_one
  }
}

explore: sales {
  join: titles {
    type: left_outer
    sql_on: ${sales.title_id} = ${titles.title_id} ;;
    relationship: many_to_one
  }
}

explore: stores {}

explore: titleauthor {
  join: titles {
    type: left_outer
    sql_on: ${titleauthor.title_id} = ${titles.title_id} ;;
    relationship: many_to_one
  }
}

explore: titles {}

explore: titleview {}
