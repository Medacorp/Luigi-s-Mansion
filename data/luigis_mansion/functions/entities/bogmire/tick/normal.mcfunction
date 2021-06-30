execute at @s[tag=!fight,tag=!vanish] run function luigis_mansion:entities/bogmire/tick/intro/normal
execute at @s[tag=fight,tag=!vanish] run function luigis_mansion:entities/bogmire/tick/fight/normal

tag @s[tag=vanish,tag=fight] add disappear
tag @s[tag=vanish,tag=fight] remove vanish

execute at @s[tag=appear] run function luigis_mansion:entities/bogmire/appear
execute at @s[tag=shadow_hit] run function luigis_mansion:animations/bogmire/hurt
execute at @s[tag=vanish_flee] run function luigis_mansion:animations/bogmire/flee
execute at @s[tag=!appear,tag=!shadow_hit,tag=!vanish_flee] run function luigis_mansion:animations/bogmire/idle
