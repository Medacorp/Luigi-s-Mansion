execute unless entity @a[scores={LastRoom=62},limit=1] run function #luigis_mansion:room/normal/clockwork_room/reset
execute as @e[scores={Room=62},tag=ghost,tag=!no_remove_on_non_ticking] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #clockwork_room Vacuumables

scoreboard players reset #clockwork_room_clock_1 Searched
scoreboard players reset #clockwork_room_clock_2 Searched
scoreboard players reset #clockwork_room_clock_3 Searched
tag @e[scores={Room=62},nbt={data:{entity:{namespace:"luigis_mansion",id:"clockwork_soldier"}}},tag=!no_wind] add disappear
tag @e[scores={Room=62},nbt={data:{entity:{namespace:"luigis_mansion",id:"clockwork_soldier"}}}] remove activated