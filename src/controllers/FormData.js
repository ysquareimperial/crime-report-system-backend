
// const db = require ('../models')
import db from "../models"


//////////////////////POST/////////////////////////////////
const postMissingPerson = (req, res) => {

    const {
        fullName,
        address,
        phone,
        lastSeen,
        description,
    } = req.body;
    console.log(req.body);

    db.query(
        `INSERT INTO missingperson(fullName, address, phone, lastSeen, description) VALUES 
    ("${fullName}", "${address}", "${phone}","${lastSeen}", "${description}")`,
        (err, results) => {
            res.json({
                msg: 'post success'
            });
        }
    );
}
///////////////////GET///////////////////////////
 const fetchMissingPerson = (req, res) => {
    db.query(
        `SELECT * FROM missingperson`,
        (err, result) => {
            res.json({
                msg: 'post success',
                // result:result[0]
                result
            });
        }
    );
}






///////////////////////////////////////////////////////
const postHorrificIncident  = (req, res) => {

    const {
        incidentName,
        incidentAddress,
        incidentDescription
    } = req.body;
    console.log(req.body);

    db.query(
        `INSERT INTO horrificincident(incidentName, incidentAddress,  incidentDescription) VALUES 
    ("${incidentName}", "${incidentAddress}", "${incidentDescription}")`,
        (err, results) => {
            res.json({
                msg: 'post success'
            });
        }
    );
}
///////////////////GET///////////////////////////
 const fetchHorrificIncident = (req, res) => {
    db.query(
        `SELECT * FROM horrificincident`,
        (err, result) => {
            res.json({
                msg: 'post success',
                // result:result[0]
                result
            });
        }
    );
}

///////////////////////////////////////////////////////
 const postMissingVehicle = (req, res) => {

    const {
        vehicleName,
        vehicleModel,
        vehiclePlateNo,
        lastSeen,
        description
    } = req.body;
    console.log(req.body);

    db.query(
        `INSERT INTO missingvehicle(vehicleName, vehicleModel,  vehiclePlateNo, lastSeen, description) VALUES 
    ("${vehicleName}", "${vehicleModel}", "${vehiclePlateNo}", "${lastSeen}", "${description}")`,
        (err, results) => {
            res.json({
                msg: 'post success'
            });
        }
    );
}
///////////////////GET///////////////////////////
const fetchMissingVehicle  = (req, res) => {
    db.query(
        `SELECT * FROM missingvehicle`,
        (err, result) => {
            res.json({
                msg: 'post success',
                // result:result[0]
                result
            });
        }
    );
}



export {
    postMissingPerson, 
    fetchMissingPerson, 
    postHorrificIncident,
    fetchHorrificIncident, 
    postMissingVehicle, 
    fetchMissingVehicle
}