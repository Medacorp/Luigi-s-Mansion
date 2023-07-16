data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.miss_petunia.scan"}'}}
execute positioned 651 12 23 run function luigis_mansion:spawn_entities/portrait_ghost/miss_petunia
execute positioned 658 11 27 run function e3_demo:spawn_entities/vacuumable/boo
execute positioned 658 11 27 run function e3_demo:spawn_entities/vacuumable/boo
execute positioned 657 11 27 run function e3_demo:spawn_entities/vacuumable/boo
execute positioned 657 11 27 run function e3_demo:spawn_entities/vacuumable/boo
tag @e[tag=miss_petunia] remove pearl_dropper
scoreboard players set #bath_room Wave 1