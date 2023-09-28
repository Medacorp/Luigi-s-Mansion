execute unless entity @a[scores={LastRoom=62},limit=1] run function #luigis_mansion:room/normal/clockwork_room/reset
execute as @e[scores={Room=62},tag=ghost,tag=!portrait_ghost,nbt=!{ArmorItems:[{tag:{namespace:"luigis_mansion",id:"boo"}}]}] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #clockwork_room Vacuumables

scoreboard players reset #clockwork_room_clock_1 Searched
scoreboard players reset #clockwork_room_clock_2 Searched
scoreboard players reset #clockwork_room_clock_3 Searched
execute as @e[scores={Room=62},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"clockwork_soldier"}}]},tag=!windless] run function luigis_mansion:entities/ghost/go_to_home
scoreboard players set @e[scores={Room=62},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"clockwork_soldier"}}]},tag=!windless] WaitTime 0
scoreboard players set @e[scores={Room=62},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"clockwork_soldier"}}]},tag=!windless] Distance 0
scoreboard players set @e[scores={Room=62},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"clockwork_soldier"}}]},tag=!windless] ActionTime 0
tag @e[scores={Room=62},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"clockwork_soldier"}}]}] remove activated
tag @e[scores={Room=62},nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"clockwork_soldier"}}]}] remove was_activated