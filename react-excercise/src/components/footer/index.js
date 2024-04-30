import React from 'react'
import { getAppInfoFromQueryString } from './appInfo'
import '../../styles/footer.css'

const Footer = ({ appName, os, appVersion }) => {
  getAppInfoFromQueryString();
  return (
    <footer className='Footer'>
      <p>Application Name: {appName}</p>
      <p>OS Platform: {os}</p>
      <p>Version: {appVersion}</p>
    </footer>
  )
}

export default Footer