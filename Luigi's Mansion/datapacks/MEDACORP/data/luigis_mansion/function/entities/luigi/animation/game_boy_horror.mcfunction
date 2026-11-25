scoreboard players add @s AnimationProgress 1
scoreboard players set @s Sound 1
execute if entity @s[scores={AnimationProgress=8}] run function luigis_mansion:entities/luigi/make_sound/simple {sound:"luigis_mansion:item.game_boy_horror.click"}
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0