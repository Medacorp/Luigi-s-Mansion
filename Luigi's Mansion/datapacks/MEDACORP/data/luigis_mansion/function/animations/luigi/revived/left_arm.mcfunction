scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^-0.0225 ^0.0325 ^
execute at @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^0.0225 ^-0.0325 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=!flipped_gravity] ^0.03875 ^0.015 ^
execute at @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run teleport @s[tag=flipped_gravity] ^-0.03875 ^-0.015 ^
execute if entity @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 22
execute if entity @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={DeathTime=11..50}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 12
execute if entity @s[scores={DeathTime=11..50}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 7
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59}] AnimationRotationX -500
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ 900
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59},tag=flipped_gravity] AnimationRotationZ -900
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59}] AnimationRotationX -300
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59}] AnimationRotationZ -400
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={DeathTime=59},tag=flipped_gravity] AnimationRotationZ 1400