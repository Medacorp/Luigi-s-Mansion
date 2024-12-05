scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] at @e[tag=same_room,tag=luigi,sort=nearest,limit=1] rotated ~ 0 positioned ^ ^ ^-0.7 if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={ActionTime=1}] at @e[tag=same_room,tag=luigi,sort=nearest,limit=1] rotated ~ 0 positioned ^ ^ ^-0.7 unless block ~ ~ ~ #luigis_mansion:ghosts_ignore run scoreboard players set @s ActionTime 0
tag @s[scores={ActionTime=0}] remove attack
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"basher_stun"}
data modify entity @s[scores={ActionTime=41}] data.animation set value {namespace:"luigis_mansion",id:"appear/basher"}
data modify entity @s[scores={ActionTime=61}] data.animation set value {namespace:"luigis_mansion",id:"basher_complain"}

tag @s[scores={ActionTime=1}] add stunable
tag @s[scores={ActionTime=41}] add visible
execute at @s[scores={ActionTime=1..40}] run particle minecraft:dust{color:11730943,scale:1f} ~-0.2 ~0.2 ~-0.2 0.4 0.4 0.4 0 50 force
$execute if entity @s[scores={ActionTime=41}] run playsound $(namespace):entity.$(id).spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41}] run summon minecraft:armor_stand ~ ~0.5 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:message.basher_scare","color":"yellow","bold":true}',Marker:1b,Invisible:1b,NoGravity:1b,CustomNameVisible:1b,HasVisualFire:1b,Tags:["basher_scare"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty","minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"basher_scare"}}}}]}
execute if entity @s[scores={ActionTime=41}] if entity @e[tag=luigi,distance=..5] run tag @s add laugh
execute if entity @s[scores={ActionTime=41}] as @e[tag=luigi,distance=..5,scores={Invulnerable=1..}] run function luigis_mansion:entities/luigi/animation/set/scare/normal
execute if entity @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"scare"},amount:0,limit_health:50,animation:{namespace:"luigis_mansion",id:"scare/bash"},no_delete:1b}
execute if entity @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute if entity @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute if entity @s[scores={ActionTime=41}] as @e[tag=luigi,distance=..3] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage merge value {limit_health:70,animation:{namespace:"luigis_mansion",id:"scare/normal"}}
execute if entity @s[scores={ActionTime=41}] as @e[tag=luigi,distance=3..5] run function luigis_mansion:entities/luigi/damage
execute if entity @s[scores={ActionTime=41}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=60},tag=laugh] remove attack
$execute if entity @s[scores={ActionTime=81}] run playsound $(namespace):entity.$(id).complain_basher hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=90}] add vanish
tag @s[scores={ActionTime=90}] remove attack
scoreboard players set @s[tag=!attack] ActionTime 0