import request from '@/utils/request';

export async function queryContract(params) {
  return request(`/contract/fetch.php?pageno=${params.current}`);
}

export async function createContract(data) {
  return request(`/contract/create.php`, {
    method: 'POST',
    data,
  })
}

export async function deleteContract(id) {
  return request(`/contract/delete.php?id=${id}`);
}

export async function editContract(params) {
  return request(`/contract/edit.php?id=${params.id}`, {
    method: 'PUT',
    data: params.data,
  })
}

