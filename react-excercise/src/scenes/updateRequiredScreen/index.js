import React from 'react'
import Footer from '../../components/footer'
import '../../styles/updateRequiredScreen.css'

const UpdateRequiredScreen = ({ appName, appVersion, os }) => {
  return (
    <div className='UpdateRequiredScreen'>
      <p className='UpdateRequired'>Update required</p>
      <Footer 
        appName={appName}
        appVersion={appVersion}
        os={os}
      />
    </div>
  )
}

export default UpdateRequiredScreen