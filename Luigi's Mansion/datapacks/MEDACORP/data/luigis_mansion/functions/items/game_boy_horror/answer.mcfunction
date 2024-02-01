execute unless entity @s[scores={GBHDialog=1..}] run function luigis_mansion:entities/player/animation/set/none
tag @s[nbt=!{SelectedItem:{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}}] add hang_up
tag @s add me
scoreboard players set @a[tag=!me] GBHCall 0
scoreboard players set @a GBHWait 0
tag @s remove me
scoreboard players set @s[tag=hang_up] GBHWait 1200
execute if entity @s[tag=hang_up] as @a[gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
function #luigis_mansion:items/game_boy_horror/answer
scoreboard players reset @s[tag=hang_up] GBHDialog
execute if entity @s[tag=hang_up] run scoreboard players reset @a EGaddCallChoice
tag @s remove hang_up