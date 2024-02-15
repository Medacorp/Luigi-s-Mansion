execute at @s run function luigis_mansion:entities/ghost/ai
execute at @s unless entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/waiter/ai/hurt with entity @s data.entity
execute at @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/waiter/ai/not_hurt

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/waiter/ambient_sound with entity @s data.entity