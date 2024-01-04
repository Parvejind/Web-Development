const express = require('express')
const {signup, signin, getUser} = require('../controller/authController')
const jwtAuth = require('../backend/model/jwtAuth')
const { logout } = require('../backend/controller/authcontroller')
const authRouter = express.Router()

authRouter.post('/sign', signup)
authRouter.post('/sign', signin)
authRouter.get('/user', getUser)
authRouter.get('/logout', jwtAuth, logout)

module.exports = authRouter