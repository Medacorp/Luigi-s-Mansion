scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"spin_attack"}
$execute if entity @s[scores={ActionTime=20}] run playsound $(namespace):entity.$(id).spin_attack hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=20}] add complain
execute at @s[scores={ActionTime=20}] if entity @e[tag=luigi,distance=..2,scores={Invulnerable=0}] run tag @s remove complain
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage set value {method:{namespace:"luigis_mansion",id:"cut"},amount:0,animation:{namespace:"luigis_mansion",id:"knockback/large"},no_delete:1b}
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage.amount set from entity @s data.damage.attack
execute at @s[scores={ActionTime=20}] run data modify storage luigis_mansion:data damage.attacker set from entity @s UUID
execute at @s[scores={ActionTime=20}] as @e[tag=luigi,distance=..2] run function luigis_mansion:entities/luigi/damage
execute at @s[scores={ActionTime=20}] run data remove storage luigis_mansion:data damage
tag @s[scores={ActionTime=30}] remove attack
scoreboard players set @s[scores={ActionTime=30}] ActionTime 0