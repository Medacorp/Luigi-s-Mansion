data modify storage luigis_mansion:data entity set value {}
execute if predicate luigis_mansion:boo/bomb_trap_chance run function luigis_mansion:spawn_entities/boo_bomb
execute if data storage luigis_mansion:data entity run function luigis_mansion:spawn_entities/ball/boo
$data modify storage luigis_mansion:data current_state.luigis_mansion.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].trap_found set value 1b