import axios from 'axios'
import { API_URL } from '@/consts'

console.log(API_URL)
export const client = axios.create({
  baseURL: API_URL,
  headers: {
    post: {
      'Content-Type': 'application/json;charset=utf-8',
      'Access-Control-Allow-Origin': '*'
    }
  }
})
