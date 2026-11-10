scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.grab_poltergust"}
execute if entity @s[scores={AnimationProgress=1..5},tag=had_flashlight_on] run function luigis_mansion:items/flashlight/effects/turn_off
tag @s[scores={AnimationProgress=6..10}] add new_poltergust_grabbed
tag @s[scores={AnimationProgress=6..10}] add poltergust_grabbed
tag @s[scores={AnimationProgress=6..10}] add keep_poltergust_grabbed
tag @s[scores={Health=..30}] add low_health
tag @s add tick_down_invulnerability
execute if entity @s[scores={AnimationProgress=10}] run function luigis_mansion:entities/luigi/animation/set/none