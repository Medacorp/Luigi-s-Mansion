execute at @s[scores={IdleTime=-80}] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.luigi"}',Tags:["luigi_ice"],Invisible:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,0.01f]},ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:38}}]}
execute at @s[scores={IdleTime=-80,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_freeze player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={IdleTime=-80,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_freeze player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=..-10,Sound=0},tag=!gooigi] Sound 2
summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute at @s[scores={IdleTime=..-10}] unless entity @e[tag=home,limit=1,distance=..0.1] run scoreboard players add @s IdleTime 2
execute at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s[scores={IdleTime=-10..-8}] anchored eyes positioned ^ ^ ^ run tag @e[tag=luigi_ice,distance=..0.1,limit=1] add remove_from_existence
execute at @s[scores={IdleTime=-10..-8}] anchored eyes run particle minecraft:item minecraft:diamond_pickaxe{Unbreakable:1b,Damage:4,CustomModelData:47} ^ ^ ^ 0.3 0.3 0.3 0 50 force @a[tag=same_room]
scoreboard players set @s[scores={IdleTime=..-10,Invulnerable=6..}] Invulnerable 5
execute at @s[scores={IdleTime=..-10,Invulnerable=0}] run function luigis_mansion:entities/player/memory/get with entity @s
execute at @s[scores={IdleTime=..-10,Invulnerable=0}] run data modify storage luigis_mansion:data damage set value {amount:1,attacker:-1}
execute if entity @s[scores={IdleTime=..-10,Invulnerable=0}] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker
execute at @s[scores={IdleTime=..-10,Invulnerable=0}] run function luigis_mansion:entities/player/damage
scoreboard players set @s[scores={IdleTime=-10}] Invulnerable 70
execute at @s[scores={IdleTime=-8,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={IdleTime=-8,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={IdleTime=-8,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={IdleTime=-8,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-8,Sound=0},tag=!gooigi] Sound 15
kill @e[tag=home,limit=1]

tag @s remove vacuuming_ghost