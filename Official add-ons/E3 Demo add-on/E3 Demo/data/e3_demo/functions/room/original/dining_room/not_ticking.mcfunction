execute unless entity @a[scores={LastRoom=14},limit=1] run function #e3_demo:room/original/dining_room/reset
execute as @e[scores={Room=14},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #dining_room Vacuumables