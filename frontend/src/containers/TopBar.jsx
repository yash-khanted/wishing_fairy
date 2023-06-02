import React, { Fragment } from 'react'
import './TopBar.css'
import ProfileBtn from '../components/ProfileBtn'


function TopBar() {
  return (
    <div className="top">
      <ProfileBtn></ProfileBtn>
    </div>
  )
}

export default TopBar