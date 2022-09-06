execute if entity @s[tag=dead] run playsound luigis_beta_mansion:entity.shining_ghost.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.2 0.2 1 10
execute if entity @s[tag=dead] run function luigis_beta_mansion:entities/beta_shining_ghost/drop_loot

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=visible] run function luigis_beta_mansion:entities/beta_shining_ghost/collide

execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=beta_shining_ghost,tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 2.. unless entity @e[distance=..0.7,tag=same_room,tag=!spectator,limit=1] unless entity @e[tag=beta_shining_ghost,tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

function luigis_beta_mansion:animations/shining_ghost/bounce

data modify entity @s[tag=visible] ArmorItems[3].id set value "minecraft:leather_chestplate"
execute at @s[tag=visible] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!fleeing,tag=move_up] rotated ~ 0 run function luigis_beta_mansion:entities/beta_shining_ghost/move_up
execute at @s[tag=!fleeing,tag=!move_up] rotated ~ 0 run function luigis_beta_mansion:entities/beta_shining_ghost/move_down
execute at @s[tag=fleeing] rotated ~ 0 run function luigis_beta_mansion:entities/beta_shining_ghost/flee
tag @s remove fleeing
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall