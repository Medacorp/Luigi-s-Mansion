scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=2}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.low_health_idle",medium:"luigis_mansion:entity.player.low_health_idle",low:"luigis_mansion:entity.player.low_health_idle",duration:20}
tag @s[tag=dark_room] add keep_poltergust_grabbed
tag @s add low_health
scoreboard players set @s[scores={AnimationProgress=21}] AnimationProgress 1