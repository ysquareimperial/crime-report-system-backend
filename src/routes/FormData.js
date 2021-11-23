import {
    postMissingPerson,
    fetchMissingPerson,
    postHorrificIncident,
    fetchHorrificIncident,
    postMissingVehicle,
    fetchMissingVehicle,
    fetchAllUsesrs,
    fetchUser,
    updateUser,
    deleteUser,
    AllMissingPerson,
    AllHorrificIncident,
    AllMissingVehicle

} from "../controllers/FormData"

module.exports = (app) => {

    app.post('/missingperson', postMissingPerson)
    app.get('/missingperson_get', fetchMissingPerson)
    app.post('/horrificincident', postHorrificIncident)
    app.get('/horrificincident_get', fetchHorrificIncident)
    app.post('/missingvehicle', postMissingVehicle)
    app.get('/missingvehicle_get', fetchMissingVehicle)
    app.get('/users', fetchAllUsesrs)
    app.get('/get-user/new', fetchUser)
    app.put('/update-user/new', updateUser)
    app.delete('/delete-user/new', deleteUser)
    app.get('/all_missingperson_get', AllMissingPerson)
    app.get('/all_horrificincident_get', AllHorrificIncident)
    app.get('/all_missingvehicle_get', AllMissingVehicle)
}