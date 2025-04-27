function luigis_mansion:entities/player/memory/get with entity @s
execute unless entity @s[scores={Jukebox=0}] run tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:item.game_boy_horror",color:"green"},{type:"translatable",translate:"luigis_mansion:message.game_boy_horror.jukebox.stop"}]}
scoreboard players set @s Jukebox 0
data modify storage luigis_mansion:data my_memory.music.jukebox set value ""
data modify storage luigis_mansion:data my_memory.music.jukebox_flags set value {}
scoreboard players set @s JukeboxPrevious 0
scoreboard players set @s JukeboxHealth 100
scoreboard players set @s Music 0
scoreboard players set @s GradualMusic 0
scoreboard players set @s HealthMusic 0
scoreboard players reset @s MusicSpeed
scoreboard players set @s RoomNoise 0
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory