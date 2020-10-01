const express = require('express')
const ip = require('ip')

express()
  .get('*', (req, res) => res.send('test or whatever'))
  .listen(4321, () => console.log(`test server open on http://${ip.address()}:4321`))
