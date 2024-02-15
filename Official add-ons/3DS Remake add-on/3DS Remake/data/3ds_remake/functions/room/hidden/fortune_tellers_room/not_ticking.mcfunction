execute unless entity @a[scores={LastRoom=20},limit=1] run function #3ds_remake:room/hidden/fortune_tellers_room/reset
execute as @e[scores={Room=20},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #fortune_tellers_room Vacuumables

execute as @e[scores={Room=20},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"madame_clairvoya"}}}}]}] run function luigis_mansion:old_entities/ghost/turn_invisible