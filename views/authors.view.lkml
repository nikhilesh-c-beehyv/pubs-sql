view: authors {
  sql_table_name: dbo.authors ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: au_fname {
    type: string
    sql: ${TABLE}.au_fname ;;
  }

  dimension: au_id {
    type: string
    sql: ${TABLE}.au_id ;;
  }

  dimension: au_lname {
    type: string
    sql: ${TABLE}.au_lname ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: contract {
    type: string
    sql: ${TABLE}.contract ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    type: count
    drill_fields: [au_lname, au_fname]
  }
}
