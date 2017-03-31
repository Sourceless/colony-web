class Home extends React.Component {
  render () {
    return (
      <div className="home">
        <div className="jumbotron bg-inverse text-white text-center">
          <h1 className="display-3">Remote Team Hub</h1>
          <p className="lead">
            Work together effectively, even when you're far apart.
          </p>
          <a className="btn btn-primary btn-lg" href={Routes.new_account_path()}>Get Started</a>
        </div>

        <div className="row">
          <div className="col">
            <h2>Stay informed</h2>
            <p>
              It's vital that you know who's online and 
              who you can call for help if you need it.
              Colony offers easy team views so you can know
              who's in and who's out at a glance.
            </p>
          </div>
          <div className="col">

          </div>
        </div>
        <div className="row">
          <div className="col">
          
          </div>
          <div className="col">
            <h2>Don't leave the kettle on</h2>
            <p>
              Let your teammates know when you're going on break,
              if you have to leave for an emergency, or even if you're just
              going to be a little late today. Using the Colony dashboard
              or our slackbot, you can keep everybody updated without disturbing
              them.
            </p>
          </div>
        </div>
        <div className="row">
          <div className="col">
            <h2>Heads down</h2>
            <p>
              No more being poked on slack in the middle of an intense session
              to see if you're available. Those cat pictures can wait til later.
            </p>
          </div>
          <div className="col">

          </div>
        </div>
        <div className="row">
          <div className="col">
          </div>
          <div className="col">
            <h2>Monitor from a distance</h2>
            <p>
              Managers and team leaders can get a bird's eye view of the team on
              the status board. Plug in JIRA, GitHub and other applications and
              see what your team are up to without having to distract them.
            </p>
          </div>
        </div>
        <div className="row">
          <div className="col">
            <h2>Celebrate your people</h2>
            <p>
              Show your appreciation to team members with reactions to their
              activity. Somebody completed that monster task? Awesome! Let
              them know they made an impact.
            </p>
          </div>
          <div className="col">
          </div>
        </div>
      </div>
    );
  }
}
