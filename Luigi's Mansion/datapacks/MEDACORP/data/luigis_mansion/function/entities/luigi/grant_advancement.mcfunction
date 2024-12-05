execute if entity @a[tag=this_player,limit=1] run tag @s add keep_player
execute if entity @s[tag=!keep_player] run scoreboard players operation #temp ID = @s ID
execute if entity @s[tag=!keep_player] as @a if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
$advancement grant @a[tag=this_player,limit=1] only $(id)
execute if entity @s[tag=!keep_player] run tag @a[tag=this_player,limit=1] remove this_player
tag @s remove keep_player