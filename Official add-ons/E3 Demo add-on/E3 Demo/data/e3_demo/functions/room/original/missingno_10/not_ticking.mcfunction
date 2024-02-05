execute unless entity @a[scores={LastRoom=26},limit=1] run function #e3_demo:room/original/missingno_10/reset
execute as @e[scores={Room=26},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #missingno_10 Vacuumables