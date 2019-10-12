import api from "./Api";
const path = '/auth';

function login(data) {
    return api.post(`${path}`, data).then(res => res).catch(err => err.response);
}

function loguedCheck() {
    return api.get(`${path}`).then(res => res).catch(err => err.response);
}

export default {
    login,
    loguedCheck
}