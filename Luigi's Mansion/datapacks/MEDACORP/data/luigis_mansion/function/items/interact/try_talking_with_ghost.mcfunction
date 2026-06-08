tag @s add talk
data modify storage luigis_mansion:data dialogs append value {name:{},progress:0,room:0}
data modify storage luigis_mansion:data dialogs[-1].name set from entity @e[distance=..2,tag=can_talk_to,tag=ghost,tag=visible,scores={VulnerableTime=0},limit=1] data.talk_dialog
execute store result storage luigis_mansion:data dialogs[-1].room int 1 run scoreboard players get @s Room