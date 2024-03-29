data modify storage luigis_mansion:data my_memory.hurt_by.self set value 0b
$execute if data storage luigis_mansion:data my_memory.hurt_by.attacker[{id:$(new_attacker)}] run data remove storage luigis_mansion:data my_memory.hurt_by.attacker[{id:$(new_attacker)}]
$data modify storage luigis_mansion:data my_memory.hurt_by.attacker prepend value {timer:200,id:$(new_attacker)}