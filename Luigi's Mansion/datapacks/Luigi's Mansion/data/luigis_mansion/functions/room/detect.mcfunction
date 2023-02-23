execute if entity @a[x=771.5,y=90,z=8.0,distance=..14,gamemode=!spectator,limit=1] run function luigis_mansion:entities/player/open_gate
function #luigis_mansion:mansion_detect
execute if entity @a[scores={Room=0}] run function luigis_mansion:room/door/boo_woods_underground_lab
execute if entity @a[distance=0..,scores={PositionIntX=778..798,PositionIntY=74..89,PositionIntZ=4..25}] run function luigis_mansion:room/underground_lab/tick
execute if score #underground_lab Ticking matches 1 unless entity @a[distance=0..,scores={PositionIntX=778..798,PositionIntY=74..89,PositionIntZ=4..25}] unless entity @a[scores={Room=-1}] run function luigis_mansion:room/underground_lab/not_ticking
execute if entity @a[distance=0..,scores={PositionIntX=781..800,PositionIntY=72..84,PositionIntZ=-23..4}] run function luigis_mansion:room/training_room/tick
execute if score #training_room Ticking matches 1 unless entity @a[distance=0..,scores={PositionIntX=781..800,PositionIntY=72..84,PositionIntZ=-23..4}] unless entity @a[scores={Room=-2}] run function luigis_mansion:room/training_room/not_ticking
execute if entity @a[distance=0..,scores={PositionIntX=764..779,PositionIntY=74..84,PositionIntZ=-15..25}] run function luigis_mansion:room/ghost_portrificationizer_room/tick
execute if score #ghost_portrificationizer_room Ticking matches 1 unless entity @a[distance=0..,scores={PositionIntX=764..779,PositionIntY=74..84,PositionIntZ=-15..25}] unless entity @a[scores={Room=-3}] run function luigis_mansion:room/ghost_portrificationizer_room/not_ticking
execute if entity @a[distance=0..,scores={PositionIntX=727..779,PositionIntY=74..87,PositionIntZ=-42..-15}] run function luigis_mansion:room/gallery/tick
execute if score #gallery Ticking matches 1 unless entity @a[distance=0..,scores={PositionIntX=727..779,PositionIntY=74..87,PositionIntZ=-42..-15}] unless entity @a[scores={Room=-4}] run function luigis_mansion:room/gallery/not_ticking
scoreboard players reset #temp Room
execute if data storage luigis_mansion:data {found_e_gadd:1b} if entity @a[scores={Room=1..},gamemode=!spectator] run function luigis_mansion:room/update_stats
tag @e[tag=this_entity] remove this_entity