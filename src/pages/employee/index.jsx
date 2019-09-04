import React from 'react'
import { connect } from 'dva'
import { Button } from 'antd'
import List from './List'

@connect()
class Employee extends React.Component {
  componentDidMount() {
    const { dispatch } = this.props

    dispatch({
      type: 'employee/fetch',
    })
  }

  handleAdd = () => {
    const { history } = this.props

    history.push('/employee/create')
  }

  render() {
    return (
      <React.Fragment>
        <Button style={{ marginBottom: 10 }} type="primary" onClick={this.handleAdd}>新增</Button>
        <List />
      </React.Fragment>
    )
  }
}

export default Employee
