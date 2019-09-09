import { queryContract, createContract, deleteContract, editContract  } from '@/services/contract';
import _ from 'lodash';

const ContractModel = {
  namespace: 'contract',

  state: {
    data: {
      list: [],
      page: {},
    },
    current: {},
    isfetch: true,
  },

  effects: {
    *fetch({payload}, {call, put}) {
      const response = yield call(queryContract, payload);
      yield put({
        type: 'handleFetch',
        payload: response,
      })
    },
    
    *add({ payload }, { call, put }) {
      const response = yield call(createContract, payload);
      yield put({
        type: 'handleAdd',
      })
      return response;
    },

    *delete({ payload }, { call, put }) {
      const response = yield call(deleteContract, payload);
      yield put({
        type: 'handleDelete',
        payload: response,
      });
      return response;
    },

    *edit({ payload }, { call, put }) {
      const response = yield call(editContract, payload);
      yield put({
        type: 'handleEdit',
        payload: response.item,
      });
      return response;
    }
  },

  reducers: {
    handleFetch(state, {payload}) {
      return {
        ...state,
        data: payload,
        isfetch: true,
      }
    },

    handleAdd(state) {
      state.current = {};
      state.isfetch = true;
    },

    handleDelete(state, {payload}) {
      if(_.isUndefined(payload.err_code)) {
        const index = state.data.list.findIndex(item => item.id === payload.id);
        state.data.list.splice(index, 1);
        state.data.page.num = state.data.page.num - 1;
      }
    },

    handleEdit(state, {payload}) {
      const index = state.data.list.findIndex(item => item.id === payload.id);
      state.data.list.splice(index, 1, payload);
      state.current = {};
    },

    handleCurrent(state, {payload}) {
      state.current = payload;
      state.isfetch = false;
    },

  },
}

export default ContractModel