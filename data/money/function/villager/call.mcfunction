# {data: data, output: data}

$data remove $(output)

$data modify storage util: arg.data set value "$(data)"
$data modify storage util: arg.output set value "$(output)"

$function util:for_array_fn {function:"money:villager/apply_data",data:"$(data)",for_id:0,start_index:0}
