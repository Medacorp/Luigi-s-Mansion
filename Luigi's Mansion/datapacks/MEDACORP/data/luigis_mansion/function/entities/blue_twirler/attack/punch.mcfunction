scoreboard players set @s TargetTask 0
scoreboard players set @s[scores={ActionTime=21..}] SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"punch_wind_up"}
data modify entity @s[scores={ActionTime=41}] data.animation set value {namespace:"luigis_mansion",id:"punch"}
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.ghost.punch hostile @a[tag=same_room] ~ ~ ~ 1
$execute if entity @s[scores={ActionTime=41}] run playsound $(namespace):entity.$(id).attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={ActionTime=41}] positioned ^ ^ ^0.5 if entity @e[tag=luigi,distance=..1,scores={Invulnerable=0}] run tag @s add laugh
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"punch"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute at @s[scores={ActionTime=41}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute at @s[scores={ActionTime=41}] positioned ^ ^ ^0.5 as @e[tag=luigi,distance=..1] run function luigis_mansion:entities/luigi/damage
execute at @s[scores={ActionTime=41}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=41},tag=!laugh] add complain
tag @s[scores={ActionTime=60}] remove attack
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0
execute at @s[scores={ActionTime=..20}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^0.0125 ~ 0
execute at @s[scores={ActionTime=..20}] positioned ^ ^ ^0.7 unless entity @e[tag=luigi,distance=..0.7,tag=target,limit=1] run tag @s remove attack

scoreboard players set @s[tag=!attack] ActionTime 0