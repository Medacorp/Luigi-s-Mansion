scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s[scores={ActionTime=41..}] ActionTime 1
scoreboard players set @s[scores={ActionTime=40}] ActionTime 33
scoreboard players add @s[scores={ActionTime=1..39}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"grab"}
tag @s[scores={ActionTime=1}] remove stunable
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] positioned ^ ^ ^0.8 as @e[distance=..0.8,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=1}] positioned ^ ^ ^0.8 run scoreboard players operation @s GrabbedID = @a[tag=!spectator,distance=..0.8,tag=!grabbed,limit=1] ID
execute if entity @s[scores={GrabbedID=-2147483648..}] run scoreboard players operation #temp ID = @s GrabbedID
execute if entity @s[scores={GrabbedID=-2147483648..,ActionTime=1..20}] as @a[tag=!door_animation] unless entity @s[scores={WarpTime=1..}] if score @s ID = #temp ID run tag @s add still_grabbed
execute if entity @s[scores={GrabbedID=-2147483648..,ActionTime=1..20}] as @a[tag=flipped_gravity] if score @s ID = #temp ID run tag @s add flipped_gravity
execute if entity @s[scores={GrabbedID=-2147483648..,ActionTime=1..20}] as @a[tag=!flipped_gravity] if score @s ID = #temp ID run tag @s remove flipped_gravity
execute if entity @s[scores={GrabbedID=-2147483648..,ActionTime=21..}] as @a[tag=grabbed] if score @s ID = #temp ID run tag @s add still_grabbed
execute if entity @s[scores={GrabbedID=-2147483648..}] if entity @a[tag=still_grabbed,limit=1] as @e[tag=chest] if score @s ID = #temp ID run tag @s add grabbed_model
execute if entity @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"grabbed"},animation:{namespace:"luigis_mansion",id:"knockback/harmless_grab"}}
execute if entity @s[scores={ActionTime=20,AttackType=1}] run data modify storage luigis_mansion:data damage.animation set value {namespace:"luigis_mansion",id:"knockback/harmfull_grab"}
execute if entity @s[scores={ActionTime=20,AttackType=1}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute if entity @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute if entity @s[scores={ActionTime=20}] as @a[tag=still_grabbed,limit=1] run function luigis_mansion:entities/player/damage
execute if entity @s[scores={ActionTime=20}] run tag @a[tag=still_grabbed,limit=1] add grabbed
execute if entity @s[scores={ActionTime=20..40}] unless entity @a[tag=still_grabbed,limit=1] run scoreboard players set @s ActionTime 41
execute if entity @s[scores={ActionTime=1..40}] at @e[tag=grabbed_model,limit=1] run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={ActionTime=40,AttackType=1}] run scoreboard players add @a[tag=still_grabbed,limit=1] GrabbedShake 1
tag @a[tag=still_grabbed,limit=1] remove still_grabbed
tag @e[tag=grabbed_model,limit=1] remove grabbed_model
scoreboard players reset #temp ID
tag @s[scores={ActionTime=40}] add laugh
tag @s[scores={ActionTime=41}] add stunable
data modify entity @s[scores={ActionTime=41}] data.animation set value {namespace:"luigis_mansion",id:"let_go"}
scoreboard players reset @s[scores={ActionTime=41}] GrabbedID
$execute if entity @s[scores={ActionTime=41}] run playsound $(namespace):entity.$(id).let_go hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=61},tag=!laugh] add complain
tag @s[scores={ActionTime=61}] remove attack
scoreboard players set @s[scores={ActionTime=61}] ActionTime 0