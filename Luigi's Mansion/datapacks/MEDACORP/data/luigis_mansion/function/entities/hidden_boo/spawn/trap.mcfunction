execute if predicate luigis_mansion:boo/bomb_trap_chance run function luigis_mansion:spawn_entities/boo_bomb
execute unless entity @e[distance=..0.7,tag=bomb,limit=1] run function luigis_mansion:spawn_entities/ball/boo
$data modify storage luigis_mansion:data current_state.current_data.boos[{name:{namespace:"$(namespace)",id:"$(id)"}}].trap_found set value 1b