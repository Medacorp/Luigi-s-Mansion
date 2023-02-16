function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.shiver player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.shiver player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[tag=!gooigi] Sound 20
scoreboard players set @s Animation 3
scoreboard players set @s IdleTime -21