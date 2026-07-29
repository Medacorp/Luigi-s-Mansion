$data remove storage luigis_mansion:data current_state.luigis_mansion.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}]
$tag @e[nbt={data:{boo:{namespace:"$(namespace)",id:"$(id)"}}},tag=trap] add remove_from_existence
$data modify storage luigis_mansion:data current_state.luigis_mansion.ghost_caught.boos.$(namespace).$(id) set value 1b