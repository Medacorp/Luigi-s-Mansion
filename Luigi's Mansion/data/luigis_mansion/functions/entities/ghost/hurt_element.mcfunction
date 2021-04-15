scoreboard players operation #temp LastHealth = @s Health
scoreboard players set #temp Health 10
scoreboard players operation #temp Health *= #multiply_damage Selected
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @s[scores={Room=1..}] Health -= #temp Health
scoreboard players remove @s[scores={Room=..0}] Health 10
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp LastHealth /= #100 Constants
scoreboard players operation #temp Health /= #100 Constants
execute unless score #temp LastHealth = #temp Health run particle minecraft:damage_indicator ~ ~0.6 ~ 0.2 0.2 0.2 0 1
scoreboard players reset #temp LastHealth
scoreboard players reset #temp Health
tag @s remove burning_heart
tag @s remove watery_heart
tag @s remove frozen_heart
scoreboard players set @s ActionTime 0
scoreboard players set @s[tag=!last_element_hurt] AnimationProg 0
tag @s add last_element_hurt
tag @s remove attack
tag @s remove laugh
tag @s remove complain
tag @s remove vanish
tag @s remove element_hurt
tag @s remove freeze
tag @s[tag=temper_terror] add stunable
tag @s[tag=flash] add stunable
tag @s[tag=blue_blaze] add stunable