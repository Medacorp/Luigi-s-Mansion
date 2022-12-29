execute unless entity @a[scores={LastRoom=10},limit=1] run function #luigis_mansion_3ds_remake:room/hidden/nursery/reset
execute as @e[scores={Room=10},tag=ghost,tag=!portrait_ghost,tag=!boo] run function luigis_mansion:entities/ghost/non_ticking_room
scoreboard players reset #nursery Vacuumables

tag @e[scores={Room=10},tag=haunted_teddy_bear] remove enabled
execute as @e[scores={Room=10},tag=chauncey] run function luigis_mansion:entities/ghost/go_to_home
execute as @e[scores={Room=10},tag=chauncey] run function luigis_mansion:entities/ghost/turn_visible
scoreboard players set @e[scores={Room=10},tag=chauncey] Dialog 0
scoreboard players set @e[scores={Room=10},tag=chauncey] AnimationProg 0
scoreboard players set @e[scores={Room=10},tag=chauncey] ActionTime 0
tag @e[scores={Room=10},tag=chauncey] add sleep
tag @e[scores={Room=10},tag=chauncey] remove wake_up
tag @e[scores={Room=10},tag=chauncey] remove yawn
tag @e[scores={Room=10},tag=chauncey] remove move
tag @e[scores={Room=10},tag=chauncey] remove grab_rambler
tag @e[scores={Room=10},tag=chauncey] remove rambling
tag @e[scores={Room=10},tag=chauncey] remove attack
tag @e[scores={Room=10},tag=chauncey] remove laugh
tag @e[scores={Room=10},tag=chauncey] remove complain
tag @e[scores={Room=10},tag=chauncey] remove knocked_back
tag @e[scores={Room=10},tag=chauncey] remove vanish