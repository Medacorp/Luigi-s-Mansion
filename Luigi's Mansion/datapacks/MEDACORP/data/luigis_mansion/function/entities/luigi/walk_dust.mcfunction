execute if entity @s[tag=walking,tag=!flipped_gravity] run particle minecraft:dust{color:8355711,scale:1.2f} ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[tag=running,tag=!flipped_gravity] run particle minecraft:dust{color:8355711,scale:2f} ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[tag=sneaking,tag=!flipped_gravity] run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~0.2 ~ 0 0 0 0 1
execute if entity @s[tag=walking,tag=flipped_gravity] run particle minecraft:dust{color:8355711,scale:1.2f} ~ ~1.8 ~ 0 0 0 0 1
execute if entity @s[tag=running,tag=flipped_gravity] run particle minecraft:dust{color:8355711,scale:2f} ~ ~1.8 ~ 0 0 0 0 1
execute if entity @s[tag=sneaking,tag=flipped_gravity] run particle minecraft:dust{color:8355711,scale:0.7f} ~ ~1.8 ~ 0 0 0 0 1
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute if score #temp MirrorX matches -2147483648.. run function luigis_mansion:entities/luigi/walk_dust_mirror/x
execute if score #temp MirrorZ matches -2147483648.. run function luigis_mansion:entities/luigi/walk_dust_mirror/z
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ