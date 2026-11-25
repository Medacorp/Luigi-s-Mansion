scoreboard players add @s AnimationProgress 1
scoreboard players set @s Sound 1
execute if entity @s[scores={AnimationProgress=1}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:entity.player.think"}
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0