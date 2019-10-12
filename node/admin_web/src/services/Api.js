import axios from 'axios';
const { API_PROTOCOL, API_URL, API_PORT } = require('../config');
const api = axios.create({
    baseURL: `${API_PROTOCOL}://${API_URL}:${API_PORT}`,
    headers: {
        'Content-Type': 'application/json'
    }
});
api.interceptors.request.use((config) => {
    const AUTH_TOKEN = localStorage.getItem('token');
    if (AUTH_TOKEN) {
        config.headers.common['Authorization'] = AUTH_TOKEN;
    }
    return config;
});

export default api;