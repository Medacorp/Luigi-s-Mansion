execute if entity @s[tag=!cold_room_idle,scores={Shrunk=0}] run playsound luigis_mansion:entity.player.shiver player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!cold_room_idle,scores={Shrunk=1..}] run playsound luigis_mansion:entity.player.shiver player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[tag=!cold_room_idle] Sound 20
tag @s add cold_room_idle
scoreboard players set @s[scores={IdleTime=50}] IdleTime 39