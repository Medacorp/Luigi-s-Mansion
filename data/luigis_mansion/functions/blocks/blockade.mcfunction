execute if block ~1 ~ ~ minecraft:iron_trapdoor[open=true,facing=east] run teleport @s ~2 ~ ~
execute if block ~ ~ ~1 minecraft:iron_trapdoor[open=true,facing=south] run teleport @s ~ ~ ~2
execute if block ~-1 ~ ~ minecraft:iron_trapdoor[open=true,facing=west] run teleport @s ~-2 ~ ~
execute if block ~ ~ ~-1 minecraft:iron_trapdoor[open=true,facing=north] run teleport @s ~ ~ ~-2
execute if block ~ ~ ~ minecraft:iron_trapdoor[open=true] run scoreboard players set @s[tag=!in_blockade] ForcedDamage 4
execute if block ~ ~ ~ minecraft:iron_trapdoor[open=true] run effect give @s[tag=!in_blockade] minecraft:instant_damage 1 0 true
execute if block ~ ~ ~ minecraft:iron_trapdoor[open=true] run tag @s add in_blockade
execute unless block ~ ~ ~ minecraft:iron_trapdoor[open=true] run tag @s remove in_blockade