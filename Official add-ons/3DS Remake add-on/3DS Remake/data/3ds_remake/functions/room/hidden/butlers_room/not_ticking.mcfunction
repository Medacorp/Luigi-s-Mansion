execute unless entity @a[scores={LastRoom=23},limit=1] run function #3ds_remake:room/hidden/butlers_room/reset
execute as @e[scores={Room=23},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #butlers_room Vacuumables