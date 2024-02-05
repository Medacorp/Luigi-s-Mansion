execute unless entity @a[scores={LastRoom=4},limit=1] run function #luigis_mansion:room/hidden/anteroom/reset
execute as @e[scores={Room=4},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #anteroom Vacuumables