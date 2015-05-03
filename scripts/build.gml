/// check control code

switch (data)
{
    case M_WIDTH:
    {
        r_mapwidth = read_word()                            // r_mapwidth
        last_type=T_MAP
        break
    }
    
    case M_HEIGHT:
    {
        r_mapheight = read_word()                           // r_mapheight
        last_type=T_MAP
        break
    }
    
    case M_TILEWIDTH:
    {
        r_tilewidth = read_byte()                           // r_tilewidth
        room_set_width(newroom, r_mapwidth*r_tilewidth)
        last_type=T_MAP
        break
    }
    
    case M_TILEHEIGHT:
    {
        r_tileheight = read_byte()                          // r_tileheight
        room_set_height(newroom, r_mapheight*r_tileheight)
        last_type=T_MAP
        break
    }
    
    case M_PROPERTY_NAME:
    {
        r_property=read_string()                            // r_property
        break
    }
    
    case M_PROPERTY_VALUE:
    {
        r_value=read_string()                               // r_vvalue
        check_property()
        break
    }

    case M_TS_FIRST:
    {
        a=read_word()
        ds_list_replace(tileset, TS_FIRST, a)               // TS_FIRST
        break
    }
    
    case M_TS_NAME:
    {
        a=read_string()
        ds_list_replace(tileset, TS_NAME, a)                // TS_NAME
        break
    }
    
    case M_TS_TILEWIDTH:
    {
        a=read_byte()
        ds_list_replace(tileset, TS_TILEWIDTH, a)           // TS_TILEWIDTH
        break
    }
    
    case M_TS_TILEHEIGHT:
    {
        a=read_byte()
        ds_list_replace(tileset, TS_TILEHEIGHT, a)          // TS_TILEHEIGHT
        break
    }
    
    case M_TS_IMAGE:
    {
        ts_image=read_string()                              // TS_IMAGE
        create_background()
        break
    }
    
    
    case M_L_NAME:                                          // r_layername
    {
        t_depth=10000
        r_layer_name = read_string()
        r_layer_opacity=1
        last_type=T_LAYER
        break
    }
    
    case M_L_OPACITY:                                       // r_layeropacity
    {
        r_layer_opacity = real(read_string())
        last_type=T_LAYER
        break
    }
    
    case M_L_DATA:
    {
        make_layer()
        break
    }
    
    case M_O_OBJECT:
    {
        r_objectgid = read_word()
        last_type=T_OBJECT
        break
    }
    
    case M_O_X:
    {
        r_objectx=read_word()
        last_type=T_OBJECT
        break
    }
    
    case M_O_Y:
    {
        r_objecty=read_word()
        last_type=T_OBJECT
        make_object()
        break
    }
    
   default:
    {
        show_message('Error. Unknown code:'+string(data)+'#fsize='+string(fsize))
        fsize=0
    }
}

