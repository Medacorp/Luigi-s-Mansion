scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"swing_arms"}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=5}] run playsound luigis_mansion:entity.biff_atlas.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @e[tag=luigi,distance=..1.6,scores={Invulnerable=0}] run tag @s add laugh
data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"punch"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute as @e[tag=luigi,distance=..1.6] run function luigis_mansion:entities/luigi/damage
data remove storage luigis_mansion:data damage
tag @s[tag=laugh] remove attack
tag @s[scores={ActionTime=10}] remove attack
scoreboard players set @s[tag=!attack] ActionTime 0
function luigis_mansion:entities/ghost/target_task/move_to_target