teleport @s[tag=visible] ~ ~1.3 ~
execute at @s[tag=dead] run function luigis_mansion:other/drop_loot
execute at @s[tag=disappear] run tag @s add remove_from_existence

scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionY -= @s EntityYOffset
scoreboard players operation #temp PositionZ = @s PositionZ
tag @s add me
execute as @e[tag=furniture,tag=same_room] if score @s PositionX = #temp PositionX if score @s PositionY = #temp PositionY if score @s PositionZ = #temp PositionZ run tag @e[tag=me,limit=1] add in_furniture
tag @s remove me
tag @s[tag=!in_furniture] add spawn
scoreboard players reset #temp PositionX
scoreboard players reset #temp PositionY
scoreboard players reset #temp PositionZ

execute at @s[tag=spawn,tag=!visible] run playsound luigis_mansion:music.solve_puzzle ambient @a[tag=same_room] ~ ~ ~ 1000
tag @s[tag=spawn] add visible
tag @s[tag=spawn] remove hidden
tag @s[tag=spawn] remove spawn
execute at @s[tag=fleeing,tag=!played_sound] run playsound luigis_mansion:entity.gold_mouse.ambient hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[tag=fleeing,tag=!played_sound] add played_sound
tag @s[tag=!fleeing] remove played_sound

data modify entity @s[tag=visible] ArmorItems[3].id set value "minecraft:leather_chestplate"
scoreboard players add @s[tag=visible] SpawnTime 1
execute at @s[tag=!dead,scores={SpawnTime=20..}] run function #luigis_mansion:entities/gold_mouse/tick
execute at @s[tag=!dead,scores={SpawnTime=20..}] run function luigis_mansion:entities/gold_mouse/move_forward
execute at @s run function luigis_mansion:animations/mouse/idle
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall
execute at @s[tag=visible] run teleport @s ~ ~-1.3 ~