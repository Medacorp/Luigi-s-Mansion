scoreboard players add @s AnimationProgress 1
data remove entity @s[scores={AnimationProgress=1..},tag=held_item] equipment.head
execute unless score #mirrored Selected matches 1 run teleport @s[scores={AnimationProgress=25..35}] ^ ^ ^0.2
execute if score #mirrored Selected matches 1 run teleport @s[scores={AnimationProgress=45..55}] ^ ^ ^0.2
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=21..30}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=31..40}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=61..70}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=71..80}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=41..50}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=51..60}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=21..30}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=31..40}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=61..70}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=71..80}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=41..50}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=51..60}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=71..80}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=51..60}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=81}] AnimationRotationX -800
scoreboard players set @s[scores={AnimationProgress=81}] AnimationRotationZ -100
scoreboard players set @s[scores={AnimationProgress=81},tag=flipped_gravity] AnimationRotationZ 1700
scoreboard players set @s[scores={AnimationProgress=160}] AnimationProgress 80