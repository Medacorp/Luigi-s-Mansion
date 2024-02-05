scoreboard players add @s[scores={Dialog=81..161}] Dialog 1
scoreboard players add @s[scores={Dialog=1..79}] Dialog 1
execute if entity @s[tag=!visible,tag=!vanish] run function luigis_mansion:old_entities/ghost/turn_visible
execute unless entity @s[scores={Dialog=1..}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8,tag=visible] run function luigis_mansion:old_entities/ghost/turn_invisible
execute unless entity @s[scores={Dialog=1..}] if entity @e[tag=spooky_bone,limit=1] run scoreboard players set @s Dialog 1
execute unless entity @s[scores={Dialog=1..}] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..4,limit=1] run scoreboard players set @s Dialog 1
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.spooky.wake_up hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=1}] AnimationProgress 0
tag @s[scores={Dialog=1}] add wake_up
execute if entity @s[scores={Dialog=21}] run playsound luigis_mansion:entity.spooky.pant hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=31}] run playsound luigis_mansion:entity.spooky.pant hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s run teleport @s[scores={Dialog=37},tag=!moved_up] ~ ~0.4 ~
tag @s[scores={Dialog=37}] add moved_up
tag @s[scores={Dialog=40}] remove wake_up
tag @s[scores={Dialog=40}] remove breathe
tag @s[scores={Dialog=40}] add bark
execute if entity @s[tag=attack] run function luigis_mansion:old_entities/spooky/attack
execute at @s[scores={Dialog=40..80},tag=!attack] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=40}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=40}] if score #boneyard Wave matches 1..4 run scoreboard players add #boneyard Wave 1
execute if entity @s[scores={Dialog=60}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={Dialog=80},tag=!attack] remove bark
tag @s[scores={Dialog=80},tag=!attack] add move
execute if entity @e[tag=spooky_bone,limit=1] run scoreboard players set @s[scores={Dialog=80}] Dialog 163
execute at @s[scores={Dialog=80},tag=!attack] run function luigis_mansion:old_entities/ghost/move_forward
execute at @s[scores={Dialog=80},tag=!attack] positioned ^ ^ ^2 if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[scores={Dialog=82}] run playsound luigis_mansion:entity.spooky.pant hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=102}] run playsound luigis_mansion:entity.spooky.pant hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Dialog=122..161},tag=!attack] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s run teleport @s[scores={Dialog=122}] ~ ~0.4 ~
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
execute at @s[scores={Dialog=162}] run teleport @s ^ ^ ^0.15
execute at @s[scores={Dialog=162}] if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotation
execute at @s[scores={Dialog=162}] if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] run tag @s remove move
execute at @s[scores={Dialog=162}] if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] run tag @s remove moved_up
execute at @s[scores={Dialog=162}] if entity @e[type=minecraft:marker,tag=target,limit=1,distance=..0.2] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute at @s[scores={Dialog=163},tag=!vanish] facing entity @e[tag=spooky_bone,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={Dialog=163},tag=!vanish] unless entity @e[tag=spooky_bone,distance=..1] run teleport @s ^ ^ ^0.15
execute at @s[scores={Dialog=163},tag=!vanish] if entity @e[tag=spooky_bone,distance=..1] run scoreboard players set @s VulnerableTime 5
execute at @s[scores={Dialog=163},tag=!vanish] if entity @e[tag=spooky_bone,distance=..1] run tag @s remove move
execute at @s[scores={Dialog=163},tag=!vanish] if entity @e[tag=spooky_bone,distance=..1] run tag @s add lick
kill @e[tag=target,limit=1,type=minecraft:marker]
execute at @s run teleport @s[scores={Dialog=37..},tag=!moved_up] ~ ~0.6 ~
scoreboard players reset @s[scores={Dialog=37..},tag=!moved_up] Dialog

execute at @s[tag=wake_up] run function luigis_mansion:old_animations/spooky/wake_up
execute at @s[tag=bark] run function luigis_mansion:old_animations/spooky/bark
execute at @s[tag=move] run function luigis_mansion:old_animations/spooky/move
execute at @s[tag=bite] run function luigis_mansion:old_animations/spooky/bite
execute at @s[tag=hold] run function luigis_mansion:old_animations/spooky/hold
execute at @s[tag=let_go] run function luigis_mansion:old_animations/spooky/let_go
execute at @s[tag=breathe] run function luigis_mansion:old_animations/spooky/breathe
execute at @s[tag=lick,tag=!vanish] run function luigis_mansion:old_animations/spooky/lick
execute at @s[tag=!wake_up,tag=!bark,tag=!move,tag=!bite,tag=!hold,tag=!let_go,tag=!breathe,tag=!lick,tag=!vanish] run function luigis_mansion:old_animations/spooky/idle