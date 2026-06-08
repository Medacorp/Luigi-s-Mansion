scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.03125 ^0.02375 ^
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.03125 ^-0.02375 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.03125 ^0.02375 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.03125 ^-0.02375 ^
execute if entity @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 20
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ 800
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59},tag=flipped_gravity] AnimationRotationZ -1000
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ -800
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59},tag=flipped_gravity] AnimationRotationZ 1000