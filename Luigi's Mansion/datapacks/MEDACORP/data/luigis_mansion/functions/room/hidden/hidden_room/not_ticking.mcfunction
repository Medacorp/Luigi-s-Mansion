execute unless entity @a[scores={LastRoom=24},limit=1] run function #luigis_mansion:room/hidden/hidden_room/reset
execute as @e[scores={Room=24},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #hidden_room Vacuumables