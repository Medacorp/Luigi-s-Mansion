scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"throw_bone"}
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).assemble hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1..40}] facing entity @e[tag=same_room,tag=!spectator,tag=player,distance=..1,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
$execute if entity @s[scores={ActionTime=40}] run playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=40}] run data modify storage luigis_mansion:data entity set value {owner:-1,damage:{}}
execute if entity @s[scores={ActionTime=40}] run data modify storage luigis_mansion:data entity.damage set from entity @s data.damage
execute if entity @s[scores={ActionTime=40}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={ActionTime=40}] positioned ^ ^0.4 ^ run function luigis_mansion:spawn_entities/ball/bone
$execute if entity @s[scores={ActionTime=60}] run playsound $(namespace):entity.$(id).dismantle hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=60}] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute unless entity @s[tag=!laugh,tag=!complain] run tag @s[scores={ActionTime=60..}] remove attack
scoreboard players set @s[tag=!attack] ActionTime 0