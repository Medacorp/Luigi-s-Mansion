function luigis_mansion:entities/luigi/get_owner_memory

# Scores
scoreboard players set @s[scores={Room=1..,LastRoom=..-1}] LastRoom 0
scoreboard players set @s[scores={Room=..-1,LastRoom=1..}] LastRoom 0
scoreboard players operation @a[tag=this_player,tag=!separated_camera,limit=1] Room = @s Room
scoreboard players operation @a[tag=this_player,tag=!separated_camera,limit=1] LastRoom = @s LastRoom
scoreboard players operation @a[tag=this_player,limit=1] AnimationProgress = @s AnimationProgress
scoreboard players operation @a[tag=this_player,limit=1] ElementMeter = @s ElementMeter
scoreboard players operation @s Health = @a[tag=this_player,limit=1] Health
scoreboard players operation @s MaxHealth = @a[tag=this_player,limit=1] MaxHealth
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] run scoreboard players operation @s PositionX = @a[tag=this_player,limit=1] PositionX
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] run scoreboard players operation @s PositionY = @a[tag=this_player,limit=1] PositionY
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] run scoreboard players operation @s PositionZ = @a[tag=this_player,limit=1] PositionZ
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] run scoreboard players operation @s RotationY = @a[tag=this_player,limit=1] RotationY
execute if entity @a[tag=this_player,tag=!separated_camera,limit=1] run scoreboard players operation @s RotationX = @a[tag=this_player,limit=1] RotationX
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] run scoreboard players operation @s PositionX = @a[tag=this_player,limit=1] ModelPositionX
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] run scoreboard players operation @s PositionY = @a[tag=this_player,limit=1] ModelPositionY
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] run scoreboard players operation @s PositionZ = @a[tag=this_player,limit=1] ModelPositionZ
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] run scoreboard players operation @s RotationY = @a[tag=this_player,limit=1] ModelRotationY
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] run scoreboard players operation @s RotationX = @a[tag=this_player,limit=1] ModelRotationX

# Disable items
execute if entity @a[tag=this_player,tag=disable_interact,limit=1] run tag @s add disable_interact
execute if entity @a[tag=this_player,tag=disable_flashlight,limit=1] run tag @s add disable_flashlight
execute if entity @a[tag=this_player,tag=disable_poltergust,limit=1] run tag @s add disable_poltergust
execute if entity @a[tag=this_player,tag=disable_game_boy_horror,limit=1] run tag @s add disable_game_boy_horror

# Animation
data remove entity @s data.animation
tag @s remove sneak_pos
tag @s remove sneaking
tag @s[tag=!third_person_movement_walking,tag=!dialog_walking] remove walking
execute unless entity @s[tag=!third_person_movement_walking,tag=!dialog_walking] run tag @s add walking
tag @s remove third_person_movement_walking
tag @s remove dialog_walking
tag @s remove running
tag @a[tag=this_player,limit=1] remove door_animation
tag @a[tag=this_player,limit=1] remove flipped_gravity
scoreboard players operation @s ForceScreen = @a[tag=this_player,limit=1] ForceScreen
scoreboard players operation @s ForceRadar = @a[tag=this_player,limit=1] ForceRadar
scoreboard players reset @a[tag=this_player,limit=1] ForceScreen
scoreboard players reset @a[tag=this_player,limit=1] ForceRadar
scoreboard players operation @a[tag=this_player,limit=1] Shrunk = @s Shrunk
scoreboard players operation @a[tag=this_player,limit=1] SneakTime = @s SneakTime
data modify entity @s data.animation set from storage luigis_mansion:data my_memory.animation
execute if entity @a[tag=this_player,tag=sneak_pos,tag=!separated_camera,limit=1] run tag @s add sneak_pos
execute if entity @a[tag=this_player,tag=sneaking,tag=!separated_camera,limit=1] run tag @s add sneaking
execute if entity @a[tag=this_player,tag=walking,tag=!separated_camera,limit=1] run tag @s add walking
execute if entity @a[tag=this_player,tag=running,tag=!separated_camera,limit=1] run tag @s add running
execute if entity @s[tag=door_animation] run tag @a[tag=this_player,limit=1] add door_animation
execute if entity @s[tag=flipped_gravity] run tag @a[tag=this_player,limit=1] add flipped_gravity

# Inventory
tag @a[tag=this_player,limit=1] remove flashlight
execute if entity @s[tag=had_flashlight_on] run tag @a[tag=this_player,limit=1] add flashlight
data remove entity @s data.selected_item
data modify entity @s data.inventory set value []
data modify entity @s data.selected_item set from entity @a[tag=this_player,limit=1] SelectedItem
execute if entity @a[tag=this_player,limit=1,tag=!using_selection_menu,scores={Shrunk=0}] run data modify entity @s data.inventory set from entity @a[tag=this_player,limit=1] Inventory
execute if entity @a[tag=this_player,limit=1,tag=using_selection_menu,scores={Shrunk=0}] run data modify entity @s data.inventory set from storage luigis_mansion:data my_memory.selection_menu.inventory
execute if entity @a[tag=this_player,limit=1,scores={Shrunk=1..}] run data modify entity @s data.inventory set from storage luigis_mansion:data my_memory.inventory
execute if entity @a[tag=this_player,limit=1,scores={Shrunk=1..}] run data remove entity @s data.inventory[{components:{"minecraft:custom_data":{keep_when_shrunk:1b}}}]
execute if entity @a[tag=this_player,limit=1,scores={Shrunk=1..}] run data modify entity @s data.inventory append from entity @a[tag=this_player,limit=1] Inventory[{components:{"minecraft:custom_data":{keep_when_shrunk:1b}}}]
execute if entity @a[tag=this_player,limit=1,tag=using_selection_menu,nbt={Inventory:[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] if data entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}] run data modify entity @s data.inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components set from entity @a[tag=this_player,limit=1] Inventory[{components:{"minecraft:custom_data":{namespace:"luigis_mansion",id:"game_boy_horror"}}}].components

# Settings
tag @s remove stop_map_on_key_collect
tag @s remove separated_camera
tag @s remove third_person_movement
tag @s remove sidestep_movement
tag @s remove debug_phase_through_walls
tag @a[tag=this_player,limit=1] remove wall_warp
tag @s remove debug_unlock_all_doors
execute if entity @a[tag=this_player,tag=stop_map_on_key_collect,limit=1] run tag @s add stop_map_on_key_collect
execute if entity @a[tag=this_player,tag=separated_camera,limit=1] run tag @s add separated_camera
execute if entity @a[tag=this_player,tag=third_person_movement,limit=1] run tag @s add third_person_movement
execute if entity @a[tag=this_player,tag=sidestep_movement,limit=1] run tag @s add sidestep_movement
execute if entity @a[tag=this_player,tag=debug_phase_through_walls,limit=1] run tag @s add debug_phase_through_walls
tag @a[tag=this_player,tag=debug_phase_through_walls,limit=1] add wall_warp
execute if entity @a[tag=this_player,tag=debug_unlock_all_doors,limit=1] run tag @s add debug_unlock_all_doors
scoreboard players operation @s FlashlightType = @a[tag=this_player,limit=1] FlashlightType

# Teleport Delay (ignored if no linked camera)
scoreboard players set @s TeleportDelayTimer 0
scoreboard players set @s TeleportDelaySetting 0
scoreboard players operation @s TeleportDelayTimer = @a[tag=this_player,tag=!separated_camera,limit=1] TeleportDelayTimer
scoreboard players operation @s TeleportDelaySetting = @a[tag=this_player,tag=!separated_camera,limit=1] TeleportDelaySetting

# Hitbox
scoreboard players set @s[scores={Shrunk=0}] EntitySizeWidth 8
scoreboard players set @s[scores={Shrunk=0}] EntitySizeHeight 20
scoreboard players set @s[scores={Shrunk=0}] EntityYOffset 10
scoreboard players set @s[scores={Shrunk=1..}] EntitySizeWidth 4
scoreboard players set @s[scores={Shrunk=1..}] EntitySizeHeight 10
scoreboard players set @s[scores={Shrunk=1..}] EntityYOffset 5

# Invulnerability
tag @s remove creative
execute if entity @a[tag=this_player,gamemode=creative,limit=1] run tag @s add creative

data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory