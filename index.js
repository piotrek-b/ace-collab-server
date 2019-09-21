const startServer = require('ace-collab/lib/server/index.js')

const allowedOrigins = !!process.env.ALLOWED_ORIGINS ? JSON.parse(process.env.ALLOWED_ORIGINS) : []
const host = process.env.HOST || '0.0.0.0'
const port = process.env.PORT || 3333
const readOnly = process.env.READ_ONLY === 'true'

const options = {
    allowedOrigins,
    host,
    port,
    readOnly,
}

startServer(options)
