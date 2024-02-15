execute unless entity @a[scores={LastRoom=32},limit=1] run function #3ds_remake:room/hidden/rec_room/reset
execute as @e[scores={Room=32},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #rec_room Vacuumables

execute as @e[scores={Room=32},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"biff_atlas"}}}}]}] run function luigis_mansion:old_entities/biff_atlas/disappear/hidden
tag @e[scores={Room=32},nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"biff_atlas"}}}}]}] remove ko