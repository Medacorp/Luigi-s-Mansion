execute unless entity @a[scores={LastRoom=16},limit=1] run function #luigis_beta_mansion:room/original/back_yard/reset
execute as @e[scores={Room=16},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #back_yard Vacuumables

execute if score #back_yard Wave matches 1.. run scoreboard players set #back_yard Wave 1
tag @e[scores={Room=16},tag=spooky_bone] add remove_from_existence
tag @e[scores={Room=16},tag=mr_bones] add remove_from_existence
execute as @e[scores={Room=16},tag=spooky] run function luigis_mansion:entities/ghost/go_to_home
scoreboard players set @e[scores={Room=16},tag=spooky] Dialog 0
scoreboard players set @e[scores={Room=16},tag=spooky] AnimationProg 0
scoreboard players set @e[scores={Room=16},tag=spooky] PathStep 0
tag @e[scores={Room=16},tag=spooky] add sleep
tag @e[scores={Room=16},tag=spooky] remove wake_up
tag @e[scores={Room=16},tag=spooky] remove bark
tag @e[scores={Room=16},tag=spooky] remove breathe
tag @e[scores={Room=16},tag=spooky] remove moved_up
tag @e[scores={Room=16},tag=spooky] remove move
tag @e[scores={Room=16},tag=spooky] remove bite
tag @e[scores={Room=16},tag=spooky] remove let_go
tag @e[scores={Room=16},tag=spooky] remove lick
tag @e[scores={Room=16},tag=spooky] remove hold
tag @e[scores={Room=16},tag=spooky] remove let_go