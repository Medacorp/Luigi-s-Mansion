function luigis_mansion:entities/ghost/get_target
execute if entity @s[tag=hurt] run function luigis_mansion:entities/floating_whirlindas_male/ai/hurt
execute if entity @s[tag=!hurt,scores={StunTime=0}] run function luigis_mansion:entities/floating_whirlindas_male/ai/not_hurt with entity @s data.mansion

execute at @s[tag=leader,scores={StunTime=0}] facing entity @e[tag=partner,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^0.7
execute at @s run function luigis_mansion:entities/ghost/ai
data modify entity @s[tag=leader,scores={StunTime=0}] Rotation set from entity @s data.partner_direction
execute at @s[tag=leader,scores={StunTime=0}] as @e[tag=partner,limit=1] positioned ^ ^ ^0.7 rotated as @s run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=leader,scores={StunTime=0}] run teleport @s ^ ^ ^-0.7
data modify entity @s[tag=leader,scores={StunTime=0}] Rotation set from entity @s data.dance_rotation
tag @e[tag=partner,limit=1] remove partner
execute at @s[scores={VulnerableTime=1..}] run function luigis_mansion:entities/ghost/heart/show

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying,tag=!vanish,tag=!hidden] run function luigis_mansion:entities/floating_whirlindas_male/ambient_sound

execute if entity @s[tag=dead] run function luigis_mansion:entities/floating_whirlindas_male/at_death with entity @s data.mansion