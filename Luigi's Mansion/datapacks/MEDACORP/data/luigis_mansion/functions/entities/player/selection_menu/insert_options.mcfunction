data modify storage luigis_mansion:data inventory append from storage luigis_mansion:data menu_options.options[0]
execute store result storage luigis_mansion:data inventory[-1].Slot byte 1 run scoreboard players add #temp Time 1
data modify storage luigis_mansion:data inventory[-1].tag merge value {luigis_mansion:{namespace:"luigis_mansion",id:"menu_option",kill:1b}}
data remove storage luigis_mansion:data menu_options.options[0]
execute if data storage luigis_mansion:data inventory[{tag:{luigis_mansion:{option:{id:"previous_page"}}}}] if score #temp Time matches 7 run tag @s add stop_adding
execute if entity @s[tag=!stop_adding] if data storage luigis_mansion:data menu_options.options[-1] run function luigis_mansion:entities/player/selection_menu/insert_options