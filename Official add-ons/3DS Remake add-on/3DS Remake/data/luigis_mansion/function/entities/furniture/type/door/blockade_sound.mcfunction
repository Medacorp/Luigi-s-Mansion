execute if entity @s[tag=blockade,tag=!had_blockade,tag=!no_dialog] run data modify storage luigis_mansion:data dialogs prepend value {name:{namespace:"3ds_remake",id:"blockade"},progress:0,room:0}
execute if entity @s[tag=blockade,tag=!had_blockade,tag=!no_dialog] store result storage luigis_mansion:data dialogs[0].room int 1 run scoreboard players get @s Room
tag @s[tag=blockade,tag=!had_blockade,tag=!no_dialog] remove blockade
execute if entity @s[tag=blockade,tag=!had_blockade,tag=no_dialog] run playsound luigis_mansion:furniture.blockade.spawn block @a[tag=same_room] ~ ~ ~ 1
tag @s remove no_dialog
execute if entity @s[tag=!blockade,tag=!area_blockade,tag=had_blockade] run playsound luigis_mansion:furniture.blockade.disappear block @a[tag=same_room] ~ ~ ~ 1