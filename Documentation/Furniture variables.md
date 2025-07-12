Furniture spawning takes certain variables, they are classified and listed below. The variables are saved in the storage "luigis_mansion:data furniture" object.

```
furniture:{
    // Display and sound
    pose: [...f] //The furniture's positioning data, depends on entity type.
        //Armor stand's head Pose. The jaw is ignored, and the pitch is clamped to -90..90, execution rotation pitch is ignored. Default = defined by furniture, generally [0.0f,0.01f,0.0f]
        //Item display's transformation matrix. Matrix format required. Default = defined by furniture, generally [XScalef,0f,0f,0f,0f,YScalef,0f,0f,0f,0f,ZScalef,0f,0f,0f,0f,1f]
    no_long_shake:1b, //When set disables the long shaking animation from manual search. Default = 0b.
    no_short_shake:1b, //When set disables the short shaking animation from manual search. Default = 0b.
    no_visual_shake:1b, //When set disables the shaking animations visually; sound will still play. Default = 0b.
    use_medium_shake:1b, //When set forces a shake animation used by room clear chests, rather than the long and short ones. Default = 0b.
    sound:{ //The ID of the furniture shake sound. See IDs in use for valid IDs.
        namespace:"luigis_mansion", //The namespace of the furniture shake sound. Defaults to "luigis_mansion".
        id:"heavy_generic" //The ID of the furniture shake sound. Defaults to "heavy_generic".
    },
    interact_animation:{ //What animation gets used when using the interact method. Enthusiastic animation aditionally has a punch sound and will swing swinging furniture. Overrides default animation selecting. Default = none, except for room clear chests which use 3ds_remake:search/chest when the 3DS Remake add-on is installed and luigis_mansion:search/hump when not.
        namespace:"luigis_mansion", //The namespace of the animation.
        id:"search/hump" //The ID of the animation.
    },
    inverted_swing:1b, //Swinging furniture only, whether the swinging angles are inverted for searching methods. Default = 0b.
        
    //search details
    type:{ //Overwrites the default furniture type of this furniture. The defaults may be different for furniture's initial type.
        value:"<type>", //Required if type is present, what type to use. Allowed types (both original to change and value to change to): delayed, fan, generic, rolling, swinging, swirling.
        search_value:X, //Optional, what search value is needed.
            * For delayed, it's how long the poltergust must be used. Default = 20.
            * For fan, it's the spinning speed in tenths of degrees (positive values only) per tick this fan needs to have in order to be searched. Default = 1000.
            * For generic, it's how long the poltergust must be used. Default = 20.
            * For rolling it's how long the poltergust must be used. Default = 20.
            * For swinging the angle in degrees*10. Default = 100.
            * For swirling the amount of spins it needs to have made. Default = 5.
        turn_speed:0, //Optional if value is "fan", the speed at which this fan turns in tenths of degrees (positive values only) per tick. Default = 0.
        turn_left:0b //Optional if value is "fan", whether the fan turns left rather than right. Default = 0b.
    },
    searchable:["<method>"], //Sets what method can result in searching. If "interact" is absent here, but provided in shake_animation, interact will still try to shake it, and trigger the search animaton, but it won't actually get searched. Methods: time(will search automatically), flashlight(special tag on shining, no auto-searching), interact, vacuum, dust, fire, water, ice. Default = none.
    shake_animation:["<method>"], //Sets what method can result in the furniture shaking. Methods: interact, vacuum, dust, fire, water, ice. Default = none.
    searched:1b, //When set the furniture should spawn triggering its searched animation. Default = 0b.
    no_search_animation:1b, //When set the furniture has no search animation at all (eg on a chest doesn't open it). If set alongside searched, the furniture spawns in the searched state, skipping the animation. Default = 0b.
    must_face:1b, //When set requires the player to face the opposite direction compared to this furniture (with 90 degree total range) in other to manually search it. Default = 0b.
    cannot_search_when_open:1b, //When set prevents the furniture from searching again if it has been opened. If set alongside searched, makes loot drop immedietly on spawn. Default = 0b.
    
    //search result
    no_dust:1b, //When set stop dust from popping out if the furniture is empty. Default = 0b.
    loot:{ //Loot to spawn. Do note that no dust will spawn if loot is attempted to be spawned, but the spawning is aborted (so make sure to check if it can spawn before applying the data). Default = none.
        //See loot documentation for other variables.
    },
    loot_chance: { //The furniture loot chance ID to use. See IDs in use for valid IDs.
        namespace: "luigis_mansion", //The namespace of the furniture loot chance. Default = "luigis_mansion".
        id: "health_dependent_1", //The ID of the furniture loot chance. Default = "null".
    },
    search_command:"...", //Command to trigger on manual search (requires searchable to have "interact" method). Runs as the furniture at the searcher (who's tagged "searcher"). Default = none.
    can_hide_boo:1b, //If this furniture is randomly selected by boos to hide in. Default = 0b.
    scan_result: //Result from GBH scan. Not provided = ignored by scan. Has several formats and behaviors.
        * {namespace:"luigis_mansion",id:"scan/scanner/1"}, //Dialog as a result from GBH scan. Gooigi scan always results in the "3ds_remake:scan/scanner/gooigi" dialog if the ID starts with "scan/scanner/".
        * "warp", //Warps the scanner if they're not Gooigi and the can_warp global variable is turned on.
        * "spawn_ghost", //Spawns the ghost hiding in this furniture.
        * "", //Prevents GBH scan from passing through, but has no result.
    
    //non-default setup
    animation:{ //Animation info.
        namespace:"luigis_mansion", //The namespace of the animation to use. Default = luigis_mansion.
        id:"idle", //The namespace of the animation to use. Default = idle.
        progress:X, //The progress the animation already has on the first tick. Default = 0.
        frozen:1b //Whether or not the animation is frozen. Default = 0b.
    },
    no_ai:1b, //Whether this furniture's AI is disabled. Default = 0b.
    <type>_elemental_source:{ //Elemental source data, can only be applied to furniture supporting that elemental type. Not provided means it's not an elemental source. Default = none.
        always_spawn:1b, //When set the elemental ghost spawns regardless of distance. Default = 0b.
        must_vacuum:1b, //When set the elemental ghost only pops up when vacuuming nearby. Ignored if always_spawn is set. Default = 0b.
        must_be_searched:1b, //When set the elemental ghost only pops up when the furniture has triggered it's searched animation (ignored if it has no search animation, or it is disabled). Default = 0b.
        timer:1b //When set it turns the spawning back on after 30 seconds of being disabled. Default = 0b.
        cannot_disable:1b //When set prevents being disabled. Default = 0b.
    },
    particles:"chilly_fog", //What particles this furniture spawns. Allowed values are "chilly_fog", "dripping_water", "leaking_water", "spraying_water", "flames", "sparkles". Conditions depend on the particle. Only furniture with an elemental position can have particles. Default = none.
    ambient_light:{ //Ambient light data, can only be applied to furniture which can cast light, that's not a lamp (eg a torch or a projector). Default = none.
        lit:1b, //Whether the light source is currently lit. If this light source is also a fire elemental source, its lit state will match whether it can spawn fire elemental ghosts. Default = 0b.
        light_on_search:1b, //Whether the light source turns on when searched. Default = 0b.
        cast_shadow:1b //Whether the light source creates shadows. Default = 0b.
    },
    mirror_reflection:1b, //Whether the mirror will actually reflect the room, otherwise gets a solid glass texture. Valid for mirrors only. Default = 1b. Forced to 0b if the yaw rotation is not a multiple of 90, or pose pitch has a non-0 value.
    boo_poster:1b, //Whether or not this is a Boo poster and cannot be vacuumed up. Default = 0b.
    no_spawn_sound:1b, //Whether the unsearched room clear chest's spawn sound/cutscene is disabled, searched room clear chests always have it disabled, regardless of this value. Valid for room clear chests only. Can be set to 2b to disable the cutscene only. Default = 0b.
    hitbox:{ //The size of the hitbox, only applies to and required for scan areas.
        type:"standing", //How the hitbox is aligned to the spawn position, "standing" is bottom aligned, "hanging" is top aligned. Default = centered.
        radius:X, //A ball hitbox, value is the radius in tenths of a block.
        box:{ //A box shaped hitbox.
            height:X, //The height in tenths of a block.
            width:X //The width in tenths of a block.
        },
        rotated_box:{ //A box shaped hitbox that rotates with the entity.
            left:X, //The left to right size in tenths of a block.
            up:X, //The height in tenths of a block.
            forward:X //The front to back size in tenths of a block.
        }
    },
    candle_flames:[ //Variables for the flames this candlabra has, one entry per flame. Default = empty object per flame.
        {
            lit:1b, //Whether this flame is lit. If this candle flame is also a fire elemental source, its lit state will match whether it can spawn fire elemental ghosts. Default = 0b.
            type:"red", //Whether this flame is red, purple or incense. Incense flames react differently to the vacuum, not extinguishing, but pulling the incense to the poltergust. Default = red.
            cannot_extinguish:1b, //Whether this flame cannot be turned off by vacuum, dust and ice (water will still turn it off). Default = 0b. Not applicable to incense flames.
            always_burn:1b, //Whether this flame can be turned off by anything at all. Default = 0b. Not applicable to incense flames.
            fire_elemental_source:{}, //See <type>_elemental_source, above. Not provided means it's not an elemental source. Default = none.
            tags:[] //A list of tags to append to the flame's default tags, used to target the flame in functions. Default = none.
        }
    ],
    door:{ //Required for and used only by doors
        model:{ //Required, the ID of the door model. See IDs in use for valid IDs.
            namespace:"luigis_mansion", //Required, the namespace of the door model.
            id:"mansion/1" //Required, the ID of the door model.
        },
        frame:{ //Optional, the ID of the frame model. See IDs in use for valid IDs.
            namespace:"luigis_mansion", //The namespace of the frame model.
            id:"normal" //The ID of the frame model.
        },
        left_hinge:1b, //If the hinge is on the left of the door itself (your right when facing it). Default = 0b.
        push:1b, //If the door is pushed open, rather than pulled. Default = 0b.
        blocked:1b, //How the door is blocked, 0b = not, 1b = blockade, 2b = area blockade, 3b = barricade, 4b = double barricade, 5b = uninteractable. Default = 0b.
        burning:"extinguish_kitchen_door", //Only if the door is burning, the save data field to write on extinguish. If it's already written, the door won't burn. Default = none.
        key:"parlor", //What key this door needs. Default = none.
        key_model: {}, //The item components for the key to use. Value merges with default. Default = {"minecraft:item_model":"luigis_mansion:key","minecraft:custom_model_data":{strings:["default"]}}.
        go_through_command:"<command>", //A command this door needs to run at the moment of warping the player as the player. Used by the front door and some special cases. Default = none.
        other_end:{ //Coordinates of the door on the other side to trigger opening animation for; does not affect warping. Default = none.
            dimension:"luigis_mansion:normal", //The dimension of the other door. Default = the dimension of this door.
            x:X, //The integer/double X coordinate
            y:X, //The integer/double Y coordinate
            z:X //The integer/double Z coordinate
        }
    },
    room:X, //Room number that this furniture is in. Default = room number of whoever is @s on function call, if absent = 0.
    tags:[] //A list of tags to append to the furniture's default tags used to target the furniture in functions. Default = none.
}
```

3DS Remake exclusive:
```
furniture:{
    gallery_portrait:{ //Used only by gallery portraits if the 3DS Remake add-on is installed. If not all the fields are present this gallery portrait's portrait battles are disabled.
        x:X, //The integer/double X coordinate to return to when the portrait battle ends.
        y:X, //The integer/double Y coordinate to return to when the portrait battle ends.
        z:X //The integer/double Z coordinate to return to when the portrait battle ends.
        x_rotation:X //The X rotation to return to when the portrait battle ends.
        x_rotation:Y //The Y rotation to return to when the portrait battle ends.
    }
}
```