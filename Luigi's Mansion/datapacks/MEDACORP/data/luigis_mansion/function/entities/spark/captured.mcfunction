scoreboard players operation #temp ID = @s KillerID 
execute as @e[tag=vacuuming_me,distance=..1.2] if score #temp ID = @s ID run tag @s add exploding_poltergust
scoreboard players reset #temp ID