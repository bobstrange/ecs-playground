import axios from 'axios'
import { BASE_URL } from '@/consts'

export const client = axios.create({ baseURL: BASE_URL })
