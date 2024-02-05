execute unless entity @a[scores={LastRoom=36},limit=1] run function #luigis_mansion:room/normal/hallway_10/reset
execute as @e[scores={Room=36},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #hallway_10 Vacuumables