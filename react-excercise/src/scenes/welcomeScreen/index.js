import React from 'react'
import '../../styles/welcomeScreen.css'
import Footer from '../../components/footer'

const WelcomeScreen = ({appName, appVersion, os}) => {
  return (
    <div className='WelcomeScreen'>
      <div>
        <button className='GettingStartedButton'>Getting Started</button>
      </div>
      <Footer 
        appName={appName}
        appVersion={appVersion}
        os={os}
      />
    </div>
  )
}

export default WelcomeScreen