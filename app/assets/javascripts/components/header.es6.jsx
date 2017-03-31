class Header extends React.Component {
  render () {
    return (
      <nav className="navbar navbar-toggleable-md navbar-light">
        <a className="navbar-brand" href={Routes.root_path()}>Colony</a> 
        <div className="collapse navbar-collapse" id="navBarNavDropdown">
          <ul className="navbar-nav mr-auto">
          </ul>
          <ul className="navbar-nav">
            <li className="nav-item">
              <a className="nav-link text-primary" href={Routes.new_account_path()}>Create an account</a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href={Routes.user_session_path()}>Log in</a>
            </li>
          </ul>
        </div>
      </nav>
    );
  }
}

