if (!process.env.BASE_URL) {
  throw new Error('BASE_URL should be defined')
}

export const BASE_URL = process.env.BASE_URL as string
