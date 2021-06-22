scoreboard players operation #temp LastHealth = @s Health
scoreboard players set #temp Health 12
scoreboard players operation #temp Health *= #multiply_damage Selected
scoreboard players operation #temp Health /= #100 Constants
scoreboard players operation @s[scores={Room=1..}] Health -= #temp Health
scoreboard players remove @s[scores={Room=..0}] Health 12
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp LastHealth /= #100 Constants
scoreboard players operation #temp Health /= #100 Constants
execute unless score #temp LastHealth = #temp Health run scoreboard players set @a[tag=me,limit=1] DamagePitchTimer 6
execute unless score #temp LastHealth = #temp Health run scoreboard players add @a[tag=me,limit=1] DamagePitch 1
execute unless score #temp LastHealth = #temp Health run particle minecraft:damage_indicator ~ ~0.6 ~ 0.2 0.2 0.2 0 1
scoreboard players reset #temp LastHealth
scoreboard players reset #temp Health
execute if entity @s[tag=portrait_ghost,tag=pearl_dropper,scores={Room=1..,Health=1..}] run function luigis_mansion:entities/ghost/pearl_dropper
function luigis_mansion:entities/ghost/top_vacuum_damage
tag @s remove attack
tag @s remove laugh
tag @s remove complain