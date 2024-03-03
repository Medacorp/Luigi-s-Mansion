scoreboard players operation #temp PositionX = @s PositionX
scoreboard players operation #temp PositionY = @s PositionY
scoreboard players operation #temp PositionZ = @s PositionZ
tag @s add hide_option
tag @s add me
execute as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"hidden_boo"}}},tag=caught_by_boo_radar,tag=same_room] if score @s PositionX = #temp PositionX if score @s PositionY = #temp PositionY if score @s PositionZ = #temp PositionZ run tag @e[tag=me,limit=1] remove hide_option
tag @s remove me