import React from 'react'
import { connect } from 'dva'
import router from 'umi/router'
import moment from 'moment'
import {
  Descriptions, Button, Row, Col,
} from 'antd'

const { Item } = Descriptions

@connect(({ employee, loading }) => ({
  current: employee.current,
  loading: loading.effects['employee/fetchOne'],
}))
class Detail extends React.Component {
  constructor(props) {
    super(props)

    this.id = this.getID()
  }

  componentDidMount() {
    const { dispatch } = this.props

    dispatch({
      type: 'employee/fetchOne',
      payload: this.id,
    })
  }

  componentWillUnmount() {
    const { dispatch } = this.props

    dispatch({
      type: 'employee/resetCurrent',
    })
  }

  getID = () => {
    const { match } = this.props
    const { params: { id } } = match

    return id
  }

  handleEdit = () => {
    router.push(`/employee/update/${this.id}`)
  }

  render() {
    const {
      current: {
        name,
        age,
        telephone,
        email,
        company = {},
        department = {},
        position = {},
        status = {},
        hiredate,
        remark,
      },
    } = this.props
    return (
      <React.Fragment>
        <Row>
          <Col span={24}>
            <Button style={{ float: 'right', marginBottom: 10 }} type="primary" icon="edit" onClick={this.handleEdit}>编辑</Button>
          </Col>
        </Row>
        <Descriptions title="雇员信息">
          <Item label="姓名">{name}</Item>
          <Item label="年龄">{age}</Item>
          <Item label="电话">{telephone}</Item>
          <Item label="邮箱">{email}</Item>
          <Item label="公司">{company.name}</Item>
          <Item label="部门">{department.name}</Item>
          <Item label="职位">{position.name}</Item>
          <Item label="状态">{status.text}</Item>
          <Item label="入职时间">{moment.unix(hiredate).format('YYYY-MM-DD')}</Item>
          <Item label="备注">{remark}</Item>
        </Descriptions>
      </React.Fragment>
    )
  }
}

export default Detail
