execute unless entity @a[scores={LastRoom=28},limit=1] run function #luigis_mansion:room/hidden/boneyard/reset
execute as @e[scores={Room=28},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #boneyard Vacuumables

scoreboard players reset #boneyard Wave
tag @e[scores={Room=28},tag=spooky_bone] add remove_from_existence
tag @e[scores={Room=28},tag=mr_bones] add remove_from_existence
execute as @e[scores={Room=28},tag=spooky] run function luigis_mansion:entities/ghost/go_to_home
scoreboard players set @e[scores={Room=28},tag=spooky] Dialog 0
scoreboard players set @e[scores={Room=28},tag=spooky] AnimationProg 0
scoreboard players set @e[scores={Room=28},tag=spooky] PathStep 0
tag @e[scores={Room=28},tag=spooky] add sleep
tag @e[scores={Room=28},tag=spooky] remove wake_up
tag @e[scores={Room=28},tag=spooky] remove bark
tag @e[scores={Room=28},tag=spooky] remove breathe
tag @e[scores={Room=28},tag=spooky] remove moved_up
tag @e[scores={Room=28},tag=spooky] remove move
tag @e[scores={Room=28},tag=spooky] remove bite
tag @e[scores={Room=28},tag=spooky] remove let_go
tag @e[scores={Room=28},tag=spooky] remove lick
tag @e[scores={Room=28},tag=spooky] remove hold
tag @e[scores={Room=28},tag=spooky] remove let_go