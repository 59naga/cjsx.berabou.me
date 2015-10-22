# Dependencies
router= require './router'

if window?
  addEventListener 'DOMContentLoaded',->
    ReactDOM= require 'react-dom'
    ReactDOM.render router,document.querySelector 'main'

module.exports= router
