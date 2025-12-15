execute unless entity @a[scores={LastRoom=43},limit=1] run function #luigis_mansion:room/hidden/bathroom_2/reset
execute as @e[scores={Room=43},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #bathroom_2 Vacuumables

scoreboard players set @e[scores={Room=43},nbt={data:{entity:{namespace:"luigis_mansion",id:"miss_petunia"}}}] Dialog 0