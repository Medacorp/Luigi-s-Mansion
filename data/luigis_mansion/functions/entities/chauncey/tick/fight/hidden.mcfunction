execute if entity @s[tag=!intro_done] run function luigis_mansion:entities/chauncey/battle_intro/hidden
scoreboard players add @s[scores={Dialog=1584..},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=382..1582},tag=intro_done] Dialog 1
execute positioned ~-1 ~ ~-1 if entity @e[type=minecraft:armor_stand,tag=ball,tag=spit,dx=2,dy=2,dz=2] run scoreboard players add @s[scores={Dialog=381},tag=intro_done] Dialog 1
execute unless entity @e[type=minecraft:armor_stand,tag=ball] run scoreboard players set @s[scores={Dialog=381},tag=intro_done] Dialog 0
scoreboard players add @s[scores={Dialog=83,Health=5001..},tag=intro_done] Dialog 100
scoreboard players add @s[scores={Dialog=82..380},tag=intro_done] Dialog 1
execute at @e[tag=rocking_horse] positioned ~ ~-3 ~-1.5 if entity @e[tag=same_room,tag=!spectator,limit=1,dx=20,dy=3,dz=2] run scoreboard players add @s[scores={Dialog=81},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=22..80},tag=intro_done] Dialog 1
execute at @e[tag=rocking_horse] positioned ~ ~-3 ~-1.5 if entity @e[tag=same_room,tag=!spectator,limit=1,dx=20,dy=3,dz=2] run scoreboard players add @s[scores={Dialog=21},tag=intro_done] Dialog 1
scoreboard players add @s[scores={Dialog=..20},tag=intro_done] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s[tag=intro_done] Dialog 1
execute if entity @s[scores={Dialog=1},tag=intro_done] run tag @s remove laugh
scoreboard players set @s[scores={Dialog=1},tag=intro_done] ActionTime 0
execute if entity @s[scores={Dialog=1},tag=intro_done] run function luigis_mansion:entities/chauncey/grab_rambler
tag @s[scores={Dialog=1,Health=..5000},tag=intro_done] add left
teleport @s[scores={Dialog=1..20},tag=left,tag=intro_done] ~ ~ ~ -180 0
teleport @s[scores={Dialog=1..20},tag=!left,tag=intro_done] ~ ~ ~ 0 0
execute if entity @s[scores={Dialog=20},tag=left,tag=intro_done] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=20},tag=!left,tag=intro_done] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=21},tag=intro_done] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
tag @s[scores={Dialog=21},tag=intro_done] add rambling
scoreboard players set @s[scores={Dialog=22},tag=intro_done] AnimationProg 0
tag @s[scores={Dialog=22},tag=intro_done] remove rambling
tag @s[scores={Dialog=22},tag=intro_done] add attack
teleport @s[scores={Dialog=61..80},tag=left,tag=intro_done] ~ ~ ~ 0 0
teleport @s[scores={Dialog=61..80},tag=!left,tag=intro_done] ~ ~ ~ -180 0
execute if entity @s[scores={Dialog=80},tag=left,tag=intro_done] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=80},tag=!left,tag=intro_done] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=81},tag=intro_done] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
tag @s[scores={Dialog=81},tag=intro_done] add rambling
scoreboard players set @s[scores={Dialog=82},tag=intro_done] AnimationProg 0
tag @s[scores={Dialog=82},tag=intro_done] remove rambling
tag @s[scores={Dialog=82},tag=intro_done] add attack
teleport @s[scores={Dialog=121..140},tag=intro_done] ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=140},tag=intro_done] positioned ~-2.5 ~1 ~-11.5 rotated 0 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=140},tag=intro_done] positioned ~-2.5 ~1 ~11.5 rotated -180 0 run function luigis_mansion:spawn_entities/rocking_horse/big
execute if entity @s[scores={Dialog=141..381},tag=intro_done] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
tag @s[scores={Dialog=141},tag=intro_done] add rambling
scoreboard players set @s[scores={Dialog=182},tag=intro_done] AnimationProg 0
tag @s[scores={Dialog=182},tag=intro_done] remove rambling
tag @s[scores={Dialog=182},tag=intro_done] add attack
tag @s[scores={Dialog=240},tag=intro_done] add rambling
tag @s[scores={Dialog=260},tag=intro_done] remove rambling
tag @s[scores={Dialog=260},tag=intro_done] add grab_rambler
tag @s[scores={Dialog=280},tag=intro_done] remove grab_rambler
tag @s[scores={Dialog=280},tag=intro_done] add rambling
execute if entity @s[scores={Dialog=280},tag=intro_done] positioned ~17 ~3 ~-6.5 facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
execute if entity @s[scores={Dialog=300},tag=intro_done] positioned ~17 ~3 ~6.5 facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
scoreboard players set @s[scores={Dialog=310},tag=intro_done] AnimationProg 0
tag @s[scores={Dialog=310},tag=intro_done] remove rambling
tag @s[scores={Dialog=310},tag=intro_done] add grab_rambler
tag @s[scores={Dialog=330},tag=intro_done] remove grab_rambler
tag @s[scores={Dialog=330},tag=intro_done] add rambling
execute if entity @s[scores={Dialog=320},tag=intro_done] positioned ~2 ~3 ~ facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/real
execute if entity @s[scores={Dialog=340},tag=intro_done] positioned ~17 ~3 ~-6.5 facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
execute if entity @s[scores={Dialog=360},tag=intro_done] positioned ~17 ~3 ~6.5 facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:spawn_entities/ball/chauncey/big
scoreboard players set @s[scores={Dialog=380},tag=intro_done] AnimationProg 0
tag @s[scores={Dialog=380},tag=intro_done] remove rambling
tag @s[scores={Dialog=380..381},tag=intro_done] add laugh
scoreboard players set @s[scores={Dialog=382},tag=intro_done] VulnerableTime 240
scoreboard players set @s[scores={Dialog=382},tag=intro_done] AnimationProg 0
tag @s[scores={Dialog=382},tag=intro_done] remove laugh
tag @s[scores={Dialog=382},tag=intro_done] add dizzy
scoreboard players set @s[scores={Dialog=382},tag=intro_done] ActionTime 0
execute at @s[scores={Dialog=382},tag=intro_done] rotated ~ 0 run teleport @s ~4 ~-2 ~ ~ ~
tag @s[scores={Dialog=622},tag=intro_done] remove dizzy
teleport @s[scores={Dialog=622}] 792.0 20 -48.0
scoreboard players set @s[scores={Dialog=622},tag=intro_done] Dialog 0
teleport @s[scores={Dialog=1462}] 796.0 20 ~
execute if entity @s[scores={Dialog=1522..1581}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
scoreboard players set @s[scores={Dialog=1522}] AnimationProg 0
tag @s[scores={Dialog=1522}] add scream
execute if entity @s[scores={Dialog=1522}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=1542}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={Dialog=1562}] remove scream
teleport @s[scores={Dialog=1562..1581}] ~ ~-0.1 ~
teleport @s[scores={Dialog=1582}] ~ ~ ~ -180 0
tag @s[scores={Dialog=1582}] add fast_bounce
scoreboard players set @s[scores={Dialog=1582}] PathStep 0
scoreboard players add @s[scores={Dialog=1583}] PathStep 1
teleport @s[scores={Dialog=1583,PathStep=1..5}] ^ ^0.4 ^0.4
teleport @s[scores={Dialog=1583,PathStep=6..10}] ^ ^-0.4 ^0.4
execute at @s[scores={Dialog=1583,PathStep=10}] as @e[distance=..1,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute at @s[scores={Dialog=1583,PathStep=10}] run effect give @a[distance=..1,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute at @s[scores={Dialog=1583,PathStep=10}] run scoreboard players set @a[distance=..1,gamemode=!spectator] ForcedDamage 4
execute at @s[y_rotation=135..-135,scores={Dialog=1583}] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=-135..-45,scores={Dialog=1583}] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=-45..45,scores={Dialog=1583}] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run teleport @s ~ ~ ~ ~90 0
execute at @s[y_rotation=45..135,scores={Dialog=1583}] unless block ^ ^1 ^2 #luigis_mansion:all_ignore run scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1583,PathStep=10}] PathStep 0
teleport @s[scores={Dialog=1584}] 792.0 20 -48.0
execute if entity @s[scores={Dialog=1585..}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ 0
scoreboard players set @s[scores={Dialog=1585}] AnimationProg 0
tag @s[scores={Dialog=1585}] remove fast_bounce
scoreboard players set @s[scores={Dialog=1614}] AnimationProg 0
tag @s[scores={Dialog=1614}] add scream
execute if entity @s[scores={Dialog=1614}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={Dialog=1634}] remove scream
tag @s[scores={Dialog=1634}] add grab_rambler
tag @s[scores={Dialog=1634}] remove left
tag @s[scores={Dialog=1654}] remove grab_rambler
scoreboard players set @s[scores={Dialog=1654}] Dialog 0

execute if entity @s[scores={Health=..5000,Dialog=..140}] run tag @e[tag=rocking_horse] add fast