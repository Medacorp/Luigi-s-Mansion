scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,tag=bowser_model,tag=head,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model
execute at @e[tag=this_model,limit=1] positioned ~ ~1.4 ~ if entity @e[tag=me,limit=1,distance=..3] run tag @s add decapitate
execute at @e[tag=this_model,limit=1] positioned ~ ~1.4 ~ if entity @e[tag=me,limit=1,distance=..3] run scoreboard players set @s Dialog 0
scoreboard players reset #temp GhostNr
tag @e[tag=this_model,limit=1] remove this_model