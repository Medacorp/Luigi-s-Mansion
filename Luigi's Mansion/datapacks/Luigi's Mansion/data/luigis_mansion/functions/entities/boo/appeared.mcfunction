tag @s remove appear
tag @s add laugh
execute if entity @s[tag=say_message] run function luigis_mansion:entities/boo/message
tag @s remove say_message
scoreboard players set @s AnimationProg 0