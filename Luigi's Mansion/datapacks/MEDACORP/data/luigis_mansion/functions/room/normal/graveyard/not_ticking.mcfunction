execute unless entity @a[scores={LastRoom=29},limit=1] run function #luigis_mansion:room/normal/graveyard/reset
execute as @e[scores={Room=29},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #graveyard Vacuumables