namespace vuelos.schema;


entity Vuelo {
    ID               : Int16;
    salida           : Date;
    precio_prim_cla  : Decimal(16, 2);
    precio_ejec_cla  : Decimal(16, 2);
    precio_turi_cla  : Decimal(16, 2);
    vendido_prim_cla : Int16;
    vendido_ejec_cla : Int16;
    vendido_turi_cla : Int16;
    
    avion            : Association to Avion;
}

entity Avion {
    ID                   : Int16;
    nombre               : String(32);
    asiento_prim_cla     : Int16;
    asiento_ejec_cla     : Int16;
    asiento_turi_cla     : Int16;
    virtual asiento_cant : Int16;

    vuelo                : Association to many Vuelo
                               on vuelo.avion = $self;
}
