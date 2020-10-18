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
      </tr>
    </table>
  </div>
</template>

<script lang="ts">
import { defineComponent, onBeforeMount, ref } from 'vue'
import { Post, fetchPosts } from '../apis/posts'

export default defineComponent({
  name: 'Home',
  setup() {
    const posts = ref<Post[]>([])

    onBeforeMount(async () => {
      posts.value = await fetchPosts()
    })

    return { posts }
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
