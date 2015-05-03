/// load data from file and create room

file=noone

if (file_exists('maps\'+argument0))
{
    file=file_bin_open('maps\'+argument0,0)
}
if (file<0)
{
    show_message('Cant open file: '+argument0)
    game_end()
    exit
}

define_objects()

/* output data
variables:
    r_mapwidth      room width
    r_mapheight     room height
    r_tilewidth     tile width
    r_tileheight    tile height
    r_layername
    r_layeropacity
    r_objectname
    r_objectx
    r_objecty
    
structures:
    properties:
        prop_names      property name
        prop_values     property value
    tilesets_list:
        tileset:
        {
            TS_FIRST
            TS_NAME
            TS_TILEWIDTH
            TS_TILEHEIGHT
            TS_BG_INDEX
        }
*/

newroom=room_add()

globalvar prop_names, prop_values, prop_id, nam, val;
prop_names = ds_list_create()
prop_values = ds_list_create()
prop_id = ds_list_create()

tilesets_list = ds_list_create()
tileset = ds_list_create()
clear_list(tileset,5)

layers=ds_map_create()
r_layer_name=''
r_layer_opacity=1
ts_image=0

r_property=0
r_value=0

last_object=noone
last_type=noone;


fsize=file_bin_size(file)

while (fsize>0)
{
    data=read_byte()
    build()
}

room_set_view(newroom,0,true,0,0,640,480,0,0,640,480,320,240,-1,-1,-1)
room_set_view_enabled(newroom,true)
room_goto(newroom)
