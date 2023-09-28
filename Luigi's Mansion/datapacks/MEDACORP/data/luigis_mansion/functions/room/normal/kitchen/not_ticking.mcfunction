execute unless entity @a[scores={LastRoom=27},limit=1] run function #luigis_mansion:room/normal/kitchen/reset
execute as @e[scores={Room=27},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #kitchen Vacuumables