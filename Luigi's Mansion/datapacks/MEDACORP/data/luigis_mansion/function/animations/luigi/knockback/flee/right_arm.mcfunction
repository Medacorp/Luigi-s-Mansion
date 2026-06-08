scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1800
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=21..22}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=23..26}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=27..30}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=31..34}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=35..38}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=39..42}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=43..46}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=47..50}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=51..54}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=55..58}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=59..60}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=21..22}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=23..26}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=27..30}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=31..34}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=35..38}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=39..42}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=43..46}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=47..50}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=51..54}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=55..58}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=59..60}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
scoreboard players set @s[scores={AnimationProgress=60}] AnimationRotationX -1800
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0