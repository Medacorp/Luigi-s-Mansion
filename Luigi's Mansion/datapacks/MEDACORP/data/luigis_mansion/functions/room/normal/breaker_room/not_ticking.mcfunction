execute unless entity @a[scores={LastRoom=57},limit=1] run function #luigis_mansion:room/normal/breaker_room/reset
execute as @e[scores={Room=57},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #breaker_room Vacuumables