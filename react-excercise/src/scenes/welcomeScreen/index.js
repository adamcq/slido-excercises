import React from 'react'
import '../../styles/welcomeScreen.css'
import Footer from '../../components/footer'

const WelcomeScreen = ({ showUpdateRequired, appName, os, appVersion }) => {
  return (
    <div className='WelcomeScreen'>
      <div>
        <button className='GettingStartedButton'>Getting Started</button>
        {showUpdateRequired ? <p className='UpdateRequired'>Update required</p> : null}
      </div>
      <Footer appName={appName} os={os} appVersion={appVersion} />
    </div>
  )
}

export default WelcomeScreen