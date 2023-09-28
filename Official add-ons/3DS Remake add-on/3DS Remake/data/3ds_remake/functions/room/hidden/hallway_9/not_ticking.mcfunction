execute unless entity @a[scores={LastRoom=35},limit=1] run function #3ds_remake:room/hidden/hallway_9/reset
execute as @e[scores={Room=35},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_9 Vacuumables