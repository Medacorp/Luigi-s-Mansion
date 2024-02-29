execute if entity @s[tag=dead] run playsound e3_demo:entity.shining_ghost.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run function luigis_mansion:other/drop_loot

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=visible] run function e3_demo:old_entities/shining_ghost/collide

execute store result score #temp Room run scoreboard players get @s Room
execute as @e[nbt={data:{entity:{namespace:"e3_demo",id:"shining_ghost"}}},tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 2.. unless entity @e[distance=..0.7,tag=same_room,tag=!spectator,tag=player,limit=1] unless entity @e[nbt={data:{entity:{namespace:"e3_demo",id:"shining_ghost"}}},tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

function e3_demo:old_animations/shining_ghost/bounce

data modify entity @s[tag=visible] ArmorItems[3].id set value "minecraft:leather_chestplate"
execute at @s[tag=visible] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!flee,tag=move_up] rotated ~ 0 run function e3_demo:old_entities/shining_ghost/move_up
execute at @s[tag=!flee,tag=!move_up] rotated ~ 0 run function e3_demo:old_entities/shining_ghost/move_down
execute at @s[tag=flee] rotated ~ 0 run function e3_demo:old_entities/shining_ghost/flee
tag @s remove flee
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall