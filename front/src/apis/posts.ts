import { client } from '@/apis/client'

export type Post = {
  id: number
  title: string
  body: string
  author_id: number
  likes_count: number | null
}

export async function fetchPosts() {
  return (await client.get<Post[]>('posts')).data.map((post) => {
    return { ...post, likes_count: post.likes_count || 0 }
  })
}
