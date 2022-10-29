using { vuelos.schema as db } from '../db/schema';

service VueloService {

    entity VueloSet as projection on db.Vuelo;
    entity AvionSet as projection on db.Avion;

}