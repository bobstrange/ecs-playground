import { client } from '@/apis/client'

export type Post = {
  id: number;
  title: string;
  body: string;
  author_id: number;
  likesCount: number;
}

export async function fetchPosts(): Promise<Post[]> {
  return (await client.get('posts')).data.map((post: any) => {
    return { ...post, likesCount: post.likes_count || 0 }
  })
}
