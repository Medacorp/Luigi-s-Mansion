execute unless entity @a[scores={LastRoom=42},limit=1] run function #luigis_mansion:room/normal/washroom_2/reset
execute as @e[scores={Room=42},tag=ghost,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #washroom_2 Vacuumables