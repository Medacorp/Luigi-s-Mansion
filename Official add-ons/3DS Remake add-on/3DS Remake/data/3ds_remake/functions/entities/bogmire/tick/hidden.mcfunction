execute at @s[scores={Room=29},tag=!vanish] run function 3ds_remake:entities/bogmire/tick/intro/hidden
execute at @s[scores={Room=74},tag=!vanish] run function 3ds_remake:entities/bogmire/tick/fight/hidden

tag @s[tag=vanish,scores={Room=74}] add disappear
tag @s[tag=vanish,scores={Room=74}] remove vanish

execute at @s[tag=appear] run function luigis_mansion:entities/bogmire/appear
execute at @s[tag=shadow_hit] run function luigis_mansion:old_animations/bogmire/hurt
execute at @s[tag=vanish_flee] run function luigis_mansion:old_animations/bogmire/flee
execute at @s[tag=!appear,tag=!shadow_hit,tag=!vanish_flee] run function luigis_mansion:old_animations/bogmire/idle