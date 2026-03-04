# {data: data, output: data}

$data remove $(output)

$data modify storage util: args[0].output set value "$(output)"

$function util:for_array_fn {function:"money:villager/_set_data",data:"$(data)",args_id:0,for_id:0,start_index:0}
