scoreboard players operation #temp Room = @s Room
execute as @e[tag=boo,tag=!ball,tag=!bomb] if score @s Room = #temp Room run tag @a[distance=..0.7] add catching_boo
scoreboard players reset #temp Room
execute unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27}] unless entity @s[scores={MusicType=30}] run scoreboard players set @s[tag=catching_boo] Music 0
execute unless entity @s[scores={MusicType=19}] unless entity @s[scores={MusicType=27}] unless entity @s[scores={MusicType=30}] run scoreboard players set @s[tag=catching_boo] MusicType 30
execute if entity @s[tag=!catching_boo,scores={MusicType=30}] run function luigis_mansion:other/music/set/silence
tag @s remove catching_boo
