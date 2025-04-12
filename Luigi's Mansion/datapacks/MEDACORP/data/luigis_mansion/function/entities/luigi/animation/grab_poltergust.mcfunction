scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.grab_poltergust"}
tag @s[scores={AnimationProgress=1..5}] remove had_flashlight_on
tag @s[scores={AnimationProgress=6..10}] add new_poltergust_grabbed
tag @s[scores={AnimationProgress=6..10}] add poltergust_grabbed
tag @s[scores={Health=..30}] add low_health
tag @s add tick_down_invulnerability
execute if entity @s[scores={AnimationProgress=10}] run function luigis_mansion:entities/luigi/animation/set/none