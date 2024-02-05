execute unless entity @a[scores={LastRoom=61},limit=1] run function #e3_demo:room/original/missingno_45/reset
execute as @e[scores={Room=61},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #missingno_45 Vacuumables