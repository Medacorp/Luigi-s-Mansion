execute positioned 706 11 31 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 707 11 34 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 708 11 55 run function luigis_mansion:spawn_entities/banana_peel
data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.mr_luggs.scan"}'}}
execute positioned 702 11 43 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
execute positioned 700 11 56 run function luigis_mansion:spawn_entities/ghost/waiter
tag @e[x=700.5,y=11,z=56.5,distance=..1,tag=waiter] add kitchen_waiter
execute positioned 704 11 30 run function luigis_mansion:spawn_entities/ghost/waiter
scoreboard players set #dining_room Wave 1