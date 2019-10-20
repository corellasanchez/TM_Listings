import api from "./Api";
const path = '/propiedad';

function list(params) {
    let { args, pageSize, currentPage, orderBy, sortOrder } = params;
    let query = "";
    (args || pageSize || currentPage || orderBy || sortOrder) ? query += "?" : null;
    // (args) ? (query === "?")? query += "" : query += "&" : null;
    (pageSize) ? (query === "?") ? query += `pageSize=${pageSize}` : query += `&pageSize=${pageSize}` : null;
    (currentPage) ? (query === "?") ? query += `currentPage=${currentPage}` : query += `&currentPage=${currentPage}` : null;
    (orderBy) ? (query === "?") ? query += `orderBy=${orderBy}` : query += `&orderBy=${orderBy}` : null;
    (sortOrder) ? (query === "?") ? query += `sortOrder=${sortOrder}` : query += `&sortOrder=${sortOrder}` : null;
    return api.get(`${path}/list${query}`).then(res => res).catch(err => err.response);
}

export default {
    list
}