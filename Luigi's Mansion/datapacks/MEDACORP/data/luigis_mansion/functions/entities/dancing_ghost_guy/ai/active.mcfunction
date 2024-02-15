teleport @s[tag=leader] ^ ^ ^0.5
tag @s[tag=leader] add was_leader
execute at @s run function luigis_mansion:entities/ghost/ai
execute at @s unless entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/ghost_guy/ai/hurt with entity @s data.entity
execute at @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/dancing_ghost_guy/ai/not_hurt
execute at @s[tag=was_leader] run teleport @s ^ ^ ^-0.5
tag @s remove was_leader

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/ghost_guy/ambient_sound with entity @s data.entity