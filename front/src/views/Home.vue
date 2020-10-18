<template>
  <div class="home">
    <h1>Home Page</h1>
    <h2>Posts</h2>
    <table class="posts-table">
      <tr>
        <th>Title</th>
        <th>Description</th>
        <th>Likes</th>
      </tr>
      <tr v-for="post in posts" :key="post.id">
        <td class="title">{{ post.title }}</td>
        <td class="body">{{ post.body }}</td>
        <td class="likes-count">{{ post.likesCount }}</td>
        <td class="clap"><button @click="clap(post)">Like</button></td>
      </tr>
    </table>
  </div>
</template>

<script lang="ts">
import { defineComponent, onBeforeMount, ref } from 'vue'
import { Post, fetchPosts, incrementPostLike } from '../apis/posts'

export default defineComponent({
  name: 'Home',
  setup() {
    const posts = ref<Post[]>([])

    const clap = async (post: Post) => {
      await incrementPostLike(post.id)
      post.likesCount += 1
    }

    onBeforeMount(async () => {
      posts.value = await fetchPosts()
    })

    return { posts, clap }
  }
})
</script>

<style lang="scss" scoped>
li {
  list-style-type: none;
}

.posts-table {
  max-width: 1000px;
  margin: auto;
  border-collapse: collapse;
}

.posts-table th {
  border-bottom: 1px solid black;
  padding: 5px;
}

.posts-table tr {
  min-height: 40px;
}

.posts-table td {
  border-bottom: 1px solid black;
  padding: 5px 10px;
}
.title {
  text-align: center;
}

.body {
  text-align: left;
}

.likes-count {
  text-align: right;
}
</style>
