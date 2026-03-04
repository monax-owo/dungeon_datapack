# {function, data, args_id, for_id, start_index: int}
# functionにargs[$(args_id)]の値が渡され、valueやindexを利用できる

$function util:for_data_command {command: "function $(function) with storage util: args[$(args_id)]", data: "$(data)", for_id: "$(for_id)", start_index: $(start_index)}
