execute if data storage luigis_mansion:data current_state.ghosts_caught[0] run function luigis_mansion_3ds_remake:room/gallery/check_portrait/small_ghosts/ghost_count/pink_flying_fish
execute if data storage luigis_mansion:data current_state.new_ghosts_caught run data modify storage luigis_mansion:data current_state.ghosts_caught set from storage luigis_mansion:data current_state.new_ghosts_caught
data remove storage luigis_mansion:data current_state.new_ghosts_caught
execute if score #temp Time matches 1.. run summon minecraft:armor_stand 764 2.2 -45 {Marker:1b,Rotation:[-45.0f,0.0f],Small:1b,CustomName:'{"translate":"luigis_mansion:entity.pink_flying_fish"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:16,display:{color:16740863}}}],Pose:{Head:[0.0f,0.0f,0.01f]},DisabledSlots:2039583}
scoreboard players reset #temp Time
scoreboard players reset #temp Money