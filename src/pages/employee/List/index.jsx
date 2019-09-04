import React from 'react'
import { connect } from 'dva'
import Link from 'umi/link'
import router from 'umi/router'
import { Table, Button } from 'antd'

@connect(({ employee, loading }) => ({
  list: employee.list,
  loading: loading.models.employee,
}))
class List extends React.Component {
  columns = [
    {
      title: '姓名',
      dataIndex: 'name',
      render(text, record) {
        return <Link to={`/employee/${record.id}`}>{text}</Link>
      },
    },
    {
      title: '公司',
      dataIndex: 'company',
      render(text) {
        return text.name
      },
    },
    {
      title: '职位',
      dataIndex: 'position',
      render(text) {
        return text.name
      },
    },
    {
      title: '状态',
      dataIndex: 'status',
      render(text) {
        return text.text
      },
    },
    {
      title: '操作',
      key: 'operation',
      render: (text, record) => [
        <Button key="edit" shape="circle" icon="edit" onClick={() => this.handleEdit(record.id)} />,
        <Button key="delete" style={{ marginLeft: 5 }} type="danger" shape="circle" icon="delete" onClick={() => this.handleDelete(record.id)} />,
      ],
    },
  ]

  handleEdit = id => {
    router.push(`/employee/update/${id}`)
  }

  handleDelete = id => {
    const { dispatch } = this.props

    dispatch({
      type: 'employee/remove',
      payload: id,
    })
  }

  render() {
    const { list, loading } = this.props

    return (
      <Table
        rowKey="id"
        loading={loading}
        columns={this.columns}
        dataSource={list}
      />
    )
  }
}

export default List
