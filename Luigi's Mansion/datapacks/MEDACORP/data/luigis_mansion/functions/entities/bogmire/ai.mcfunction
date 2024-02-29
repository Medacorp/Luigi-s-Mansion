function luigis_mansion:entities/ghost/ai

execute if entity @s[tag=hurt] run function luigis_mansion:entities/bogmire/ai/hurt
execute if entity @s[tag=!hurt,scores={StunTime=0}] run function luigis_mansion:entities/bogmire/ai/not_hurt with entity @s data.mansion

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/bogmire/ambient_sound
execute if entity @s[tag=dying,scores={DeathTime=1}] run playsound luigis_mansion:entity.bogmire.succumb hostile @a[tag=same_room] ~ ~ ~ 1

execute if entity @s[tag=dead] run function luigis_mansion:entities/bogmire/at_death with entity @s data.mansion