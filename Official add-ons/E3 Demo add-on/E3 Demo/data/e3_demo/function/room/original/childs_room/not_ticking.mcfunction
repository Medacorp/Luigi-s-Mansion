execute unless entity @a[scores={LastRoom=7},limit=1] run function #e3_demo:room/original/childs_room/reset
execute as @e[scores={Room=7},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #childs_room Vacuumables

tag @e[scores={Room=7},tag=haunted_teddy_bear] remove enabled