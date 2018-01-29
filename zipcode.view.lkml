view: zipcode {
  sql_table_name: looker_datablocks.zipcode ;;

  dimension: city {
    view_label: "Geography"
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: county {
    hidden: yes
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: latitude_longitude_location {
    view_label: "Geography"
    label: "Latitude/Longitude"
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  dimension: state {
    hidden: yes
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip_code {
    hidden: yes
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }
}
