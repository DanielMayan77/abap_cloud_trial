CLASS zdm_class_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zdm_class_art IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

   DATA: it_art TYPE STANDARD TABLE OF zdm_tab_art.

   it_art = VALUE #(
   ( client = sy-mandt id_art = 1 descr = 'Mini colores' desc2 = 'Un mini estuche, con mini colores'
     color = 'varios' piezas = 12 stock = 10
     URL = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_600x.jpg?v=1676577703' )
   ( client = sy-mandt id_art = 2 descr = 'Monthly Planner' desc2 = 'Ideal para planificar tus metas y proyectos. Tiene un espacio para 24 meses, para que distribuyas la información como mejor te convenga.'
     color = 'negro' piezas = 1 stock = 100
     URL = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-3_204e518f-b0a5-4ed1-a5c3-676dd8e98a6f_600x.jpg?v=1588283579' )
    ( client = sy-mandt id_art = 3 descr = 'Maarcadores' desc2 = 'Zebra Mildliner Colores Pastelesv'
     color = 'varios' piezas = 5 stock = 20
     URL = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-mildliner-pasteles-01_600x.jpg?v=1711595335' )
   ( client = sy-mandt id_art = 4 descr = 'Lapiz' desc2 = 'Tombow 2558 #HB'
     color = 'Negro' piezas = 1 stock = 1
     URL = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-tombow2558-1_600x.jpg?v=1711139173' )
    ).

    INSERT zdm_tab_art FROM TABLE @it_art.
    IF sy-subrc EQ 0.
     out->write( 'Insert successful' ).
    ELSE.
     out->write( 'Insert wrong' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
