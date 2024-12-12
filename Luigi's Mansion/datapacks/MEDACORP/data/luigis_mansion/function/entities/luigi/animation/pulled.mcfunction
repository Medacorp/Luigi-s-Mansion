scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=5}] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.hurt_dragged.high_health",medium:"luigis_mansion:entity.player.hurt_dragged.high_health",low:"luigis_mansion:entity.player.hurt_dragged.low_health",duration:10}
tag @s add keep_poltergust_grabbed
tag @s add animation_may_move
scoreboard players set @s[scores={AnimationProgress=30}] AnimationProgress 10
execute unless entity @s[tag=pulled_by_ghost,tag=poltergust_selected,tag=vacuuming_ghost] run function luigis_mansion:entities/luigi/animation/set/none