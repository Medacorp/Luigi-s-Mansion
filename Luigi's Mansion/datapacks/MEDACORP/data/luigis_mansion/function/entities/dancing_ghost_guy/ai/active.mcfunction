function luigis_mansion:entities/ghost/get_target
execute at @s unless entity @s[tag=!hurt,tag=!element_hurt] run function luigis_mansion:entities/ghost_guy/ai/hurt with entity @s data.entity
execute at @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/dancing_ghost_guy/ai/not_hurt

execute at @s[tag=leader] facing entity @e[tag=partner,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^0.5
execute at @s run function luigis_mansion:entities/ghost/ai
data modify entity @s[tag=leader] Rotation set from entity @s data.partner_direction
execute at @s[tag=leader] as @e[tag=partner,limit=1] positioned ^ ^ ^0.5 rotated as @s run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=leader] run teleport @s ^ ^ ^-0.5
data modify entity @s[tag=leader] Rotation set from entity @s data.dance_rotation
tag @e[tag=partner,limit=1] remove partner

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying,tag=!vanish,tag=!hidden] run function luigis_mansion:entities/ghost_guy/ambient_sound with entity @s data.entity