tag @s add was_shaking
tag @s[tag=!in_vacuum] remove was_shaking

execute unless entity @s[scores={Sound=1..}] run function luigis_mansion:old_entities/furniture/shake_sound with entity @s ArmorItems[3].tag.shake_sound

function luigis_mansion:old_animations/furniture/shake_door
scoreboard players set @s[tag=!was_shaking] AnimationProgress 0
data merge entity @s[tag=!was_shaking] {Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f]}}