data modify storage luigis_mansion:data dialogs append value {progress:-1}
data modify storage luigis_mansion:data dialogs[-1].name set from storage luigis_mansion:data selected_option.value
execute unless data storage luigis_mansion:data selected_option{global:1b} store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room
tag @s add skip_dialog