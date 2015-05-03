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

for (i=0; i<r_mapwidth*r_mapheight; i+=1)
{
    newt=read_int()
    if (newt!=0)
    {
        if (newt & $80000000 > 0) { flipx = -1 } else { flipx = 1 }
        if (newt & $40000000 > 0) { flipy = -1 } else { flipy = 1 }
        new = newt & $FFFFFFF

        ts=find_tileset(new)
        t_bg=ds_list_find_value(ts,TS_BG_INDEX)
        t_width=ds_list_find_value(ts,TS_TILEWIDTH)
        t_height=ds_list_find_value(ts,TS_TILEHEIGHT)
        t_tsname=ds_list_find_value(ts,TS_NAME)
        new=new-ds_list_find_value(ts,TS_FIRST)

        w=background_get_width(t_bg) div r_tilewidth;
        h=background_get_height(t_bg) div r_tileheight;
        ty=new div w;
        tx=new-(ty*w);

        ty*=r_tileheight; tx*=r_tilewidth;
        
        cy=i div r_mapwidth;
        cx=i-(cy*r_mapwidth);
        cx*=r_tilewidth; cy*=r_tileheight;

        if (flipx<0) { shiftx=t_width } else { shiftx=0 }
        if (flipy<0) { shifty=t_height } else { shifty=0 }
        
        room_tile_add_ext(newroom, t_bg, tx, ty, t_width, t_height, cx+shiftx, cy+shifty, t_depth, flipx, flipy, r_layer_opacity);
    }
}
