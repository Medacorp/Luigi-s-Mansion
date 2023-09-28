execute unless entity @a[scores={LastRoom=9},limit=1] run function #e3_demo:room/original/hallway_4/reset
execute as @e[scores={Room=9},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #hallway_4 Vacuumables