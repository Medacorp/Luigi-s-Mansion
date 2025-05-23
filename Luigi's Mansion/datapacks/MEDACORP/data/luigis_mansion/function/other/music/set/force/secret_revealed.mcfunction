advancement grant @s only luigis_mansion:jukebox/secret_revealed
execute unless entity @s[scores={MusicType=-22,MusicGroup=0}] if entity @s[scores={GradualMusic=0,HealthMusic=0}] run function luigis_mansion:other/music/reset_progress
execute unless entity @s[scores={MusicType=-22,MusicGroup=0}] if entity @s[scores={GradualMusic=0,HealthMusic=0}] run scoreboard players set @s MusicGroup 0
execute unless entity @s[scores={MusicType=-22,MusicGroup=0}] if entity @s[scores={GradualMusic=0,HealthMusic=0}] run scoreboard players set @s MusicType -22
execute unless entity @s[scores={MusicType=-22,MusicGroup=0}] unless entity @s[scores={GradualMusic=0,HealthMusic=0}] at @s[scores={Jukebox=0}] run playsound luigis_mansion:music.solve_puzzle ambient @s ~ ~ ~ 1000