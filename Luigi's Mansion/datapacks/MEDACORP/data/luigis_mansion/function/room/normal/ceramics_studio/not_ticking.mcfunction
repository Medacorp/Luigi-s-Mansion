execute unless entity @a[scores={LastRoom=65},limit=1] run function #luigis_mansion:room/normal/ceramics_studio/reset
execute as @e[scores={Room=65},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #ceramics_studio Vacuumables

execute if score #ceramics_studio Wave matches -1 run tag @e[scores={Room=65},tag=ghost] add remove_from_existence
execute if score #ceramics_studio Wave matches -1 run scoreboard players reset #ceramics_studio Wave