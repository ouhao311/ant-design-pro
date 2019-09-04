import { queryContract, createContract, deleteContract  } from '@/services/contract';
import _ from 'lodash';

const ContractModel = {
  namespace: 'contract',

  state: {
    data: {
      list: [],
      page: {},
    }
  },

  effects: {
    *fetch({payload}, {call, put}) {
      const response = yield call(queryContract, payload);
      yield put({
        type: 'save',
        payload: response,
      })
    },
    
    *add({ payload }, { call }) {
      const response = yield call(createContract, payload);
      return response;
    },

    *delete({ payload }, { call, put }) {
      const response = yield call(deleteContract, payload);
      yield put({
        type: 'deleteReq',
        payload: response,
      });
      return response;
    },
  },

  reducers: {
    save(state, {payload}) {
      return {
        ...state,
        data: payload,
      }
    },

    deleteReq(state, {payload}) {
      if(_.isUndefined(payload.err_code)) {
        const index = state.data.list.findIndex(item => item.id === payload.id);
        state.data.list.splice(index, 1);
        state.data.page.num = state.data.page.num - 1;
      }
    }
  },
}

export default ContractModel