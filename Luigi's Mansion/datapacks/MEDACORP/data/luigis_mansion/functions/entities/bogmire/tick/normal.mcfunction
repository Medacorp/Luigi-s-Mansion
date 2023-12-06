execute at @s[scores={Room=29},tag=!vanish] run function luigis_mansion:entities/bogmire/tick/intro/normal
execute at @s[scores={Room=74},tag=!vanish] run function luigis_mansion:entities/bogmire/tick/fight/normal

tag @s[tag=vanish,scores={Room=74}] add disappear
scoreboard players set @s[tag=vanish,scores={Room=74}] ActionTime 0
scoreboard players set @s[tag=vanish,scores={Room=74}] AnimationProgress 0
tag @s[tag=vanish,scores={Room=74}] remove vanish

execute at @s[tag=appear] run function luigis_mansion:entities/bogmire/appear
execute at @s[tag=shadow_hit] run function luigis_mansion:old_animations/bogmire/hurt
execute at @s[tag=vanish_flee] run function luigis_mansion:old_animations/bogmire/flee
execute at @s[tag=!appear,tag=!shadow_hit,tag=!vanish_flee] run function luigis_mansion:old_animations/bogmire/idle
