import React, { Fragment } from 'react';
import { connect } from 'dva';
import { routerRedux } from 'dva/router';
import { Card, Row, Col, Button, Table, Divider, Modal, message, Icon, Descriptions } from 'antd';
import { TYPE, LEVEL, getParseValue, getParseOption } from '../common';
import { showPaginationText } from '@/utils/utils';
import _ from 'lodash';

import styles from './index.less';

const { confirm } = Modal;

@connect(({contract, loading}) => ({
  data: contract.data,
  isfetch: contract.isfetch,
  loading: loading.models.contract,
}))
class List extends React.Component {

  state = {visible:false, item:null};

  componentDidMount() {
    const { dispatch, isfetch } = this.props;
    if(isfetch) {
      dispatch({
        type: 'contract/fetch',
        payload: {
          current: 1,
        }
      });
    }
    // this.handleDetailShow = this.handleDetailShow.bind(this.state);
  }

  handleCreate = () => {
    const { dispatch } = this.props;
    dispatch(routerRedux.push('/contract/form'));
  }

  handlePageChange = (current, pageSize) => {
    const { dispatch } = this.props;
    dispatch({
      type: 'contract/fetch',
      payload: {
        current
      }
    })
  }

  handleEdit = (item) => {
    const { dispatch } = this.props;
    dispatch({
      type: 'contract/handleCurrent',
      payload: item,
    });
    dispatch(routerRedux.push(`/contract/form/${item.id}`));
  }

  handleDelete = (item) => {
    const { dispatch } = this.props;
    confirm({
      title: `您确定要删除${item.name}吗？`,
      cancelText: '取消',
      okText: '确认',
      onOk() {
        dispatch({
          type: 'contract/delete',
          payload: item.id
        }).then(req => {
          if(req && req.err_code) {
            message.error(req.message);
          } else {
            message.success(req.message);
          }
        });
      },
    })
  }

  handleDetail = (item) => {
    this.setState({
      visible: true,
      item,
    })
  }

  handleDetailCancel = () => {
    this.setState({
      visible: false,
      item: null,
    })
  }

  handleDetailShow = () => {
    if(!_.isEmpty(this.state.item)){
      return (
        <Descriptions column={2} border>
          <Descriptions.Item label="编号">{this.state.item.org_id}</Descriptions.Item>
          <Descriptions.Item label="名称">{this.state.item.name}</Descriptions.Item>
          <Descriptions.Item label="父编号">{this.state.item.parent_id}</Descriptions.Item>
          <Descriptions.Item label="英文名称">{this.state.item.spell}</Descriptions.Item>
          <Descriptions.Item label="类型">
          {_.isUndefined(getParseOption(this.state.item.type, TYPE)) ? '-' : getParseOption(this.state.item.type, TYPE).name}
          </Descriptions.Item>
          <Descriptions.Item label="级别">
          {_.isUndefined(getParseOption(this.state.item.level, LEVEL)) ? '-' : getParseOption(this.state.item.level, LEVEL).name}
          </Descriptions.Item>
          <Descriptions.Item label="序号">{this.state.item.listorder}</Descriptions.Item>
        </Descriptions>
      );
    } else {
      return null;
    }
    
  }

  render() {
    const {
      data: {list, page:{pageno,pagesize,num}},
      loading,
    } = this.props;
    const current = pageno;
    const pageSize = pagesize;
    const total = num;
    function showTotal(){
      return showPaginationText(total, current, pageSize);
    } 
    const columns = [
      {
        title: '编号',
        dataIndex: 'org_id',
      },
      {
        title: '名称',
        dataIndex: 'name',
      },
      {
        title: '类型',
        dataIndex: 'type',
        render(key) {
          return _.isUndefined(getParseOption(key, TYPE)) ? '-' : getParseOption(key, TYPE).name;
        },
      },
      {
        title: '级别',
        dataIndex: 'level',
        render(key) {
          return _.isUndefined(getParseOption(key, LEVEL)) ? '-' : getParseOption(key, LEVEL).name;
        },
      },
      {
        title: '序号',
        dataIndex: 'listorder',
      },
      {
        title: '操作',
        dataIndex: 'operation',
        render: (text, item) => {
          return (
            <div>
              <a title="查看详情" onClick={() => this.handleDetail(item)}><Icon type="eye" style={{fontSize:"16px",color:"#717171"}} /></a>
              &nbsp;&nbsp;
              <a title="编辑" onClick={() => this.handleEdit(item)}><Icon type="edit" style={{fontSize:"16px",color:"#717171"}} /></a>
              &nbsp;&nbsp;
              <a title="删除" onClick={() => this.handleDelete(item)}><Icon type="delete" style={{fontSize:"16px",color:"#717171"}} /></a>
            </div>
          );
        }
      },
    ];

    return (
      <Fragment>
        <Card>
          <Row>
            <Col span={24}>
              <Button
              type="primary"
              icon="plus"
              onClick={this.handleCreate}
              >
              新增
              </Button>
            </Col>
          </Row>
        </Card>
        <Table
          rowKey="id"
          loading={loading}
          columns={columns}
          dataSource={list}
          pagination={{
            current,
            pageSize,
            total,
            onChange: this.handlePageChange,
            showTotal,
          }}
        />
        <Modal
        title="查看详情"
        visible={this.state.visible}
        onCancel={this.handleDetailCancel}
        footer={null}
        width={650}
        >
        {this.handleDetailShow()}
        </Modal>
      </Fragment>
    );
  }
}

export default List
