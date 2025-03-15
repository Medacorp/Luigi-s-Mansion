function luigis_mansion:entities/player/memory/get with entity @s
tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:item.game_boy_horror",color:"green"},{type:"translatable",translate:"luigis_mansion:message.game_boy_horror.jukebox.playing",with:[{type:"nbt",source:"storage",storage:"luigis_mansion:data",nbt:"selected_option.jukebox.name",interpret:true}]}]}
execute store result score @s Jukebox run data get storage luigis_mansion:data selected_option.jukebox.track
data modify storage luigis_mansion:data my_memory.music.jukebox set from storage luigis_mansion:data selected_option.jukebox.group
data modify storage luigis_mansion:data my_memory.music.jukebox_flags set value {}
execute if data storage luigis_mansion:data selected_option.jukebox.default_flags run data modify storage luigis_mansion:data my_memory.music.jukebox_flags set from storage luigis_mansion:data selected_option.jukebox.default_flags
scoreboard players set @s JukeboxPrevious 0
scoreboard players set @s JukeboxHealth 100
scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
scoreboard players set @s HealthMusic 0
scoreboard players set @s RoomNoise -1
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory