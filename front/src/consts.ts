if (!process.env.VUE_APP_API_URL) {
  throw new Error('VUE_APP_API_URL should be defined')
}

export const API_URL = process.env.VUE_APP_API_URL as string
