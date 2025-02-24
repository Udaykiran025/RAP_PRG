@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for connection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@UI.headerInfo: {
    typeName: 'Connection',
    typeNamePlural: 'Connections'

    }
@Search.searchable: true
define view entity ZI_Conncection
  as select from /dmo/connection as connection
  association [1..*] to ZI_FLIGHT_UD  as _Flight  on  $projection.CarrierId    = _Flight.CarrierId
                                                  and $projection.ConnectionId = _Flight.ConnectionId
  association [1]    to ZI_CARRIER_UD as _Airline on  $projection.CarrierId = _Airline.CarrierId
{
      @UI.facet: [{ id: 'Connection',
                    purpose: #STANDARD,
                    type: #IDENTIFICATION_REFERENCE,
                    position: 10,
                    label: 'Connection Details'},

                   { id: 'Flight',
                     purpose: #STANDARD,
                     type: #LINEITEM_REFERENCE,
                     position: 20,
                     label: 'Flight Details',
                     targetElement: '_Flight'}
                   ]
      @UI.identification: [{ position: 10 }]
      @UI.lineItem: [{ position: 10 }]
      @UI.selectionField: [{ position: 10  }]
      @ObjectModel.text.association: '_Airline'
      @Search.defaultSearchElement: true
  key carrier_id      as CarrierId,
      @UI.identification: [{ position: 0 }]
      @UI.lineItem: [{ position: 20 }]
      @UI.selectionField: [{ position: 20 }]
      @Search.defaultSearchElement: true
  key connection_id   as ConnectionId,
      @UI.identification: [{ position: 30 }]
      @UI.lineItem: [{ position: 30 }]
      @UI.selectionField: [{ position: 30  }]
      @Consumption.valueHelpDefinition: [{ entity: {
          name: 'ZI_AIRPORT_UD',
          element: 'AirportId'
      } }]
      airport_from_id as AirportFromId,
      @UI.identification: [{ position: 40 }]
      @UI.lineItem: [{ position: 40 }]
      airport_to_id   as AirportToId,
      @UI.identification: [{ position: 50, label: 'Departure Time'}]
      @UI.lineItem: [{ position: 50, label: 'Departure Time' }]
      departure_time  as DepartureTime,
      @UI.identification: [{ position: 60, label: 'Arrival Time' }]
      @UI.lineItem: [{ position: 60, label: 'Arrival Time' }]
      arrival_time    as ArrivalTime,
      @UI.identification: [{ position: 70 }]
      @UI.lineItem: [{ position: 70 }]
      @Semantics.quantity.unitOfMeasure: 'DistanceUnit'
      distance        as Distance,
      distance_unit   as DistanceUnit,
      // Association
      _Flight,
      @Search.defaultSearchElement: true
      _Airline
}
