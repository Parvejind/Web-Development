const JWT = require('jsonwebtoken')

const jwtAuth = (req, res, next) => {
    const token = (req.cookie && req.cokkies.token) || null
    if (!token) {
         return res.status(400).json({
            success: false,
            message: 'Not authorized'
         })
    }

    try {
        const payload = JWT.verify(token, process.env.SECRET)
        req.user = {id: payload.id, emaail: payload.emaail}
    } catch(e) {
        return res.status(400).json({
            success: false,
            message: e.message
        })
    }
    next()
}

module.exports = jwtAuth