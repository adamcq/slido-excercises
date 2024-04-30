import React, { useEffect, useState } from 'react';
import queryString from 'query-string';
import semver from 'semver';
import './styles/App.css';
import WelcomeScreen from './scenes/welcomeScreen';

function App() {
  const [queryParams, setQueryParams] = useState({});
  const [showUpdateRequired, setShowUpdateRequired] = useState(false);

  useEffect(() => {
    // Parse query string parameters
    const params = queryString.parse(window.location.search);
    setQueryParams(params);

    // Check if update is required
    if (params.os === 'win') {
      if (semver.lt(params.appversion, '1.5.0')) {
        setShowUpdateRequired(true);
      }
    } else if (params.os === 'mac') {
      const outdatedVersions = ['1.5.100', '1.5.120', '1.5.123'];
      if (semver.lt(params.appversion, '0.28.0') || outdatedVersions.includes(params.appversion)) {
        setShowUpdateRequired(true);
      }
    }
  }, []);

  return (
    <div className='App'>
      <WelcomeScreen 
        showUpdateRequired={showUpdateRequired}
        appName={queryParams.apphost}
        appVersion={queryParams.appversion}
        os={queryParams.os}
      />
    </div>
  );
}

export default App;
