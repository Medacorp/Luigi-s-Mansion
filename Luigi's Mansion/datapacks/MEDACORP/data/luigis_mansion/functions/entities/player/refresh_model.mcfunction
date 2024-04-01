scoreboard players operation #temp ID = @s ID
execute as @e[tag=model_piece] if score @s ID = #temp ID run tag @s add dead
scoreboard players reset #temp ID
#Model is automatically respawned