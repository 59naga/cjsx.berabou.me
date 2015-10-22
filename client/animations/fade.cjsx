# Dependencies
CSSTransitionGroup= require 'react-addons-css-transition-group'

# Public
class Fade extends CSSTransitionGroup
  @defaultProps:
    component: 'div'
    transitionName: 'fade'
    transitionAppear: true
    transitionAppearTimeout: 500
    transitionEnterTimeout: 500
    transitionLeaveTimeout: 300

module.exports= Fade
