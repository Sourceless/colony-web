class Pricing extends React.Component {
  render () {
    return (
      <div>
        <div className="row">
          <div className="col text-center my-5">
            <h1 className="display-4">Plans for any budget</h1>
            <p className="lead">30 days for free, no contract, to try out and fall in love with colony. </p>
          </div>
        </div>
        <div className="row">
          <div className="col">
            <div className="card">
              <div className="card-block text-center">
                <h2>Startup</h2>
                <h1 className="display-1">$30</h1>
                <p>per month</p>
              </div>
              <div className="card-block">
                <ul>
                  <li>Up to 10 seats</li>
                  <li>Unlimited Activity Sources</li>
                  <li>Slack Integration</li>
                  <li>Ticket support</li>
                </ul>
              </div>
              <div className="card-block text-center">
                <a className="btn btn-primary" href={Routes.new_account_path()}>Start Now</a>
              </div>
            </div>
          </div>
          <div className="col">
            <div className="card bg-primary text-white">
              <div className="card-block text-center">
                <h2>Business</h2>
                <h1 className="display-1">$150</h1>
                <p>per month (based on 50 users)</p>
              </div>
              <div className="card-block">
                <ul>
                  <li>Up to 200 seats</li>
                  <li>Unlimited Activity Sources</li>
                  <li>Slack Integration</li>
                  <li>Ticket and Phone support</li>
                  <li>Multiple Teams</li>
                </ul>
              </div>
              <div className="card-block text-center">
                <a className="btn btn-secondary btn-lg" href="#">Start Now</a>
              </div>
            </div>
          </div>
          <div className="col">
            <div className="card">
              <div className="card-block text-center">
                <h2>Enterprise</h2>
                <h1 className="display-3 py-3 mb-4">Custom</h1>
              </div>
              <div className="card-block mt-3">
                <ul>
                  <li>Fully tailored plan</li>
                  <li>Highest-priority support</li>
                  <li>Pre-release feature access</li>
                  <li>Demos and training</li>
                </ul>
              </div>
              <div className="card-block text-center">
                <a className="btn btn-primary" href="#">Contact us</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
