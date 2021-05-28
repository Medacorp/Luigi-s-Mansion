scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1..40}] run function luigis_mansion:animations/puncher/basher_stun
scoreboard players set @s[scores={ActionTime=41}] AnimationProg 0
execute if entity @s[scores={ActionTime=41..60}] run function luigis_mansion:animations/puncher/appear

data modify entity @s[scores={ActionTime=1}] ArmorItems[3].id set value "minecraft:stone_button"
data modify entity @s[scores={ActionTime=1}] HandItems[0].id set value "minecraft:stone_button"
data modify entity @s[scores={ActionTime=1}] HandItems[1].id set value "minecraft:stone_button"
data modify entity @s[scores={ActionTime=1}] CustomNameVisible set value 0b
execute at @s[scores={ActionTime=1..40}] run particle minecraft:dust 0.7 1 1 1 ~-0.2 ~0.2 ~-0.2 0.4 0.4 0.4 0 50 force
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.purple_puncher.spawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=41}] ArmorItems[3].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={ActionTime=41}] HandItems[0].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={ActionTime=41}] HandItems[1].id set value "minecraft:diamond_pickaxe"
data modify entity @s[scores={ActionTime=41}] CustomNameVisible set value 1b
execute if entity @s[scores={ActionTime=41}] run summon minecraft:armor_stand ~ ~0.5 ~ {CustomName:'{"translate":"luigis_mansion:message.basher_scare","color":"yellow","bold":true}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Fire:32767s,Tags:["basher_scare"]}
execute if entity @s[scores={ActionTime=41}] as @e[distance=..5,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=41}] as @a[distance=..5,gamemode=!spectator] at @s run function luigis_mansion:entities/player/scare
execute if entity @s[scores={ActionTime=41}] run scoreboard players set @a[distance=..5,gamemode=!spectator] MaxHealth 70
execute if entity @s[scores={ActionTime=41}] run scoreboard players set @a[distance=..3,gamemode=!spectator] MaxHealth 50
execute if entity @s[scores={ActionTime=41}] run effect give @a[distance=..5,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[scores={ActionTime=41}] run scoreboard players set @a[distance=..5,gamemode=!spectator] ForcedDamage 4
execute if entity @s[scores={ActionTime=41}] if entity @a[distance=..5,gamemode=!spectator] run tag @s add laugh
tag @s[scores={ActionTime=41},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
scoreboard players set @s[scores={ActionTime=60}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0