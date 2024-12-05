tag @s add animation_may_move
scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1},tag=!gooigi] run playsound luigis_mansion:entity.player.put_poltergust_away player @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={AnimationProgress=6..10}] remove new_poltergust_grabbed
tag @s[scores={AnimationProgress=6..10}] remove poltergust_grabbed
tag @s[scores={Health=..30},tag=!gooigi] add low_health
tag @s[scores={Health=..15},tag=gooigi] add low_health
tag @s add tick_down_invulnerability
execute if entity @s[scores={AnimationProgress=10}] run function luigis_mansion:entities/luigi/animation/set/none