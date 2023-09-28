execute unless entity @a[scores={LastRoom=30},limit=1] run function #e3_demo:room/original/missingno_14/reset
execute as @e[scores={Room=30},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #missingno_14 Vacuumables