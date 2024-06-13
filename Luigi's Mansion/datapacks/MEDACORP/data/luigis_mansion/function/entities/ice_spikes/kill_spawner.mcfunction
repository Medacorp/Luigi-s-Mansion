scoreboard players operation #temp IceSpikesNr = @s IceSpikesNr
execute as @e[tag=ice_spikes_spawner] if score #temp IceSpikesNr = @s IceSpikesNr run tag @s add dead
scoreboard players reset #temp IceSpikesNr