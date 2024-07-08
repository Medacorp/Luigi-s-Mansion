scoreboard players add @s[scores={Dialog=81..161}] Dialog 1
scoreboard players add @s[scores={Dialog=1..79}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run data remove entity @s data.animation
tag @s[tag=!visible] add visible
execute unless entity @s[scores={Dialog=1..}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run tag @s[distance=..8] remove visible
execute unless entity @s[scores={Dialog=1..}] if entity @e[tag=spooky_bone,limit=1] run scoreboard players set @s Dialog 1
execute unless entity @s[scores={Dialog=1..}] at @e[tag=same_room,tag=!spectator,tag=player,distance=..4,limit=1] run function luigis_mansion:entities/ghost/set_target
execute unless entity @s[scores={Dialog=1..}] if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..4,limit=1] run scoreboard players set @s Dialog 1
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.spooky.wake_up hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"wake_up"}
execute if entity @s[scores={Dialog=21}] run playsound luigis_mansion:entity.spooky.pant hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=31}] run playsound luigis_mansion:entity.spooky.pant hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={Dialog=40}] data.animation set value {namespace:"luigis_mansion",id:"bark"}

execute at @s[scores={Dialog=40..80},tag=!attack] facing entity @e[tag=same_room,tag=target,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=40}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=40}] if score #boneyard Wave matches 1..4 run scoreboard players add #boneyard Wave 1
execute if entity @s[scores={Dialog=60}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={Dialog=80},tag=!attack] data.animation set value {namespace:"luigis_mansion",id:"move"}
execute if entity @e[tag=spooky_bone,limit=1] run scoreboard players set @s[scores={Dialog=80}] Dialog 163
scoreboard players set @s[scores={Dialog=80},tag=!attack] TargetTask 1
execute at @s[scores={Dialog=80},tag=!attack] positioned ^ ^ ^2 at @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:entities/ghost/set_target_to_attack
execute if entity @s[tag=attack] run function luigis_mansion:entities/spooky/ai/mansion/normal/attack
scoreboard players set @s[scores={Dialog=80},tag=!attack,nbt={data:{animation:{namespace:"luigis_mansion",id:"breathe"}}}] Dialog 20
scoreboard players add @s[scores={Dialog=80},tag=!attack,nbt={data:{animation:{namespace:"luigis_mansion",id:"wake_up"}}}] Dialog 1
execute if entity @s[scores={Dialog=82}] run playsound luigis_mansion:entity.spooky.pant hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=102}] run playsound luigis_mansion:entity.spooky.pant hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Dialog=122..161},tag=!attack] facing entity @e[tag=same_room,tag=target,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
data modify entity @s[scores={Dialog=122}] data.animation set value {namespace:"luigis_mansion",id:"bark"}
execute if entity @s[scores={Dialog=122}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=142}] run playsound luigis_mansion:entity.spooky.bark hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={Dialog=162}] data.animation set value {namespace:"luigis_mansion",id:"move"}
data modify entity @s[scores={Dialog=162}] data.target_pos set value [0.0d,0.0d,0.0d]
execute if entity @s[scores={Dialog=162}] store result entity @s data.target_pos[0] double 0.01 run scoreboard players get @s HomeX
execute if entity @s[scores={Dialog=162}] store result entity @s data.target_pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[scores={Dialog=162}] store result entity @s data.target_pos[2] double 0.01 run scoreboard players get @s HomeZ
scoreboard players set @s[scores={Dialog=162..163}] TargetTask 3
data remove entity @s[scores={Dialog=162},tag=reached_target] data.animation
data modify entity @s[scores={Dialog=162},tag=reached_target] Pos set from entity @s data.target_pos
execute if entity @s[scores={Dialog=162},tag=reached_target] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotation
scoreboard players set @s[scores={Dialog=162},tag=reached_target] TargetTask 0
scoreboard players reset @s[scores={Dialog=162},tag=reached_target] Dialog
data modify entity @s[scores={Dialog=163}] data.target_pos set from entity @e[tag=spooky_bone,limit=1] Pos
execute if entity @s[scores={Dialog=163}] store result entity @s data.target_pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @e[tag=spooky_bone,scores={PathStep=0..},limit=1] run tag @s[scores={Dialog=163},tag=reached_target] remove reached_target
scoreboard players set @s[scores={Dialog=163},tag=reached_target] VulnerableTime 5
data modify entity @s[scores={Dialog=163},tag=reached_target] data.animation set value {namespace:"luigis_mansion",id:"lick"}