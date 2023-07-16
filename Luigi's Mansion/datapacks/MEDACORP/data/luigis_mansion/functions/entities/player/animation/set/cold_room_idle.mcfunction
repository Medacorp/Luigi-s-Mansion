execute unless entity @s[scores={Animation=3}] run function luigis_mansion:entities/player/animation/set/none
execute unless entity @s[scores={Animation=3}] if entity @s[scores={Shrunk=0}] run playsound luigis_mansion:entity.player.shiver player @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s[scores={Animation=3}] if entity @s[scores={Shrunk=1..}] run playsound luigis_mansion:entity.player.shiver player @a[tag=same_room] ~ ~ ~ 1 2
execute unless entity @s[scores={Animation=3}] run scoreboard players set @s Sound 20
execute unless entity @s[scores={Animation=3}] run scoreboard players set @s IdleTime -21
scoreboard players set @s Animation 3