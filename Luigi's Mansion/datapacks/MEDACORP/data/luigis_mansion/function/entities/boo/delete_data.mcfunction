$data remove storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}]
$tag @e[nbt={data:{boo:{namespace:"$(namespace)",id:"$(id)"}}},tag=trap] add remove_from_existence
$data modify storage luigis_mansion:data current_state.ghosts_caught.boos.$(namespace).$(id) set value 1b