execute if entity @a[tag=this_player,limit=1] run tag @s add keep_player
execute if entity @s[tag=!keep_player] run scoreboard players operation #temp ID = @s ID
execute if entity @s[tag=!keep_player] as @a if score @s ID = #temp ID run tag @s add this_player
scoreboard players reset #temp ID
execute as @a[tag=this_player,limit=1] run scoreboard players operation @s LastHealth = @s Health
execute if score @a[tag=this_player,limit=1] Health > @s Health run effect give @a[tag=this_player,limit=1] minecraft:instant_damage 1 0 true
scoreboard players operation @a[tag=this_player,limit=1] Health = @s Health
scoreboard players operation @a[tag=this_player,limit=1] MaxHealth = @s MaxHealth
execute as @a[tag=this_player,limit=1] if entity @s[scores={Health=0,LastHealth=1..}] run function luigis_mansion:other/death_message
execute as @a[tag=this_player,limit=1] run scoreboard players reset @s LastHealth
execute if entity @s[tag=!keep_player] run tag @a[tag=this_player,limit=1] remove this_player
tag @s remove keep_player