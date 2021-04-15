execute if entity @s[scores={ClairvoyaSpoke=5,VulnerableTime=0}] run function luigis_mansion:entities/madame_clairvoya/hidden/laugh
execute if entity @s[scores={VulnerableTime=1..}] as @a[tag=same_room] unless entity @s[scores={MusicType=36}] run function luigis_mansion:other/music/set/danger

execute if entity @s[tag=talk,scores={Dialog=0}] run function luigis_mansion:entities/madame_clairvoya/hidden/select_dialog
execute if entity @s[tag=talk,tag=normal] run function luigis_mansion:dialog/madame_clairvoya/hidden
execute if entity @s[tag=talk,tag=hat,tag=!next] run function luigis_mansion:dialog/marios_item/hidden/hat
execute if entity @s[tag=talk,tag=letter,tag=!next] run function luigis_mansion:dialog/marios_item/hidden/letter
execute if entity @s[tag=talk,tag=star,tag=!next] run function luigis_mansion:dialog/marios_item/hidden/star
execute if entity @s[tag=talk,tag=glove,tag=!next] run function luigis_mansion:dialog/marios_item/hidden/glove
execute if entity @s[tag=talk,tag=shoe,tag=!next] run function luigis_mansion:dialog/marios_item/hidden/shoe
execute if entity @s[tag=talk,tag=next] run function luigis_mansion:dialog/marios_item/hidden
scoreboard players add @s[scores={Dialog=..-1}] Dialog 1

tag @s[tag=!talk] remove hat
tag @s[tag=!talk] remove letter
tag @s[tag=!talk] remove star
tag @s[tag=!talk] remove glove
tag @s[tag=!talk] remove shoe
tag @s[tag=!talk] remove normal