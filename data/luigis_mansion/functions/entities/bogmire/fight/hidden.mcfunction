execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/bogmire/battle_intro/hidden
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0}] Dialog 1
scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0,Dialog=..179}] Dialog 1
scoreboard players add @s[tag=intro_done,scores={VulnerableTime=0,Dialog=181..}] Dialog 1
tag @s[scores={Dialog=2}] remove vanish_flee
execute if entity @s[tag=intro_done,scores={Dialog=70}] run function luigis_mansion:entities/bogmire/turn_invisible
execute if entity @s[tag=intro_done,scores={Dialog=110}] run function luigis_mansion:entities/bogmire/warp/hidden
execute if entity @s[tag=intro_done,scores={Dialog=182}] run tag @e[tag=black_bogmire] add dead
execute if entity @s[tag=intro_done,scores={Dialog=182}] run function luigis_mansion:entities/bogmire/instant_spawn/hidden
execute if entity @s[tag=intro_done,scores={Dialog=202}] run function luigis_mansion:entities/bogmire/instant_spawn/hidden
execute if entity @s[tag=intro_done,scores={Dialog=212}] run function luigis_mansion:entities/bogmire/turn_invisible
execute if entity @s[tag=intro_done,scores={Dialog=222}] run function luigis_mansion:entities/bogmire/instant_spawn/hidden
execute if entity @s[tag=intro_done,scores={Dialog=242}] run function luigis_mansion:entities/bogmire/instant_spawn/hidden
execute if entity @s[tag=intro_done,scores={Dialog=262}] run function luigis_mansion:entities/bogmire/instant_spawn/hidden
execute if entity @s[tag=intro_done,scores={Dialog=182..}] run scoreboard players set @e[tag=black_bogmire,limit=1,scores={SpawnTime=..120}] SpawnTime 120
execute if entity @s[tag=intro_done,scores={Dialog=281}] run scoreboard players set @s Dialog 109

execute align xyz if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball] run tag @s[tag=visible] add shadow_hit
execute align xyz if entity @e[dx=0,dy=2,dz=0,tag=shadow,tag=ball] run scoreboard players set @s[tag=visible] VulnerableTime 280
scoreboard players set @s[scores={VulnerableTime=1}] Dialog 69
tag @s[scores={VulnerableTime=1}] remove shadow_hit

scoreboard players set @e[tag=bogmire_shadow,tag=small,scores={Move=2}] Move 4