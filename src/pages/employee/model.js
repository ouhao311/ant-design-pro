import { message } from 'antd'
import {
  query, queryOne, create, update, deleteOne, queryCompanies, queryPositions, queryDepartments, queryStatuses,
} from '@/services/employee';

const Employee = {
  namespace: 'employee',
  state: {
    list: [],
    current: {},
    companies: [],
    departments: [],
    positions: [],
    statuses: [],
  },
  effects: {
    * fetch(_, { call, put }) {
      const response = yield call(query);

      yield put({
        type: 'saveList',
        payload: response,
      })
    },
    * fetchOne({ payload }, { call, put }) {
      const response = yield call(queryOne, payload);

      yield put({
        type: 'saveCurrent',
        payload: response,
      })
    },
    * add({ payload }, { call }) {
      yield call(create, payload)
      message.success('创建成功')
    },
    * edit({ payload }, { call }) {
      const { id, ...others } = payload;

      yield call(update, id, others)
      message.success('编辑成功')
    },
    * remove({ payload }, { call, put }) {
      yield call(deleteOne, payload)
      yield put({
        type: 'fetch',
      })
      message.success('删除成功')
    },
    * fetchCompanies(_, { call, put }) {
      const response = yield call(queryCompanies)

      yield put({
        type: 'saveCompanies',
        payload: response,
      })
    },
    * fetchDepartments(_, { call, put }) {
      const response = yield call(queryDepartments)

      yield put({
        type: 'saveDepartments',
        payload: response,
      })
    },
    * fetchPositions(_, { call, put }) {
      const response = yield call(queryPositions)

      yield put({
        type: 'savePositions',
        payload: response,
      })
    },
    * fetchStatuses(_, { call, put }) {
      const response = yield call(queryStatuses)

      yield put({
        type: 'saveStatuses',
        payload: response,
      })
    },
  },
  reducers: {
    saveList(state, { payload }) {
      state.list = payload
    },
    saveCurrent(state, { payload }) {
      state.current = payload
    },
    saveCompanies(state, { payload }) {
      state.companies = payload
    },
    saveDepartments(state, { payload }) {
      state.departments = payload
    },
    savePositions(state, { payload }) {
      state.positions = payload
    },
    saveStatuses(state, { payload }) {
      state.statuses = payload
    },
    resetCurrent(state) {
      state.current = {}
    }
  },
}

export default Employee
