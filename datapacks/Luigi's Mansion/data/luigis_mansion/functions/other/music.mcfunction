scoreboard players operation @s[scores={HealthMusic=1..}] LastHealthMusic = @s HealthMusic
scoreboard players remove @s[scores={Music=1..}] Music 1
scoreboard players set @s[scores={Music=1..}] HealthMusic 0
scoreboard players remove @s[scores={HealthMusic=1..}] HealthMusic 300
scoreboard players operation @s[scores={HealthMusic=1..,Health=1..}] HealthMusic -= @s Health
scoreboard players operation @s[scores={HealthMusic=1..,Health=1..}] HealthMusic -= @s Health

execute if entity @s[gamemode=!spectator] run function #luigis_mansion:correct_music

execute if entity @s[scores={Music=0}] run function luigis_mansion:other/music/play