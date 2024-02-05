execute unless entity @a[scores={LastRoom=71},limit=1] run function #luigis_mansion:room/hidden/the_artists_studio/reset
execute as @e[scores={Room=71},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"}}}}]}] run function luigis_mansion:old_entities/ghost/non_ticking_room
scoreboard players reset #the_artists_studio Vacuumables