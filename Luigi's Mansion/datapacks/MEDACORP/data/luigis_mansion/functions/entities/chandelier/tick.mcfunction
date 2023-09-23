scoreboard players add @s[scores={ActionTime=53..112}] ActionTime 1
scoreboard players add @s[scores={ActionTime=1..51}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] store result score @s HomeY run data get entity @s Pos[1] 100
scoreboard players set @s[scores={ActionTime=1}] Sound 0
execute if entity @s[scores={ActionTime=2}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=12}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=22}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=32}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=42}] align xz run playsound luigis_mansion:furniture.chandelier.spin hostile @a[tag=same_room] ~ ~11 ~ 2
execute if entity @s[scores={ActionTime=52,Sound=0}] align xz run playsound luigis_mansion:furniture.chandelier.fall hostile @a[tag=same_room] ~ ~5 ~ 2
scoreboard players set @s[scores={ActionTime=52,Sound=0}] Sound 10
teleport @s[scores={ActionTime=52}] ~ ~-1 ~
execute at @s[scores={ActionTime=52}] run clone ~-2 ~1 ~-2 ~1 ~3 ~1 ~-2 ~ ~-2 replace force
execute at @s[scores={ActionTime=52}] run fill ~-2 ~ ~-2 ~1 ~3 ~1 minecraft:air replace minecraft:light
execute at @s[scores={ActionTime=2..52}] align xz as @e[distance=..2,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute at @s[scores={ActionTime=2..52}] align xz if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s add hit
execute at @s[scores={ActionTime=2..52}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:chandelier",amount:10,knockback:"large",no_delete:1b}
execute at @s[scores={ActionTime=2..52}] align xz as @a[distance=..2,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute at @s[scores={ActionTime=2..52}] run data remove storage luigis_mansion:data damage
execute at @s[scores={ActionTime=52}] unless block ~ ~-1 ~ minecraft:air run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=53}] align xz run playsound luigis_mansion:furniture.chandelier.land hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=73},tag=hit] align xz run playsound luigis_mansion:entity.ghost.laugh hostile @a[tag=same_room] ~ ~ ~ 2
execute if entity @s[scores={ActionTime=73},tag=!hit] align xz run playsound luigis_mansion:entity.ghost.complain hostile @a[tag=same_room] ~ ~ ~ 2
execute at @s[scores={ActionTime=52..113}] align xz run scoreboard players set @a[distance=..2,tag=!spectator] Invulnerable 10
teleport @s[scores={ActionTime=113}] ~ ~0.125 ~
execute at @s[scores={ActionTime=113}] run fill ~-2 ~ ~-2 ~1 ~4 ~1 minecraft:air replace minecraft:light
execute store result score @s Time run data get entity @s Pos[1] 100
execute at @s[scores={ActionTime=113,Sound=0}] align xz run playsound luigis_mansion:furniture.chandelier.rise hostile @a[tag=same_room] ~ ~ ~ 2
scoreboard players set @s[scores={ActionTime=113,Sound=0}] Sound 10
execute at @s[scores={ActionTime=113}] unless block ~ ~-0.125 ~ minecraft:air run clone ~-2 ~-0.125 ~-2 ~1 ~0.875 ~1 ~-2 ~0.875 ~-2 replace move
execute if entity @s[scores={ActionTime=113}] if score @s Time = @s HomeY run scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=114}] align xz run playsound luigis_mansion:furniture.chandelier.stop hostile @a[tag=same_room] ~ ~11 ~ 2
kill @s[scores={ActionTime=114}]
tag @s remove dead
tag @s remove remove_from_existence