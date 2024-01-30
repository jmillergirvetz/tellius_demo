connection: "bigqueryconnection"

include: "/views/*.view.lkml"


explore: sales {
  join: orders {
    relationship: many_to_one
    sql_on: ${orders.transaction_id} = ${orders.transaction_id} ;;
  }
}
