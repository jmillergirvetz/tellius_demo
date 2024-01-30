# The name of this view in Looker is "Sales"
view: sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `tellius-dev.test_dataset.sales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amount Paid" in Explore.

  dimension: amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.amountPaid ;;
  }

  dimension: col2 {
    type: number
    sql: ${TABLE}.col2 ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_col2 {
    type: sum
    sql: ${col2} ;;  }
  measure: average_col2 {
    type: average
    sql: ${col2} ;;  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customerId ;;
  }

  dimension: item_id {
    type: number
    sql: ${TABLE}.itemId ;;
  }

  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transactionId ;;
  }
  measure: count {
    type: count
  }
}
