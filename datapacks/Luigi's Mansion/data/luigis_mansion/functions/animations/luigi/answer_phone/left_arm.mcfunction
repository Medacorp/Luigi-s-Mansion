scoreboard players operation @s AnimationProg = @a[tag=this_luigi,limit=1] IdleTime
scoreboard players add @s AnimationProg 41
execute at @s if score #mirrored Selected matches 1 rotated ~ 0 run teleport @s[scores={AnimationProg=17..},tag=!flipped_gravity,nbt=!{Small:1b}] ^ ^-0.2 ^-0.2
execute at @s if score #mirrored Selected matches 1 rotated ~ 0 run teleport @s[scores={AnimationProg=17..},tag=!flipped_gravity,nbt={Small:1b}] ^ ^-0.1 ^-0.1
execute at @s if score #mirrored Selected matches 1 rotated ~ 0 run teleport @s[scores={AnimationProg=17..},tag=flipped_gravity,nbt=!{Small:1b}] ^ ^0.2 ^-0.2
execute at @s if score #mirrored Selected matches 1 rotated ~ 0 run teleport @s[scores={AnimationProg=17..},tag=flipped_gravity,nbt={Small:1b}] ^ ^0.1 ^-0.1
data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProg=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..5}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 20
execute if entity @s[scores={AnimationProg=6..10}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=11..16}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 10
execute store result score #temp Time run data get entity @s Pose.Head[1]
execute if entity @s[scores={AnimationProg=6..10}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players add #temp Time 14
execute if entity @s[scores={AnimationProg=15..19}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 1 run scoreboard players remove #temp Time 16
execute store result score #temp Time run data get entity @s Pose.Head[2] 10
execute if entity @s[scores={AnimationProg=1..10}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=11..20}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=21..30}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=31..40}] if score #mirrored Selected matches 0 store result entity @s Pose.Head[2] float 0.1 run scoreboard players remove #temp Time 5
scoreboard players reset #temp Time