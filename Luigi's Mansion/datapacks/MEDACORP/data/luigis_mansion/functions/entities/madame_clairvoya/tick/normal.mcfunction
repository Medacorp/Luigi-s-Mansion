tag @s[tag=!visible,tag=talk] remove talk
execute if entity @s[tag=!visible] run function luigis_mansion:entities/madame_clairvoya/shine
execute if entity @s[tag=visible,tag=!vanish] run function luigis_mansion:entities/madame_clairvoya/tick/normal/visible
tag @s[scores={VulnerableTime=1..},tag=talk] remove talk

execute at @s[tag=nod] run function luigis_mansion:old_animations/madame_clairvoya/nod
execute at @s[tag=explain] run function luigis_mansion:old_animations/madame_clairvoya/explain
execute at @s[tag=power] run function luigis_mansion:old_animations/madame_clairvoya/power
execute at @s[tag=power] positioned ^0.4 ^1.4 ^0.5 run particle minecraft:dust 1 0 1 1 ~ ~ ~ 0 0 0 0 1
execute at @s[tag=power] positioned ^-0.4 ^1.4 ^0.5 run particle minecraft:dust 1 0 1 1 ~ ~ ~ 0 0 0 0 1
execute at @s[tag=laugh,tag=!vanish] run function luigis_mansion:old_animations/madame_clairvoya/laugh
execute at @s[tag=!nod,tag=!explain,tag=!power,tag=!laugh,tag=!vanish] run function luigis_mansion:old_animations/madame_clairvoya/idle