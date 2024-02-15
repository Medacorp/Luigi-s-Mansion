scoreboard players add @s[scores={ActionTime=52..111}] ActionTime 1
scoreboard players add @s[scores={ActionTime=1..50}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] store result score @s HomeY run data get entity @s Pos[1] 100
scoreboard players set @s[scores={ActionTime=1}] Sound 0
execute if entity @s[scores={ActionTime=1}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=11}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=21}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=31}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=41}] align xz run playsound luigis_mansion:block.chandelier.spin hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=51,Sound=0}] align xz run playsound luigis_mansion:block.chandelier.fall hostile @a[tag=same_room] ~ ~ ~ 2
scoreboard players set @s[scores={ActionTime=51,Sound=0}] Sound 10
teleport @s[scores={ActionTime=51}] ~ ~-1 ~
execute at @s[scores={ActionTime=1..51}] align xz as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=1..51}] align xz if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s add hit
execute at @s[scores={ActionTime=1..52}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"chandelier"},amount:10,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={ActionTime=1..52}] align xz as @a[distance=..2,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=1..52}] run data remove storage luigis_mansion:data damage
execute at @s[scores={ActionTime=51}] unless block ~ ~-1 ~ minecraft:air run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=52}] align xz run playsound luigis_mansion:block.chandelier.land hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=72},tag=hit] align xz run playsound luigis_mansion:entity.ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=72},tag=!hit] align xz run playsound luigis_mansion:entity.ghost.complain hostile @a[tag=same_room] ~ ~ ~ 2
execute at @s[scores={ActionTime=51..112}] align xz run scoreboard players set @a[distance=..2,tag=!spectator] Invulnerable 10
teleport @s[scores={ActionTime=112}] ~ ~0.125 ~
execute store result score @s Time run data get entity @s Pos[1] 100
execute at @s[scores={ActionTime=112,Sound=0}] align xz run playsound luigis_mansion:block.chandelier.rise hostile @a[tag=same_room] ~ ~ ~ 2
scoreboard players set @s[scores={ActionTime=112,Sound=0}] Sound 10
execute if entity @s[scores={ActionTime=112}] if score @s Time = @s HomeY run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=113}] align xz run playsound luigis_mansion:block.chandelier.stop hostile @a[tag=same_room] ~ ~11 ~ 2
kill @s[scores={ActionTime=113}]
tag @s remove dead
tag @s remove remove_from_existence

summon minecraft:marker ~ ~1.4 ~ {Tags:["location","remove_from_existence"]}
scoreboard players operation #temp Time = @s FurnitureLightLeft
scoreboard players operation #temp2 Time = @s FurnitureLightUp
scoreboard players operation #temp3 Time = @s FurnitureLightForward
execute as @e[tag=location,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute positioned as @e[tag=location,limit=1] run function luigis_mansion:entities/furniture/type/lamp/light
execute if entity @s[scores={MirrorX=-2147483648..}] as @e[tag=location,limit=1] at @s run function luigis_mansion:entities/furniture/type/lamp/mirror_x
execute if entity @s[scores={MirrorZ=-2147483648..}] as @e[tag=location,limit=1] at @s run function luigis_mansion:entities/furniture/type/lamp/mirror_z
kill @e[tag=location,limit=1]