const startServer = require('ace-collab/lib/server/index.js')

console.log(process.env.ALLOWED_ORIGINS)

const allowedOrigins = !!process.env.ALLOWED_ORIGINS ? process.env.ALLOWED_ORIGINS : []
const host = process.env.HOST || '0.0.0.0'
const port = process.env.PORT || 3333
const readOnly = process.env.READ_ONLY || false

const options = {
    allowedOrigins,
    host,
    port,
}

startServer(options)
