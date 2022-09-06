tag @s remove boo_hurt
tag @s add boo_death

execute facing entity @p[gamemode=!spectator] feet run teleport @s ~ ~ ~ ~-180 ~
execute store result score #temp HomeRot run data get entity @s Rotation[1] 100
scoreboard players operation #temp HomeRot *= #-1 Constants
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #temp HomeRot
scoreboard players reset #temp HomeRot

scoreboard players set @s[scores={HurtTime=1}] HurtTime 2
execute unless entity @s[scores={HurtTime=1..}] run scoreboard players set @s HurtTime 1
scoreboard players set @s[scores={HurtTime=3..}] HurtTime 1

execute at @s run teleport @s ^ ^ ^-0.6
scoreboard players set @s Move 0

execute if entity @s[scores={HurtTime=1}] run scoreboard players operation #temp Room = @s Room
execute if entity @s[scores={HurtTime=1}] run scoreboard players reset #temp Room
execute at @s[scores={HurtTime=2}] if entity @a[gamemode=!spectator,distance=..0.7] run scoreboard players add #ghosts_caught Totals 1
execute at @s[scores={HurtTime=2}] if entity @a[gamemode=!spectator,distance=..0.7] run tag @s add dead
