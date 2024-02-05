execute unless entity @a[scores={LastRoom=55},limit=1] run function #3ds_remake:room/hidden/hallway_19/reset
execute as @e[scores={Room=55},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #hallway_19 Vacuumables