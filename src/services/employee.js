import request from '@/utils/request';

export async function query() {
  return request('/api/employees')
}

export async function queryOne(id) {
  return request(`/api/employees/${id}`)
}

export async function create(data) {
  return request('/api/employees', {
    method: 'POST',
    data,
  })
}

export async function update(id, data) {
  return request(`/api/employees/${id}`, {
    method: 'PUT',
    data,
  })
}

export async function deleteOne(id) {
  return request(`/api/employees/${id}`, {
    method: 'DELETE',
  })
}

export async function queryCompanies() {
  return request('/api/companies')
}

export async function queryDepartments() {
  return request('/api/departments')
}

export async function queryPositions() {
  return request('/api/positions')
}

export async function queryStatuses() {
  return request('/api/statuses')
}
