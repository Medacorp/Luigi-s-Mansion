execute if entity @s[scores={IdleTime=-135,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-135,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-135,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-135,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-135,Sound=0}] Sound 8
execute if entity @s[scores={IdleTime=-125}] run function luigis_mansion:entities/player/memory/get with entity @s
execute if entity @s[scores={IdleTime=-125}] run data modify storage luigis_mansion:data damage set value {amount:0,attacker:-1}
execute if entity @s[scores={IdleTime=-125}] store result storage luigis_mansion:data damage.amount int 1 run scoreboard players get @s KnockbackDamage
execute if entity @s[scores={IdleTime=-125}] run data modify storage luigis_mansion:data damage.attacker set from storage luigis_mansion:data my_memory.hurt_by.attacker
execute if entity @s[scores={IdleTime=-125}] run function luigis_mansion:entities/player/damage
execute run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ
execute store result entity @e[tag=home,limit=1] Rotation[0] float 1 run scoreboard players get @s RotationY
execute store result entity @e[tag=home,limit=1] Rotation[1] float 1 run scoreboard players get @s RotationX
execute at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s[scores={IdleTime=-135..126,Animation=37}] rotated ~18 0 run teleport @s ^ ^ ^-0.15 ~ ~
execute at @s[scores={IdleTime=-135..126,Animation=38}] rotated ~-18 0 run teleport @s ^ ^ ^-0.15 ~ ~
execute if entity @s[scores={IdleTime=-125,Sound=0,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-125,Sound=0,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-125,Sound=0}] Sound 105
execute at @s[scores={IdleTime=-79..50}] rotated ~ 0 run teleport @s ^ ^ ^0.05
execute at @s[scores={IdleTime=-79..50}] run teleport @s ^ ^ ^ ~ ~3
execute at @s[scores={IdleTime=-19..10}] run teleport @s ^ ^ ^ ~ ~-9
execute if entity @s[scores={IdleTime=-20,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-20,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={IdleTime=-20,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={IdleTime=-20,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={IdleTime=-20,Sound=0}] Sound 20
kill @e[tag=home,limit=1]

tag @s remove vacuuming_ghost