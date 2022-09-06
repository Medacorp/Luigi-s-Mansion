execute if entity @s[scores={Walk=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 1.2 ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[scores={Run=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 2 ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[scores={Sneak=1..},tag=!looking_at_map] run particle minecraft:dust 0.5 0.5 0.5 0.7 ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute if score #temp MirrorX matches -2147483648.. run function luigis_mansion:entities/player/walk_dust_mirror/x
execute if score #temp MirrorZ matches -2147483648.. run function luigis_mansion:entities/player/walk_dust_mirror/z
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ