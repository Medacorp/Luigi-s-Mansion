scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s[scores={ActionTime=52..}] ActionTime 1
scoreboard players set @s[scores={ActionTime=51}] ActionTime 44
scoreboard players add @s[scores={ActionTime=1..50}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players set #temp Move 25
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"bite"}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.spooky.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=1..19}] run function luigis_mansion:entities/ghost/move_forward
data modify entity @s[scores={ActionTime=20}] data.animation set value {namespace:"luigis_mansion",id:"breathe"}
tag @s[scores={ActionTime=20}] remove attack
scoreboard players reset @s[scores={ActionTime=20}] ActionTime
execute at @s[scores={ActionTime=1..19}] positioned ^ ^ ^0.3 if entity @e[tag=same_room,tag=luigi,scores={Invulnerable=0},distance=..0.7,tag=!grabbed,limit=1] run scoreboard players set @s ActionTime 30

data modify entity @s[scores={ActionTime=30}] data.animation set value {namespace:"luigis_mansion",id:"hold"}
execute at @s[scores={ActionTime=30}] positioned ^ ^ ^0.3 run scoreboard players operation @s GrabbedID = @e[tag=luigi,scores={Invulnerable=0},distance=..0.7,tag=!grabbed,limit=1] ID
execute at @s[scores={ActionTime=30}] positioned ^ ^ ^0.3 run tag @e[tag=luigi,scores={Invulnerable=0},distance=..0.7,tag=!grabbed,limit=1] add grabbed
execute if entity @s[scores={GrabbedID=-2147483648..}] run scoreboard players operation #temp ID = @s GrabbedID
execute if entity @s[scores={GrabbedID=-2147483648..}] as @e[tag=luigi,tag=grabbed] if score @s ID = #temp ID run tag @s add still_grabbed
execute if entity @s[scores={GrabbedID=-2147483648..}] if entity @e[tag=still_grabbed,limit=1] as @e[tag=chest] if score @s ID = #temp ID run tag @s add grabbed_model
execute if entity @s[scores={ActionTime=30}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"bite"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/bite"}}
execute if entity @s[scores={ActionTime=30}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute if entity @s[scores={ActionTime=30}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute if entity @s[scores={ActionTime=30}] as @e[tag=still_grabbed,limit=1] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=30..51,Sound=0}] run playsound luigis_mansion:entity.spooky.attack hostile @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={ActionTime=30..51,Sound=0}] run scoreboard players set @s Sound 20
execute if entity @s[scores={ActionTime=30..51}] unless entity @e[tag=still_grabbed,limit=1] run scoreboard players set @s ActionTime 53
execute if entity @s[scores={ActionTime=30..51}] unless score #mirrored Selected matches 1 at @e[tag=grabbed_model,limit=1] run teleport @s ^0.8 ^ ^ ~30 ~
execute if entity @s[scores={ActionTime=30..51}] if score #mirrored Selected matches 1 at @e[tag=grabbed_model,limit=1] run teleport @s ^-0.8 ^ ^ ~-30 ~
execute if entity @s[scores={ActionTime=51}] run scoreboard players add @e[tag=still_grabbed,limit=1] GrabbedShake 1
tag @e[tag=still_grabbed,limit=1] remove still_grabbed
tag @e[tag=grabbed_model,limit=1] remove grabbed_model
scoreboard players reset #temp ID
scoreboard players set @s[scores={ActionTime=53}] AnimationProgress 0
scoreboard players reset @s[scores={ActionTime=53}] GrabbedID
data modify entity @s[scores={ActionTime=53}] data.animation set value {namespace:"luigis_mansion",id:"let_go"}
execute if entity @s[scores={ActionTime=53..112}] run scoreboard players set #temp Move 15
execute at @s[scores={ActionTime=53}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute if entity @s[scores={ActionTime=53}] run playsound luigis_mansion:entity.spooky.let_go hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=53..92}] rotated ~-180 0 run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={ActionTime=53..62}] run teleport @s ~ ~0.2 ~
execute at @s[scores={ActionTime=63..72}] run teleport @s ~ ~0.1 ~
execute at @s[scores={ActionTime=73..82}] run teleport @s ~ ~-0.1 ~
execute at @s[scores={ActionTime=83..92}] run teleport @s ~ ~-0.2 ~
tag @s[scores={ActionTime=112}] remove attack
data modify entity @s[scores={ActionTime=112}] data.animation set value {namespace:"luigis_mansion",id:"wake_up"}
scoreboard players reset @s[scores={ActionTime=112}] ActionTime