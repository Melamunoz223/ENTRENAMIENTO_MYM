CLASS zcl_ventas_mym DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ventas_mym IMPLEMENTATION.

    METHOD if_oo_adt_classrun~main.


      DATA:
      ltd_header TYPE STANDARD TABLE OF ztheader_mym.

      out->write( |Delete   -> Travel ztb_booking_8712| ).
      DELETE FROM ztheader_mym.

      ltd_header
              = VALUE #(
                          (
                              id            =  '0000005001'
                              email         =  'juan@example.com'
                              firstname     =  'Juan'
                              lastname      =  'Martínez'
                              country       =  'Mexico'
                              createon      =  '20240228'
                              delivereddate =  '20240310'
                              orderstatus   =  '1'
                              imageurl      =  'juan'

                          )

                          (
                               id            =   '0000005002'
                               email         =   'maria@example.com'
                               firstname     =   'Maria'
                               lastname      =   'González'
                               country       =   'Spain'
                               createon      =   '20240228'
                               delivereddate =   '20240312'
                               orderstatus   =   '2'
                               imageurl      =   'maria'

                          )
                          (
                               id            =   '0000005003'
                               email         =   'carlos@example.com'
                               firstname     =   'Carlos'
                               lastname      =   'López'
                               country       =   'Argentina'
                               createon      =   '20240228'
                               delivereddate =   '20240315'
                               orderstatus   =   '3'
                               imageurl      =   'carlos'

                          )
                          (
                               id            =   '0000005004'
                               email         =   'laura@example.com'
                               firstname     =   'Laura'
                               lastname      =   'Rodríguez'
                               country       =   'Colombia'
                               createon      =   '20240228'
                               delivereddate =   '20240318'
                               orderstatus   =   '4'
                               imageurl      =   'laura'

                          )
                          (
                               id            =   '0000005005'
                               email         =   'pedro@example.com'
                               firstname     =   'Pedro'
                               lastname      =   'Sánchez'
                               country       =   'Chile'
                               createon      =   '20240228'
                               delivereddate =   '20240320'
                               orderstatus   =   '1'
                               imageurl      =   'pedro'

                          )
                          (
                               id            =   '0000005006'
                               email         =   'ana@example.com'
                               firstname     =   'Ana'
                               lastname      =   'Pérez'
                               country       =   'Peru'
                               createon      =   '20240228'
                               delivereddate =   '20240322'
                               orderstatus   =   '2'
                               imageurl      =   'ana'

                          )
                          (
                               id            =   '0000005007'
                               email         =   'jorge@example.com'
                               firstname     =   'Jorge'
                               lastname      =   'Hernández'
                               country       =   'Ecuador'
                               createon      =   '20240228'
                               delivereddate =   '20240325'
                               orderstatus   =   '3'
                               imageurl      =   'jorge'

                          )
                          (
                               id            =   '0000005008'
                               email         =   'luisa@example.com'
                               firstname     =   'Luisa'
                               lastname      =   'Martínez'
                               country       =   'Bolivia'
                               createon      =   '20240228'
                               delivereddate =   '20240328'
                               orderstatus   =   '4'
                               imageurl      =   'luisa'

                          )
                          (
                               id            =   '0000005009'
                               email         =   'roberto@example.com'
                               firstname     =   'Roberto'
                               lastname      =   'Díaz'
                               country       =   'Uruguay'
                               createon      =   '20240228'
                               delivereddate =   '20240330'
                               orderstatus   =   '1'
                               imageurl      =   'roberto'

                          )
                          (
                               id            =   '0000005010'
                               email         =   'sofia@example.com'
                               firstname     =   'Sofia'
                               lastname      =   'López'
                               country       =   'Paraguay'
                               createon      =   '20240228'
                               delivereddate =   '20240402'
                               orderstatus   =   '2'
                               imageurl      =   'sofia'

                          )
                         ).

      IF lines( ltd_header ) > 0.

        INSERT ztheader_mym FROM TABLE @ltd_header.

      ENDIF.

      out->write( |insert -> Header ztheader_mym| ).

    ENDMETHOD.
ENDCLASS.
