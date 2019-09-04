import React from 'react'
import { connect } from 'dva'
import router from 'umi/router'
import moment from 'moment'
import {
  Form as AntdForm, Input, InputNumber, DatePicker, Select, Button, Spin,
} from 'antd'

const { Item: FormItem } = AntdForm
const { Option } = Select
const { TextArea } = Input

@connect(({ employee, loading }) => ({
  companies: employee.companies,
  departments: employee.departments,
  positions: employee.positions,
  statuses: employee.statuses,
  loading: loading.models.employee,
  current: employee.current,
}))
@AntdForm.create()
class Form extends React.Component {
  constructor(props) {
    super(props)

    this.id = this.getId()
    this.isEdit = !!this.id
  }

  componentDidMount() {
    const { dispatch, match } = this.props
    const { params: { id } } = match

    const fetchCompanies = () => dispatch({ type: 'employee/fetchCompanies' })
    const fetchDepartments = () => dispatch({ type: 'employee/fetchDepartments' })
    const fetchPositions = () => dispatch({ type: 'employee/fetchPositions' })
    const fetchStatuses = () => dispatch({ type: 'employee/fetchStatuses' })
    const fetchDetail = () => dispatch({ type: 'employee/fetchOne', payload: id })

    fetchCompanies()
    fetchDepartments()
    fetchPositions()
    fetchStatuses()

    if (this.isEdit) {
      fetchDetail()
    }
  }

  componentWillUnmount() {
    const { dispatch } = this.props

    dispatch({
      type: 'employee/resetCurrent',
    })
  }

  getId = () => {
    const { match } = this.props
    const { params: { id } } = match

    return id
  }

  handleSubmit = e => {
    const { form, dispatch } = this.props

    e.preventDefault()
    form.validateFieldsAndScroll((err, values) => {
      if (!err) {
        const data = {
          ...values,
          hiredate: values.hiredate.unix(),
        }

        if (this.isEdit) data.id = this.id
        dispatch({
          type: this.isEdit ? 'employee/edit' : 'employee/add',
          payload: data,
        })
      }
    })
  }

  handleCancel = () => {
    router.goBack()
  }

  render() {
    const {
      form, companies, departments, positions, statuses, loading, current,
    } = this.props
    const initialData = this.isEdit ? current : {}
    const {
      name, age, telephone, email, company = {}, department = {}, position = {}, status = {}, hiredate, remark,
    } = initialData
    const { getFieldDecorator } = form
    const REQUIRED_RULE = {
      required: true,
      message: '此项必填',
    }
    const formItemLayout = {
      labelCol: {
        xs: { span: 24 },
        sm: { span: 4 },
      },
      wrapperCol: {
        xs: { span: 24 },
        sm: { span: 8 },
      },
    }
    const tailFormItemLayout = {
      wrapperCol: {
        xs: {
          span: 24,
          offset: 0,
        },
        sm: {
          span: 8,
          offset: 4,
        },
      },
    }

    return (
      <Spin spinning={loading}>
        <AntdForm onSubmit={this.handleSubmit} {...formItemLayout}>
          <FormItem label="姓名">
            {getFieldDecorator('name', {
              initialValue: name,
              rules: [
                REQUIRED_RULE,
              ],
            })(
              <Input />,
            )}
          </FormItem>
          <FormItem label="年龄">
            {getFieldDecorator('age', {
              initialValue: age,
              rules: [
                REQUIRED_RULE,
              ],
            })(
              <InputNumber />,
            )}
          </FormItem>
          <FormItem label="手机号">
            {getFieldDecorator('telephone', {
              initialValue: telephone,
              rules: [
                REQUIRED_RULE,
                {
                  pattern: /^1\d{10}$/,
                  message: '请输入正确的手机号',
                },
              ],
            })(
              <Input />,
            )}
          </FormItem>
          <FormItem label="邮箱">
            {getFieldDecorator('email', {
              initialValue: email,
              rules: [
                REQUIRED_RULE,
                {
                  type: 'email',
                  message: '请输入正确的邮箱',
                },
              ],
            })(
              <Input />,
            )}
          </FormItem>
          <FormItem label="公司">
            {getFieldDecorator('company', {
              initialValue: company.id,
              rules: [
                REQUIRED_RULE,
              ],
            })(
              <Select>
                {
                  companies.map(item => (
                    <Option value={item.id} key={item.id}>{item.name}</Option>
                  ))
                }
              </Select>,
            )}
          </FormItem>
          <FormItem label="部门">
            {getFieldDecorator('department', {
              initialValue: department.id,
              rules: [
                REQUIRED_RULE,
              ],
            })(
              <Select>
                {
                  departments.map(item => (
                    <Option value={item.id} key={item.id}>{item.name}</Option>
                  ))
                }
              </Select>,
            )}
          </FormItem>
          <FormItem label="职位">
            {getFieldDecorator('position', {
              initialValue: position.id,
              rules: [
                REQUIRED_RULE,
              ],
            })(
              <Select>
                {
                  positions.map(item => (
                    <Option value={item.id} key={item.id}>{item.name}</Option>
                  ))
                }
              </Select>,
            )}
          </FormItem>
          <FormItem label="职位">
            {getFieldDecorator('status', {
              initialValue: status.id,
              rules: [
                REQUIRED_RULE,
              ],
            })(
              <Select>
                {
                  statuses.map(item => (
                    <Option value={item.id} key={item.id}>{item.text}</Option>
                  ))
                }
              </Select>,
            )}
          </FormItem>
          <FormItem label="入职日期">
            {getFieldDecorator('hiredate', {
              initialValue: hiredate ? moment.unix(hiredate) : undefined,
              rules: [
                REQUIRED_RULE,
              ],
            })(
              <DatePicker />,
            )}
          </FormItem>
          <FormItem label="备注">
            {getFieldDecorator('remark', {
              initialValue: remark,
            })(
              <TextArea />,
            )}
          </FormItem>
          <FormItem {...tailFormItemLayout}>
            <Button type="primary" htmlType="submit">提交</Button>
            <Button style={{ marginLeft: 30 }} onClick={this.handleCancel}>取消</Button>
          </FormItem>
        </AntdForm>
      </Spin>
    )
  }
}

export default Form
