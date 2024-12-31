scoreboard players operation #temp Room = @s Room
execute as @e[tag=!model_piece,tag=!reflection] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room

scoreboard players operation @s[scores={HealthMusic=1..}] LastHealthMusic = @s HealthMusic
scoreboard players remove @s[scores={Music=1..}] Music 1
scoreboard players remove @s[scores={GradualMusic=1..}] GradualMusic 1
scoreboard players set @s[scores={Music=1..}] HealthMusic 0
scoreboard players set @s[scores={Music=1..}] GradualMusic 0
scoreboard players remove @s[scores={HealthMusic=1..}] HealthMusic 300
scoreboard players operation @s[scores={Jukebox=0,HealthMusic=1..,Health=1..}] HealthMusic -= @s Health
scoreboard players operation @s[scores={Jukebox=0,HealthMusic=1..,Health=1..}] HealthMusic -= @s Health
execute unless entity @s[scores={Jukebox=0}] run scoreboard players operation @s[scores={HealthMusic=1..,Health=1..}] HealthMusic -= @s JukeboxHealth
execute unless entity @s[scores={Jukebox=0}] run scoreboard players operation @s[scores={HealthMusic=1..,Health=1..}] HealthMusic -= @s JukeboxHealth

function #luigis_mansion:other/music/correct

execute unless entity @s[scores={Jukebox=0}] run function luigis_mansion:entities/player/memory/get with entity @s
execute if entity @s[scores={Music=0,Jukebox=0}] run function luigis_mansion:other/music/play
execute if entity @s[scores={Music=0}] unless entity @s[scores={Jukebox=0}] run function luigis_mansion:other/music/play_jukebox with storage luigis_mansion:data my_memory.music
execute if data storage luigis_mansion:data my_memory run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory

tag @e[tag=same_room] remove same_room
tag @e[tag=exact_same_room] remove exact_same_room