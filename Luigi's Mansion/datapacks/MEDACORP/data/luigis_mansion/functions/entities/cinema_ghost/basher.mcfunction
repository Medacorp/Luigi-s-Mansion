scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] at @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] rotated ~ 0 positioned ^ ^ ^-0.7 if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] at @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] rotated ~ 0 positioned ^ ^ ^-0.7 unless block ~ ~ ~ #luigis_mansion:ghosts_ignore run scoreboard players set @s ActionTime 0
tag @s[scores={ActionTime=0}] remove attack
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute if entity @s[scores={ActionTime=1..40}] run function luigis_mansion:old_animations/grabbing_ghost/basher_stun
scoreboard players set @s[scores={ActionTime=41}] AnimationProgress 0
execute if entity @s[scores={ActionTime=41..60}] run function luigis_mansion:old_animations/grabbing_ghost/basher_appear
scoreboard players set @s[scores={ActionTime=61}] AnimationProgress 0
execute if entity @s[scores={ActionTime=61..90}] run function luigis_mansion:old_animations/grabbing_ghost/basher_complain

tag @s[scores={ActionTime=1}] add stunnable
tag @s[scores={ActionTime=1}] add visible
execute if entity @s[scores={ActionTime=1..40},tag=visible] run function luigis_mansion:entities/ghost/turn_invisible
execute at @s[scores={ActionTime=1..40}] run particle minecraft:dust 0.7 1 1 1 ~-0.2 ~0.2 ~-0.2 0.4 0.4 0.4 0 50 force
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.cinema_ghost.spawn_basher hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41},tag=!visible] run function luigis_mansion:entities/ghost/turn_visible
execute if entity @s[scores={ActionTime=41}] run summon minecraft:armor_stand ~ ~0.5 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:message.basher_scare","color":"yellow","bold":true}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,HasVisualFire:1b,Tags:["basher_scare"]}
execute if entity @s[scores={ActionTime=41}] as @e[distance=..5,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=41}] if entity @a[distance=..5,tag=!spectator] run tag @s add laugh
execute if entity @s[scores={ActionTime=41}] as @a[distance=..5,scores={Invulnerable=1..},tag=!spectator] run function luigis_mansion:entities/player/animation/set/scare/normal
execute if entity @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"scare"},amount:0,limit_health:50,animation:"scare/bash",attacker:-1,no_delete:1b}
execute if entity @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute if entity @s[scores={ActionTime=41}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={ActionTime=41}] as @a[distance=..3,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute if entity @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage merge value {limit_health:70,animation:"scare/normal"}
execute if entity @s[scores={ActionTime=41}] as @a[distance=3..5,gamemode=!spectator] run function luigis_mansion:entities/player/damage
execute if entity @s[scores={ActionTime=41}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=60},tag=laugh] remove attack
scoreboard players set @s[scores={ActionTime=60},tag=laugh] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=60},tag=laugh] ActionTime 0
execute if entity @s[scores={ActionTime=81}] run playsound luigis_mansion:entity.cinema_ghost.complain_basher hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=90}] add vanish
tag @s[scores={ActionTime=90}] remove attack
scoreboard players set @s[scores={ActionTime=90}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=90}] ActionTime 0