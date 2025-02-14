scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"body_slam"}

$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=30}] run playsound luigis_mansion:entity.ghost.charge_up hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={ActionTime=1..40}] ^ ^ ^0.0125
execute if entity @s[scores={ActionTime=41..60}] if block ~ ~-0.25 ~ #luigis_mansion:ghosts_ignore unless block ~ ~-0.5 ~ #luigis_mansion:ghosts_ignore run playsound luigis_mansion:entity.ghost.body_slam hostile @a[tag=same_room] ~ ~ ~ 1
execute if block ~ ~-0.25 ~ #luigis_mansion:ghosts_ignore run teleport @s[scores={ActionTime=41..60}] ~ ~-0.25 ~
execute at @s[scores={ActionTime=41..60}] if entity @e[tag=luigi,distance=..2,scores={Invulnerable=0}] run tag @s add laugh
execute at @s[scores={ActionTime=41..60}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"body_slam"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={ActionTime=41..60}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute at @s[scores={ActionTime=41..60}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute at @s[scores={ActionTime=41..60}] as @e[tag=luigi,distance=..2] run function luigis_mansion:entities/luigi/damage
execute at @s[scores={ActionTime=41..60}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=60},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0