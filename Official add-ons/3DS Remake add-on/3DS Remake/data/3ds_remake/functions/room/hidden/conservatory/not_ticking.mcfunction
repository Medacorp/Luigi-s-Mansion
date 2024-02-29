execute unless entity @a[scores={LastRoom=25},limit=1] run function #3ds_remake:room/hidden/conservatory/reset
execute as @e[scores={Room=25},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #conservatory Vacuumables

function 3ds_remake:room/hidden/conservatory/stop_music
execute if score #conservatory Wave matches -1 run scoreboard players reset #conservatory Wave