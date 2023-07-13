Furniture spawning takes certain variables, they are classified and listed below. The variables are saved in the storage "luigis_mansion:data furniture" object.

```
furniture: {
    // Display and sound
    pose:[0.0f,0.01f,0.0f], //The pose the furniture armor stand's head gets. The jaw is ignored and the pitch is copied over to the armor stand, ignoring execution rotation pitch. Default = 0.0f,0.01f,0.0f
    no_long_shake:1b, //When set disables the long shaking animation from manual search. Default = 0b.
    no_short_shake:1b, //When set disables the short shaking animation from manual search. Default = 0b.
    no_visual_shake:1b, //When set disables the shaking animations visually; sound will still play. Default = 0b.
    use_medium_shake:1b, //When set forces a shake animation used by room clear chests, rather than the other 2. Default = 0b.
    sound:"luigis_mansion:heavy_generic", //What furniture shake sound. See below for options. Defaults to luigis_mansion:heavy_generic.
    interact_animation:7, //What animation gets used when using the interact method. Enthusiastic animation (7) aditionally has a punch sound and will swing swinging furniture. Overrides default animation selecting. Default = none, except for room clear chests which use 45 when the 3DS Remake add-on is installed or not, and 43 when not.
        
    //search details
    searchable: ["<method>"], //Sets what method can result in searching. If "interact" is absent here, but provided in shake_animation, interact will still try to shake it, and trigger the search animaton it, but it won't actually get searched. Methods: time(will search automatically), interact, vacuum, dust, fire, water, ice. Default = none.
    shake_animation: ["<method>"], //Sets what method can result in the furniture shaking. Methods: interact, vacuum, dust, fire, water, ice. Default = none.
    searched:1b, //When set the furniture should spawn triggering its searched animation. If set for room clear chests, also stops the spawn sound from playing. Default = 0b.
    no_search_animation:1b, //When set the furniture has no search animation at all (eg on a chest doesn't open it). If set alongside searched, the furniture spawns in in the searched state, skipping the animation. Default = 0b.
    must_face:1b, //When set requires the player to face the opposite direction compared to this furniture (with 90 degree total range) in other to manually search it. Default = 0b.
    cannot_search_when_open:1b, //When set prevents the furniture from searching again if it has been opened. If set alongside searched, makes loot drop immedietly on spawn. Default = 0b.
    
    //search result
    no_dust:1b, //When set stop dust from popping out if the furniture is empty. Default = 0b.
    loot:{ //Loot to spawn. Do note that no dust will spawn if loot is attempted to be spawned, but the spawning is aborted (so make sure to check if it can spawn before applying the data). Default = none.
        works_in_lab:1b, //When set will still spawn while in the lab. Default = 0b.
        no_roll:1b, //When set will not spawn from non-manual/time search of rolling furniture. Default = 0b.
        //See loot documentation for other variables.
    },
    dialog:"<name>", //Dialog to trigger on manual search (requires searchable to have "interact" method). Default = none.
    can_hide_boo:1b, //If this furniture is randomly selected by boos to hide in. Default = 0b.
    scan_message:'{"translate":"..."}', //Message as a result from GBH scan. When set to "warp" warps the scanner if they're not Gooigi, not in a dialog, and the can_warp global variable is turned on (if conditions are not met, will send the message "Huh...?" instead). Gooigi scan always results in the "......." string when set to warp. Not provided = ignored by scan. Empty string = blocks scan.
    
    //non-default setup
    <type>_elemental_source:{ //Elemental source data, can only be applied to furniture supporting that elemental type. Default = none.
        always_spawn:1b, //When set the elemental ghost spawns regardless of distance. Default = 0b.
        must_vacuum:1b, //When set the elemental ghost only pops up when vacuuming nearby. Ignored if always_spawn is set. Default = 0b.
        must_be_searched:1b, //When set the elemental ghost only pops up when the furniture has triggered it's searched animation (ignored if it has none, or it is disabled). Default = 0b.
        timer:1b //When set it turns the spawning back on after 30 seconds of being disabled. Default = 0b.
    },
    ambient_light: { //Ambient light data, can only be applied to furniture which can cast light, that's not a lamp (eg a torch or a projector). Default = none.
        lit:1b, //Whether the light source is currently lit. If this light source is also a fire elemental source, its lit state will match whether it can spawn fire elemental ghosts. Default = 0b.
        light_on_search:1b, //Whether the light source turns on when searched. Default = 0b.
        cast_shadow:1b //Whether the light source creates shadows. Default = 0b.
    },
    mirror_reflection:1b, //Whether the mirror will actually reflect the room, otherwise gets a solid glass texture. Valid for mirrors only. Default = 1b. Forced to 0b if the rotation is not a multiple of 90.
    no_spawn_sound:1b, //Whether the unsearched room clear chest sound is disabled, searched room clear chests always have it disabled, regardless of this value. Valid for room clear chests only. Default = 0b.
    candle_flames:[ //Variables for the flames this candlabra has, one entry per flame. Default = empty object per flame.
        {
            lit:1b, //Whether this flame is lit. If this candle flame is also a fire elemental source, its lit state will match whether it can spawn fire elemental ghosts. Default = 0b.
            type:"red", //Whether this flame is red, purple or incense. Incense flames react differently to elements, not extinguishing, but drawing the flame to the origin. Default = red.
            cannot_extinguish:1b, //Whether this flame can be turned off by vacuum, dust and ice (water will still turn it off). Default = 0b. Not applicable to incense flames.
            always_burn:1b, //Whether this flame can be turned off by anything at all. Default = 0b. Not applicable to incense flames.
            fire_elemental_source:{}, //See <type>_elemental_source, above. Default = none.
            tags: [] //A list of tags to append to the flame's default tags, used to target the flame in functions. Default = none.
        }
    ],
    tags: [] //A list of tags to append to the furniture's default tags used to target the furniture in functions. Default = none.
}
```

Furniture shake sounds:
```
Value                        | Sound type
luigis_mansion:cello         | Cello
luigis_mansion:ceramic       | Ceramic
luigis_mansion:chest         | Chest
luigis_mansion:concrete      | Concrete
luigis_mansion:drum          | Drum
luigis_mansion:fridge        | Fridge
luigis_mansion:generic       | Generic
luigis_mansion:harp          | Harp
luigis_mansion:heavy_generic | Heavy generic
luigis_mansion:heavy_metal   | Heavy metal
luigis_mansion:metal         | Metal
luigis_mansion:oven          | Oven
luigis_mansion:plant         | Plant
luigis_mansion:plate         | Plate
luigis_mansion:saxophone     | Saxophone
luigis_mansion:stone         | Stone
luigis_mansion:wood          | Wood
luigis_mansion:xylophone     | Xylophone
```