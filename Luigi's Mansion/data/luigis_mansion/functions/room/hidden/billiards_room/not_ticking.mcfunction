execute unless entity @a[scores={LastRoom=37},limit=1] run function #luigis_mansion:room/hidden/billiards_room/reset
execute as @e[scores={Room=37},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #billiards_room Vacuumables

execute as @e[scores={Room=37},tag=slim_bankshot] run function luigis_mansion:entities/ghost/go_to_home
scoreboard players set @e[scores={Room=37},tag=slim_bankshot] Dialog 0
scoreboard players set @e[scores={Room=37},tag=slim_bankshot] PathStep 0
tag @e[scores={Room=37},tag=billiards_ball,tag=white] add remove_from_existence