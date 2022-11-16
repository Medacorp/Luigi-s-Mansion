scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] at @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] rotated ~ 0 positioned ^ ^ ^-0.7 if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] at @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] rotated ~ 0 positioned ^ ^ ^-0.7 unless block ~ ~ ~ #luigis_mansion:ghosts_ignore run scoreboard players set @s ActionTime 0
tag @s[scores={ActionTime=0}] remove attack
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1..40}] run function luigis_mansion:animations/twirler/basher_stun
scoreboard players set @s[scores={ActionTime=41}] AnimationProg 0
execute if entity @s[scores={ActionTime=41..60}] run function luigis_mansion:animations/twirler/basher_appear
scoreboard players set @s[scores={ActionTime=61}] AnimationProg 0
execute if entity @s[scores={ActionTime=61..90}] run function luigis_mansion:animations/twirler/basher_complain

tag @s[scores={ActionTime=1}] add stunnable
tag @s[scores={ActionTime=1}] add visible
data modify entity @s[scores={ActionTime=1..40}] ArmorItems[3].id set value "minecraft:oak_button"
data modify entity @s[scores={ActionTime=1..40}] HandItems[0].id set value "minecraft:oak_button"
data modify entity @s[scores={ActionTime=1..40}] HandItems[1].id set value "minecraft:oak_button"
data modify entity @s[scores={ActionTime=1..40}] CustomNameVisible set value 0b
execute at @s[scores={ActionTime=1..40}] run particle minecraft:dust 0.7 1 1 1 ~-0.2 ~0.2 ~-0.2 0.4 0.4 0.4 0 50 force
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.blue_twirler.spawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=41}] ArmorItems[3].id set value "minecraft:leather_chestplate"
data modify entity @s[scores={ActionTime=41}] HandItems[0].id set value "minecraft:leather_chestplate"
data modify entity @s[scores={ActionTime=41}] HandItems[1].id set value "minecraft:leather_chestplate"
data modify entity @s[scores={ActionTime=41}] CustomNameVisible set value 1b
execute if entity @s[scores={ActionTime=41}] run summon minecraft:armor_stand ~ ~0.5 ~ {CustomName:'{"translate":"luigis_mansion:message.basher_scare","color":"yellow","bold":true}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Fire:32767s,Tags:["basher_scare"]}
execute if entity @s[scores={ActionTime=41}] as @e[distance=..5,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=41}] as @a[distance=3..5,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/scare/normal
execute if entity @s[scores={ActionTime=41}] as @a[distance=..3,scores={Invulnerable=0},tag=!spectator] run function luigis_mansion:entities/player/scare/bash
execute if entity @s[scores={ActionTime=41}] as @a[distance=..3,scores={Invulnerable=1..},tag=!spectator] run function luigis_mansion:entities/player/scare/normal
execute if entity @s[scores={ActionTime=41}] run scoreboard players set @a[distance=..5,scores={Invulnerable=0},tag=!spectator] MaxHealth 70
execute if entity @s[scores={ActionTime=41}] run scoreboard players set @a[distance=..3,scores={Invulnerable=0},tag=!spectator] MaxHealth 50
execute if entity @s[scores={ActionTime=41}] run effect give @a[distance=..5,scores={Invulnerable=0},tag=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[scores={ActionTime=41}] run scoreboard players set @a[distance=..5,scores={Invulnerable=0},tag=!spectator] ForcedDamage 4
execute if entity @s[scores={ActionTime=41}] if entity @a[distance=..5,tag=!spectator] run tag @s add laugh
tag @s[scores={ActionTime=60},tag=laugh] remove attack
scoreboard players set @s[scores={ActionTime=60},tag=laugh] AnimationProg 0
scoreboard players set @s[scores={ActionTime=60},tag=laugh] ActionTime 0
execute if entity @s[scores={ActionTime=81}] run playsound luigis_mansion:entity.blue_twirler.complain_basher hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=90}] add vanish
tag @s[scores={ActionTime=90}] remove attack
scoreboard players set @s[scores={ActionTime=90}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=90}] ActionTime 0