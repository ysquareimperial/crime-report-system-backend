
// const db = require ('../models')
import db from "../models"


const fetchAllUsesrs = (req, res) => {
    db.sequelize.query(
        `SELECT * FROM users`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result: result[0]
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })
}

const fetchUser = (req, res) => {
    const { id } = req.query
    db.sequelize.query(
        `SELECT * FROM users WHERE id = ${id}`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result: result[0]
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })
}
const updateUser = (req, res) => {
    const { fullName,
        phone,
        email,
        address,
        nin,
        password } = req.body
    const { id } = req.query
    db.sequelize.query(
        `UPDATE users SET fullName="${fullName}",phone="${phone}",email="${email}",address="${address}",nin=${nin},password="${password}" 
        WHERE id = ${id}`)
        .then((result) => {
            res.json({
                success: true,
                result
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })

}

const deleteUser = (req, res) => {
    const { id } = req.body
    console.log(req.body)
    db.sequelize.query(
        `DELETE FROM users WHERE id = ${id}`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result
            })
        })
        .catch((err) => {
            console.log(err)
            res.status(500).json({
                err
            })
        })
}

//////////////////////POST/////////////////////////////////
const postMissingPerson = (req, res) => {

    const {
        fullName,
        address,
        phone,
        lastSeen,
        description,
        email
    } = req.body;
    console.log(req.body);

    db.sequelize.query(
        `INSERT INTO missingperson(fullName, address, phone, lastSeen, description, email) VALUES 
    ("${fullName}", "${address}", "${phone}","${lastSeen}", "${description}", "${email}")`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })
}
///////////////////GET///////////////////////////
const fetchMissingPerson = (req, res) => {
    const {email} = req.query
    db.sequelize.query(
        `SELECT * FROM missingperson WHERE email = "${email}"`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result: result[0]
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })
    // console.log(req.params)
}






///////////////////////////////////////////////////////
const postHorrificIncident = (req, res) => {

    const {
        incidentName,
        incidentAddress,
        incidentDescription,
        incidentDate,
        email
    } = req.body;
    console.log(req.body);

    db.sequelize.query(
        `INSERT INTO horrificincident(incidentName, incidentAddress,  incidentDescription, incidentDate, email) VALUES 
    ("${incidentName}", "${incidentAddress}", "${incidentDescription}", "${incidentDate}","${email}")`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })


}
///////////////////GET///////////////////////////
const fetchHorrificIncident = (req, res) => {
    const {email} = req.query
    db.sequelize.query(
        `SELECT * FROM horrificincident WHERE email = "${email}"`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result: result[0]
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })
}

///////////////////////////////////////////////////////
const postMissingVehicle = (req, res) => {

    const {
        vehicleName,
        vehicleModel,
        vehiclePlateNo,
        lastSeen,
        description,
        email
    } = req.body;
    console.log(req.body);

    db.sequelize.query(
        `INSERT INTO missingvehicle(vehicleName, vehicleModel,  vehiclePlateNo, lastSeen, description, email) VALUES 
    ("${vehicleName}", "${vehicleModel}", "${vehiclePlateNo}", "${lastSeen}", "${description}", "${email}")`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })
}
///////////////////GET///////////////////////////
const fetchMissingVehicle = (req, res) => {
    const {email} = req.query
    db.sequelize.query(
        `SELECT * FROM missingvehicle WHERE email = "${email}"`)
        .then((result) => {
            res.json({
                success: true,
                msg: "post success",
                result: result[0]
            })
        })
        .catch((err) => {
            console.log(err)
            res.json({
                err
            })
        })
}



export {
    postMissingPerson,
    fetchMissingPerson,
    postHorrificIncident,
    fetchHorrificIncident,
    postMissingVehicle,
    fetchMissingVehicle,
    fetchAllUsesrs,
    fetchUser,
    updateUser,
    deleteUser
}