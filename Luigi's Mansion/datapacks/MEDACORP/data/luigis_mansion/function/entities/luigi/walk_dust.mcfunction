function luigis_mansion:entities/luigi/walk_dust/spawn
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute if score #temp MirrorX matches -2147483648.. run function luigis_mansion:entities/luigi/walk_dust/x
execute if score #temp MirrorZ matches -2147483648.. run function luigis_mansion:entities/luigi/walk_dust/z
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ