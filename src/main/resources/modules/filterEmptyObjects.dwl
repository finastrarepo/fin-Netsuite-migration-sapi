%dw 2.0

fun filterEmptyObjects(elem) =
elem match {
    case is Object -> if(isEmpty(elem)) null else elem mapObject ($$): filterEmptyObjects($)
    case is Array -> elem map filterEmptyObjects($)
    else -> elem }