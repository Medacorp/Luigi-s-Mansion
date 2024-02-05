teleport @s ~ ~1.3 ~
execute at @s[tag=dead] run function luigis_mansion:other/drop_loot

execute if entity @s[tag=visible] if predicate luigis_mansion:blue_mouse/start_squeeking run tag @s add squeek

execute at @s[tag=visible,tag=!dead,tag=!removed_from_existence] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:old_entities/blue_mouse/collide

tag @s[tag=flee] remove squeek
tag @s remove flee

execute store result score #temp HomeY run data get entity @s Pos[1] 100
scoreboard players remove #temp HomeY 130
tag @s remove on_floor
execute if score #temp HomeY = @s HomeY run tag @s add on_floor
scoreboard players reset #temp HomeY

execute store result score #temp Room run scoreboard players get @s Room
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"blue_mouse"}}}}]},tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 3.. unless entity @e[distance=..0.7,tag=same_room,tag=!spectator,tag=player,limit=1] unless entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"blue_mouse"}}}}]},tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

data modify entity @s[tag=visible] ArmorItems[3].id set value "minecraft:leather_chestplate"
execute at @s[tag=!rotated,tag=visible] run function luigis_mansion:old_entities/blue_mouse/move
execute at @s[tag=rotated,tag=!squeek] rotated ~ 0 run function luigis_mansion:old_entities/blue_mouse/move_forward
execute if entity @s[tag=disappear,tag=!dead,tag=!squeek] run function luigis_mansion:old_entities/blue_mouse/back_to_start
execute at @s[tag=visible,tag=!squeek] run function luigis_mansion:old_animations/mouse/idle
execute if entity @s[tag=squeek] run function luigis_mansion:old_entities/blue_mouse/squeek
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall
execute at @s run teleport @s ~ ~-1.3 ~