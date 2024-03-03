execute unless entity @s[tag=!attack,tag=!visible] run tag @s[tag=basher] remove in_fire
execute unless entity @s[tag=!attack,tag=!visible] run tag @s[tag=basher] remove in_water
execute unless entity @s[tag=!attack,tag=!visible] run tag @s[tag=basher] remove in_ice
function luigis_mansion:entities/ghost/ai
execute unless entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/blue_twirler/ai/hurt with entity @s data.entity
execute if entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/blue_twirler/ai/not_hurt

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/blue_twirler/ambient_sound with entity @s data.entity