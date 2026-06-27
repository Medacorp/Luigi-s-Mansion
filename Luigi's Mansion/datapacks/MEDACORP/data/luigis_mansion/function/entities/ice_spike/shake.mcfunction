scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] unless score #mirrored Selected matches 1 run data modify entity @s transformation.left_rotation set value [0.03489949670250097f,0.0f,0.0f,0.9993908270190958f]
execute if entity @s[scores={AnimationProgress=1}] if score #mirrored Selected matches 1 run data modify entity @s transformation.left_rotation set value [-0.03489949670250097f,0.0f,0.0f,0.9993908270190958f]
execute if entity @s[scores={AnimationProgress=2}] run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.0f,1.0]
execute if entity @s[scores={AnimationProgress=3}] unless score #mirrored Selected matches 1 run data modify entity @s transformation.left_rotation set value [-0.03489949670250097f,0.0f,0.0f,0.9993908270190958f]
execute if entity @s[scores={AnimationProgress=3}] if score #mirrored Selected matches 1 run data modify entity @s transformation.left_rotation set value [0.03489949670250097f,0.0f,0.0f,0.9993908270190958f]
execute if entity @s[scores={AnimationProgress=4}] run data modify entity @s transformation.left_rotation set value [0.0f,0.0f,0.0f,1.0]
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0