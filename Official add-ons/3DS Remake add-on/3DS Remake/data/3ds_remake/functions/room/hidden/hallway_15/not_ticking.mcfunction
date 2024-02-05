execute unless entity @a[scores={LastRoom=41},limit=1] run function #3ds_remake:room/hidden/hallway_15/reset
execute as @e[scores={Room=41},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #hallway_15 Vacuumables