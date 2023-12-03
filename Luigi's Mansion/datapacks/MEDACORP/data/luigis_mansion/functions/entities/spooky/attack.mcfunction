scoreboard players add @s[scores={ActionTime=52..}] ActionTime 1
scoreboard players set @s[scores={ActionTime=51}] ActionTime 44
scoreboard players add @s[scores={ActionTime=1..50}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players set #temp Move 25
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
tag @s[scores={ActionTime=1}] add bite
tag @s[scores={ActionTime=1}] remove move
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.spooky.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=1..19}] run function luigis_mansion:entities/ghost/move_forward
tag @s[scores={ActionTime=20}] remove attack
tag @s[scores={ActionTime=20}] remove bite
tag @s[scores={ActionTime=20}] add breathe
scoreboard players set @s[scores={ActionTime=20}] Move 15
scoreboard players set @s[scores={ActionTime=20}] Dialog 20
scoreboard players reset @s[scores={ActionTime=20}] ActionTime
execute at @s[scores={ActionTime=1..19}] positioned ^ ^ ^0.3 if entity @e[tag=same_room,tag=!spectator,tag=player,scores={Invulnerable=0},distance=..0.7,tag=!grabbed,limit=1] run scoreboard players set @s ActionTime 30

scoreboard players set @s[scores={ActionTime=30}] AnimationProgress 0
tag @s[scores={ActionTime=30}] remove bite
tag @s[scores={ActionTime=30}] add hold
execute if entity @s[scores={ActionTime=30}] positioned ^ ^ ^0.8 as @e[distance=..0.8,tag=game_boy_horror_location] run function luigis_mansion:entities/game_boy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=30}] positioned ^ ^ ^0.8 run scoreboard players operation @s GrabbedID = @a[tag=!spectator,scores={Invulnerable=0},distance=..0.8,tag=!grabbed,limit=1] ID
execute if entity @s[scores={ActionTime=30}] positioned ^ ^ ^0.8 run tag @a[tag=!spectator,scores={Invulnerable=0},distance=..0.8,tag=!grabbed,limit=1] add grabbed
execute if entity @s[scores={GrabbedID=-2147483648..}] run scoreboard players operation #temp ID = @s GrabbedID
execute if entity @s[scores={GrabbedID=-2147483648..}] as @a[tag=grabbed] if score @s ID = #temp ID run tag @s add still_grabbed
execute if entity @s[scores={GrabbedID=-2147483648..}] if entity @a[tag=still_grabbed,limit=1] as @e[tag=chest] if score @s ID = #temp ID run tag @s add grabbed_model
execute if entity @s[scores={ActionTime=30}] run data modify storage luigis_mansion:data damage set value {method:"luigis_mansion:bite",amount:0,knockback:"bite",attacker:-1}
execute if entity @s[scores={ActionTime=30}] run data modify storage luigis_mansion:data damage.amount set from entity @s ArmorItems[3].tag.luigis_mansion.damage.attack
execute if entity @s[scores={ActionTime=30}] store result storage luigis_mansion:data damage.attacker int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={ActionTime=30}] as @a[tag=still_grabbed,limit=1] run function luigis_mansion:entities/player/damage
execute if entity @s[scores={ActionTime=30..51,Sound=0}] run playsound luigis_mansion:entity.spooky.attack hostile @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={ActionTime=30..51,Sound=0}] run scoreboard players set @s Sound 20
execute if entity @s[scores={ActionTime=30..51}] unless entity @a[tag=still_grabbed,limit=1] run scoreboard players set @s ActionTime 53
execute if entity @s[scores={ActionTime=30..51}] if score #mirrored Selected matches 0 at @e[tag=grabbed_model,limit=1] run teleport @s ^0.8 ^ ^ ~30 ~
execute if entity @s[scores={ActionTime=30..51}] if score #mirrored Selected matches 1 at @e[tag=grabbed_model,limit=1] run teleport @s ^-0.8 ^ ^ ~-30 ~
execute if entity @s[scores={ActionTime=51}] run scoreboard players add @a[tag=still_grabbed,limit=1] GrabbedShake 1
tag @a[tag=still_grabbed,limit=1] remove still_grabbed
tag @e[tag=grabbed_model,limit=1] remove grabbed_model
scoreboard players reset #temp ID
scoreboard players set @s[scores={ActionTime=53}] AnimationProgress 0
scoreboard players reset @s[scores={ActionTime=53}] GrabbedID
tag @s[scores={ActionTime=53}] remove hold
tag @s[scores={ActionTime=53}] add let_go
scoreboard players set @s[scores={ActionTime=53..112}] Move 15
execute at @s[scores={ActionTime=53}] store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY
execute at @s[scores={ActionTime=53}] run teleport @s ~ ~1 ~
execute if entity @s[scores={ActionTime=53}] run playsound luigis_mansion:entity.spooky.let_go hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=53..92}] rotated ~-180 0 run function luigis_mansion:entities/ghost/move_forward
execute at @s[scores={ActionTime=53..62}] run teleport @s ~ ~0.2 ~
execute at @s[scores={ActionTime=63..72}] run teleport @s ~ ~0.1 ~
execute at @s[scores={ActionTime=73..82}] run teleport @s ~ ~-0.1 ~
execute at @s[scores={ActionTime=83..92}] run teleport @s ~ ~-0.2 ~
execute at @s[scores={ActionTime=93}] run teleport @s ~ ~-0.4 ~
tag @s[scores={ActionTime=112}] remove attack
tag @s[scores={ActionTime=112}] remove let_go
tag @s[scores={ActionTime=112}] add wake_up
scoreboard players add @s[scores={ActionTime=112}] Dialog 1
scoreboard players reset @s[scores={ActionTime=112}] ActionTime