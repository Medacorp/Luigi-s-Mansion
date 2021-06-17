teleport @s ~ ~1.3 ~
execute at @s[tag=dead] run function luigis_mansion:entities/gold_mouse/spawn_money
execute at @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute at @s[tag=disappear] run tag @s add dead
execute at @s[tag=dead] run teleport @s ~ -100 ~

execute at @s[tag=fleeing,tag=!played_sound] run playsound luigis_mansion:entity.gold_mouse.ambient hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[tag=fleeing,tag=!played_sound] add played_sound
tag @s[tag=!fleeing] remove played_sound

execute store result score #temp HomeY run data get entity @s Pos[1] 100
scoreboard players remove #temp HomeY 130
tag @s remove on_floor
execute if score #temp HomeY = @s HomeY run tag @s add on_floor
scoreboard players reset #temp HomeY

execute at @s[tag=!dead] run function #luigis_mansion:entities/gold_mouse/tick
scoreboard players set #temp Move 8
execute at @s[tag=!dead] run function luigis_mansion:entities/gold_mouse/move_forward
execute at @s run function luigis_mansion:animations/mouse/idle
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall
execute at @s run teleport @s ~ ~-1.3 ~