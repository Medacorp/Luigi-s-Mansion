scoreboard players operation #temp Room = @s Room
execute as @a run function #luigis_mansion:get_same_room
execute as @e[tag=ghost] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room

scoreboard players operation @s[scores={HealthMusic=1..}] LastHealthMusic = @s HealthMusic
scoreboard players remove @s[scores={Music=1..}] Music 1
scoreboard players remove @s[scores={GradualMusic=1..}] GradualMusic 1
scoreboard players set @s[scores={Music=1..}] HealthMusic 0
scoreboard players set @s[scores={Music=1..}] GradualMusic 0
scoreboard players remove @s[scores={HealthMusic=1..}] HealthMusic 300
scoreboard players operation @s[scores={HealthMusic=1..,Health=1..}] HealthMusic -= @s Health
scoreboard players operation @s[scores={HealthMusic=1..,Health=1..}] HealthMusic -= @s Health

execute if entity @s[gamemode=!spectator] run function #luigis_mansion:other/music/correct

execute if entity @s[scores={Music=0}] run function luigis_mansion:other/music/play

tag @e[tag=same_room] remove same_room