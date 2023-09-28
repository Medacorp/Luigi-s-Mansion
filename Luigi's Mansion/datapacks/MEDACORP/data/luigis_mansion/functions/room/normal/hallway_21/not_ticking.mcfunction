execute unless entity @a[scores={LastRoom=60},limit=1] run function #luigis_mansion:room/normal/hallway_21/reset
execute as @e[scores={Room=60},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_21 Vacuumables