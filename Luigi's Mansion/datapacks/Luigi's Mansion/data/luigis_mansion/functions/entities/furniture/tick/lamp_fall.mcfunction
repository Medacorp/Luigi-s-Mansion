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
execute at @s[scores={ActionTime=1..51}] align xz as @e[distance=..2,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={ActionTime=1..51}] align xz run effect give @a[distance=..2,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={ActionTime=1..51}] align xz run scoreboard players set @a[distance=..2,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute at @s[scores={ActionTime=1..51}] align xz as @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/knockback/large
execute at @s[scores={ActionTime=1..51}] align xz if entity @a[distance=..2,scores={Invulnerable=0},tag=!spectator] run tag @s add hit
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