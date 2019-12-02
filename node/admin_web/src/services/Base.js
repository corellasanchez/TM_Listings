import api from "./Api";

export default class BaseApiService {

  constructor(tableName) {
    this.path = '/' + tableName;
  }
  
  find(params) {
    let { args, orderBy, sortOrder } = params;
    let query = "";
    (args || orderBy || sortOrder) ? query += "?" : null;
    (args) ? (query === "?") ? query += `args=${args}` : query += `&args=${args}` : null;
    (orderBy) ? (query === "?") ? query += `orderBy=${orderBy}` : query += `&orderBy=${orderBy}` : null;
    (sortOrder) ? (query === "?") ? query += `sortOrder=${sortOrder}` : query += `&sortOrder=${sortOrder}` : null;
    return api.get(`${this.path}/${query}`).then(res => res).catch(err => err.response);
  }

  add(params) {
    return api.post(`${this.path}`, JSON.stringify(params)).then(res => res).catch(err => err.response);
  }

  update(id, params) {
    return api.patch(`${this.path}?id=${id}`, JSON.stringify(params)).then(res => res).catch(err => err.response);
  }

  delete(params) {
     return api.delete(`${this.path}/?${params}`).then(res => res).catch(err => err.response);
  }

  list(params, full_list = false) {
    let listType = full_list ? 'full-list' : 'list';
    let { args, andArgs, rangeArgs, pageSize, currentPage, orderBy, sortOrder } = params;
    let query = "";
    (args || pageSize || currentPage || orderBy || sortOrder) ? query += "?" : null;
    (args) ? (query === "?") ? query += `args=${args}` : query += `&args=${args}` : null;
    (andArgs) ? (query === "?") ? query += `andArgs=${andArgs}` : query += `&andArgs=${andArgs}` : null;
    (rangeArgs) ? (query === "?") ? query += `rangeArgs=${rangeArgs}` : query += `&rangeArgs=${rangeArgs}` : null;
    (pageSize) ? (query === "?") ? query += `pageSize=${pageSize}` : query += `&pageSize=${pageSize}` : null;
    (currentPage) ? (query === "?") ? query += `currentPage=${currentPage}` : query += `&currentPage=${currentPage}` : null;
    (orderBy) ? (query === "?") ? query += `orderBy=${orderBy}` : query += `&orderBy=${orderBy}` : null;
    (sortOrder) ? (query === "?") ? query += `sortOrder=${sortOrder}` : query += `&sortOrder=${sortOrder}` : null;
    return api.get(`${this.path}/${listType}${query}`).then(res => res).catch(err => err.response);
  }
}