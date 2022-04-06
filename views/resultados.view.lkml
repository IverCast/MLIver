# The name of this view in Looker is "Resultados"
view: resultados {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `TestIver.Resultados`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called " 2 Ha Intentado Suicidarse Recientemente " in Explore.

  dimension: _2____ha_intentado_suicidarse_recientemente_ {
    type: number
    sql: ${TABLE}._2____Ha_intentado_suicidarse_recientemente_ ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total__2____ha_intentado_suicidarse_recientemente_ {
    type: sum
    sql: ${_2____ha_intentado_suicidarse_recientemente_} ;;
  }

  measure: average__2____ha_intentado_suicidarse_recientemente_ {
    type: average
    sql: ${_2____ha_intentado_suicidarse_recientemente_} ;;
  }

  dimension: _2____ha_pensado_en_el_suicidio_ {
    type: number
    sql: ${TABLE}._2____Ha_pensado_en_el_suicidio_ ;;
  }

  dimension: _2____ha_pensado_que_estar__a_mejor_muerto__o_ha_deseado_estar_muerto_ {
    type: number
    sql: ${TABLE}._2____Ha_pensado_que_estar__a_mejor_muerto__o_ha_deseado_estar_muerto_ ;;
  }

  dimension: _2____ha_planeado_c__mo_suicidarse_ {
    type: number
    sql: ${TABLE}._2____Ha_planeado_c__mo_suicidarse_ ;;
  }

  dimension: _2____ha_querido_hacerse_da__o_ {
    type: number
    sql: ${TABLE}._2____Ha_querido_hacerse_da__o_ ;;
  }

  dimension: _2__en_el_pasado_a_lo_largo_de_su_vida____alguna_vez_ha_intentado_suicidarse_ {
    type: number
    sql: ${TABLE}._2__En_el_pasado_a_lo_largo_de_su_vida____Alguna_vez_ha_intentado_suicidarse_ ;;
  }

  dimension: predicted_total_riesgo_suicida {
    type: number
    sql: ${TABLE}.predicted_TOTAL_RIESGO_SUICIDA ;;
  }

  dimension: total_riesgo_suicida {
    type: number
    sql: ${TABLE}.TOTAL_RIESGO_SUICIDA ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
