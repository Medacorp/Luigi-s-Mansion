execute at @s[type=minecraft:player] run function luigis_mansion:other/music
scoreboard players remove @s[scores={RoomNoise=1..}] RoomNoise 1
scoreboard players remove @s[scores={Sound=1..}] Sound 1
scoreboard players remove @s[scores={PoltergustSound=1..}] PoltergustSound 1
scoreboard players remove @s[scores={MapSound=1..}] MapSound 1
scoreboard players remove @s[scores={Sound=1..,Shrunk=1..}] Sound 1
scoreboard players remove @s[scores={PoltergustSound=1..,Shrunk=1..}] PoltergustSound 1
scoreboard players remove @s[scores={MapSound=1..,Shrunk=1..}] MapSound 1