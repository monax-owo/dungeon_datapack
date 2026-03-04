# {function, data, for_id, start_index: int}
# functionにargs[-1]の値が渡され、valueやindexを利用できる

$function util:for_array {command: "function $(function) with storage util: args[-1]", data: "$(data)", for_id: "$(for_id)", start_index: $(start_index)}
