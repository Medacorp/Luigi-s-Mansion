execute store result score #temp Time run data get storage luigis_mansion:data reflections[0].id
execute if score #temp Time = @s ReflectionNr run data modify storage luigis_mansion:data mirror set from storage luigis_mansion:data reflections[0]
execute unless score #temp Time = @s ReflectionNr run data modify storage luigis_mansion:data new_reflections append from storage luigis_mansion:data reflections[0]
data remove storage luigis_mansion:data reflections[0]
execute if score #temp Time = @s ReflectionNr run data modify storage luigis_mansion:data new_reflections append from storage luigis_mansion:data reflections[]
execute unless score #temp Time = @s ReflectionNr if data storage luigis_mansion:data reflections[-1] run function luigis_mansion:old_entities/reflection/get_data 