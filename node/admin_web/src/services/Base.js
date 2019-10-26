import api from "./Api";

export default class BaseApiService {
  
  constructor(tableName) {
    this.path =  '/' + tableName;
  }

  list(params, full_list = false) {
    let listType = full_list ? 'full-list' : 'list';
    let { args, pageSize, currentPage, orderBy, sortOrder } = params;
    let query = "";
    (args || pageSize || currentPage || orderBy || sortOrder) ? query += "?" : null;
    (pageSize) ? (query === "?") ? query += `pageSize=${pageSize}` : query += `&pageSize=${pageSize}` : null;
    (currentPage) ? (query === "?") ? query += `currentPage=${currentPage}` : query += `&currentPage=${currentPage}` : null;
    (orderBy) ? (query === "?") ? query += `orderBy=${orderBy}` : query += `&orderBy=${orderBy}` : null;
    (sortOrder) ? (query === "?") ? query += `sortOrder=${sortOrder}` : query += `&sortOrder=${sortOrder}` : null;
    return api.get(`${this.path}/${listType}${query}`).then(res => res).catch(err => err.response);
  }
}