import React,{ Fragment } from 'react';
import { connect } from 'dva';
import { routerRedux } from 'dva/router';
import { Form, Card, Row, Col, Input, InputNumber, Select, Button, message } from 'antd';
import { TYPE, LEVEL } from '../common';

import styles from './index.less';

const { Option } = Select;
@connect(({contract, loading}) => ({
  current: contract.current,
}))
@Form.create()
class FormContract extends React.Component {

  // componentWillUnmount() {
  //   const { dispatch } = this.props;
  //   dispatch({
  //     type: 'contract/handleCurrent',
  //     payload: {},
  //   });
  // }

  handleSubmit = e => {
    e.preventDefault();
    const {
      form: { validateFields },
      match: { params },
      dispatch,
    } = this.props;
    // dispatch(routerRedux.push('/contract'));
    validateFields((err, values) => {
      if(!err) {
        let dispatchType = null;
        let dispatchPayload = {};
        if (!_.isEmpty(params) && !_.isUndefined(params.id)) {
          dispatchType = 'contract/edit';
          dispatchPayload = {
            id: params.id,
            data: values,
          }
        } else {
          dispatchType = 'contract/add';
          dispatchPayload = values;
        }
        dispatch({
          type: dispatchType,
          payload: dispatchPayload,
        }).then(req => {
          if(req && req.err_code) {
            message.error(req.message);
          } else {
            message.success(req.message);
            dispatch(routerRedux.push('/contract'));
          }
        });
      }
    });
    
  }

  handleCancel = () => {
    const { dispatch } = this.props;
    dispatch({
      type: 'contract/handleCurrent',
      payload: {},
    });
    dispatch(routerRedux.push('/contract'));
  }
  
  render() {
    const { getFieldDecorator } = this.props.form;
    const { current } = this.props;
    const {
      org_id,
      name,
      parent_id,
      spell,
      listorder,
      type,
      level,
    } = current;
    return (
      <Fragment>
        <Form layout="vertical" onSubmit={this.handleSubmit}>
          <div className={styles.submitbtn}>
            <Button type="primary" htmlType="submit">提交</Button>
            <Button type="default" onClick={this.handleCancel}>取消</Button>
          </div>
          <Card title="基本内容" className={styles.card}>
            <Row gutter={20}>
              <Col span={12}>
                <Form.Item label="编号">
                  {getFieldDecorator('org_id', {
                    rules: [
                      {
                        required: true,
                        message: '不能为空',
                      }
                    ],
                    initialValue: org_id || undefined,
                  })(<Input placeholder="请输入编号" />)}
                </Form.Item>
              </Col>
              <Col span={12}>
                <Form.Item label="名称">
                  {getFieldDecorator('name', {
                    rules: [
                      {
                        required: true,
                        message: '不能为空',
                      }
                    ],
                    initialValue: name || undefined,
                  })(<Input placeholder="请输入名称" />)}
                </Form.Item>
              </Col>
            </Row>
            <Row gutter={20}>
              <Col span={12}>
                <Form.Item label="父编号">
                  {getFieldDecorator('parent_id',{
                    rules: [
                      {
                        required: true,
                        message: '不能为空'
                      }
                    ],
                    initialValue: parent_id || undefined,
                  })(<Input placeholder="请输入父编号" />)}
                </Form.Item>
              </Col>
              <Col span={12}>
                <Form.Item label="英文名称">
                  {getFieldDecorator('spell', {
                    initialValue: spell || undefined,
                  })(<Input placeholder="请输入英文名称" />)}
                </Form.Item>
              </Col>
            </Row>
            <Row gutter={20}>
              <Col span={12}>
                <Form.Item label="类型">
                  {getFieldDecorator('type',{
                    rules: [
                      {
                        required: true,
                        message: '不能为空'
                      }
                    ],
                    initialValue: type || undefined,
                  })(
                    <Select placeholder="请选择类型">
                      {TYPE.map(item => {
                        return (
                          <Option key={item.id} value={item.id}>
                            {item.name}
                          </Option>
                        );
                      })}
                    </Select>
                  )}
                </Form.Item>
              </Col>
              <Col span={12}>
                <Form.Item label="级别">
                  {getFieldDecorator('level',{
                    initialValue: level || undefined,
                  })(
                    <Select placeholder="请选择级别">
                      {LEVEL.map(item => {
                        return (
                          <Option key={item.id} value={item.id}>
                            {item.name}
                          </Option>
                        );
                      })}
                    </Select>
                  )}
                </Form.Item>
              </Col>
            </Row>
            <Row>
              <Col>
                <Form.Item label="序号">
                  {getFieldDecorator('listorder', {
                    initialValue: listorder || undefined,
                  })(<InputNumber initialValue={10000} min={10000} max={200000} />)}
                </Form.Item>
              </Col>
            </Row>
          </Card>
          <Card title="附加内容" className={styles.card}>
          </Card>
          <div className={styles.submitbtn}>
            <Button type="primary" htmlType="submit">提交</Button>
            <Button type="default" onClick={this.handleCancel}>取消</Button>
          </div>
        </Form>
      </Fragment>
    )
  }
}
// Form.create()(FormContract)
export default FormContract
