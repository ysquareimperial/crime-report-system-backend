import {postMissingPerson, 
    fetchMissingPerson, 
    postHorrificIncident,
    fetchHorrificIncident, 
    postMissingVehicle, 
    fetchMissingVehicle,
    
} from  "../controllers/FormData"

module.exports  = (app) => {

    app.post('/missingperson', postMissingPerson)
    app.get('/missingperson', fetchMissingPerson)
    app.post('/horrificincident', postHorrificIncident)
    app.get('/horrificincident', fetchHorrificIncident)
    app.post('/missingvehicle', postMissingVehicle)
    app.get('/missingvehicle',  fetchMissingVehicle)
}