execute unless entity @a[scores={LastRoom=48},limit=1] run function #3ds_remake:room/hidden/projection_room/reset
execute as @e[scores={Room=48},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #projection_room Vacuumables