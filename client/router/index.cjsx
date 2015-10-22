# Dependencies
React= require 'react'

Fade= require '../animations/fade'
Link= require 'react-router/lib/Link'

Router= require 'react-router/lib/Router'
createBrowserHistory= require 'history/lib/createBrowserHistory'
history= createBrowserHistory() if window?

# Public
class Top extends React.Component
  render: ->
    <Fade>
      <article key="1">
        <h1>hello world</h1>
        {@props.children}

        <nav>
          <Link to="/">home</Link>
          <Link to="/welcome">welcome</Link>
          <Link to="/nanmonaiyo">404</Link>
        </nav>
      </article>
    </Fade>

class Home extends React.Component
  render: ->
    <Fade>
      <article key="2">
        <h2>どうなるんこれ</h2>
        {@props.children}
      </article>
    </Fade>

class Welcome extends React.Component
  render: ->
    <Fade>
      <article key="2">
        <h2>ウェル米</h2>
        {@props.children}
      </article>
    </Fade>

class Notfound extends React.Component
  render: ->
    <Fade>
      <article key="2">
        <h2>なんもないってば</h2>
        {@props.children}
      </article>
    </Fade>

# Routes
routes= [
  path: '/'
  component: Top
  indexRoute: {
    component: Home
  }
  childRoutes: [
    {
      path: 'welcome'
      component: Welcome
    }
    {
      path: '*'
      component: Notfound
    }
  ]
]

module.exports= <Router history={history} routes={routes} />
