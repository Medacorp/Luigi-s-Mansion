execute unless entity @a[scores={LastRoom=25},limit=1] run function #luigis_mansion:room/normal/conservatory/reset
execute as @e[scores={Room=25},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #conservatory Vacuumables

function luigis_mansion:room/normal/conservatory/stop_music
execute if score #conservatory Wave matches -1 run scoreboard players reset #conservatory Wave