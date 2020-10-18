import { client } from '@/apis/client'
/* eslint  @typescript-eslint/member-delimiter-style: 0 */

type PostResponse = {
  id: number
  title: string
  body: string
  author_id: number
  likes_count: number
}

export type Post = Omit<Omit<PostResponse, 'likes_count'>, 'author_id'> & {
  likesCount: number
  authorId: number
}

const postResponseMapper = (res: PostResponse) => {
  return { ...res, likesCount: res.likes_count || 0, authorId: res.author_id }
}

export async function fetchPosts(): Promise<Post[]> {
  return (await client.get<PostResponse[]>('posts')).data.map(
    postResponseMapper
  )
}

export async function incrementPostLike(id: Post['id']): Promise<Post> {
  return Array(
    (await client.post<PostResponse>(`posts/${id}/increment_like`)).data
  ).map(postResponseMapper)[0]
}
