scoreboard players add @s[scores={Dialog=81..161}] Dialog 1
scoreboard players set @s Move 3
scoreboard players add @s[scores={Dialog=1..79}] Dialog 1
execute if entity @s[tag=!visible] run function luigis_mansion:entities/spooky/turn_visible
execute unless entity @s[scores={Dialog=1..}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 if entity @s[distance=..8,tag=visible] run function luigis_mansion:entities/spooky/turn_invisible
execute unless entity @s[scores={Dialog=1..}] if entity @e[tag=spooky_bone,limit=1] run scoreboard players set @s Dialog 1
execute unless entity @s[scores={Dialog=1..}] if entity @e[tag=same_room,tag=!spectator,distance=..4,limit=1] run scoreboard players set @s Dialog 1
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.spooky.wake_up hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=1}] AnimationProg 0
tag @s[scores={Dialog=1}] add wake_up
execute if entity @s[scores={Dialog=21}] run playsound luigis_mansion:entity.spooky.breathe hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=31}] run playsound luigis_mansion:entity.spooky.breathe hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run teleport @s[scores={Dialog=37},tag=!moved_up] ~ ~0.2 ~
tag @s[scores={Dialog=37}] add moved_up
tag @s[scores={Dialog=40}] remove wake_up
tag @s[scores={Dialog=40}] remove breathe
tag @s[scores={Dialog=40}] add bark
execute if entity @s[tag=attack] run function luigis_mansion:entities/spooky/attack
execute at @s[scores={Dialog=40..80},tag=!attack] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=40}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=40}] if score #boneyard Wave matches 1..4 run scoreboard players add #boneyard Wave 1
execute if entity @s[scores={Dialog=60}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=80},tag=!attack] remove bark
tag @s[scores={Dialog=80},tag=!attack] add move
execute if entity @e[tag=spooky_bone,limit=1] run scoreboard players set @s[scores={Dialog=80}] Dialog 163
execute at @s[scores={Dialog=80},tag=!attack] run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={Dialog=80},tag=!attack] positioned ^ ^ ^2 if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add attack
execute unless entity @s[scores={PathStep=1..}] run scoreboard players set @s[scores={Dialog=80},tag=attack] AnimationProg 0
tag @s[scores={Dialog=80},tag=attack] add bite
tag @s[scores={Dialog=82}] add wake_up
tag @s[scores={Dialog=82}] remove let_go
execute if entity @s[scores={Dialog=82}] if score #boneyard Wave matches 1..4 run scoreboard players set #boneyard Wave 1
execute if entity @s[scores={Dialog=82}] run playsound luigis_mansion:entity.spooky.breathe hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=102}] run playsound luigis_mansion:entity.spooky.breathe hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Dialog=122..161},tag=!attack] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @s[scores={Dialog=122}] remove wake_up
tag @s[scores={Dialog=122}] add bark
execute if entity @s[scores={Dialog=122}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=142}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=162}] remove bark
tag @s[scores={Dialog=162}] add move
execute at @s[scores={Dialog=162}] run summon minecraft:marker ~ ~ ~ {Tags:["target"],Duration:1}
execute if entity @s[scores={Dialog=162}] store result entity @e[type=minecraft:marker,tag=target,limit=1] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[scores={Dialog=162}] store result entity @e[type=minecraft:marker,tag=target,limit=1] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute at @s[scores={Dialog=162}] facing entity @e[type=minecraft:marker,tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=162}] run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={Dialog=162}] if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRot
execute at @s[scores={Dialog=162}] if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] run tag @s remove move
execute at @s[scores={Dialog=162}] if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] run tag @s remove moved_up
execute at @s[scores={Dialog=162}] if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] at @s run teleport @s ~ ~-0.2 ~
execute at @s[scores={Dialog=162}] positioned ~ ~0.2 ~ if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] run scoreboard players reset @s Dialog
execute at @s[scores={Dialog=163}] facing entity @e[tag=spooky_bone,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=163}] unless entity @e[tag=spooky_bone,distance=..1] run teleport @s ^ ^ ^0.2
execute at @s[scores={Dialog=163}] if entity @e[tag=spooky_bone,distance=..1] run scoreboard players set @s VulnerableTime 5
execute at @s[scores={Dialog=163}] if entity @e[tag=spooky_bone,distance=..1] run tag @s remove move
execute at @s[scores={Dialog=163}] if entity @e[tag=spooky_bone,distance=..1] run tag @s add lick
kill @e[tag=target,limit=1,type=minecraft:marker]