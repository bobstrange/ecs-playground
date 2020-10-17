<template>
  <div class="home">
    <h1>Home Page</h1>
    <h2>Posts</h2>
    <ul>
      <li v-for="post in posts" :key="post.id">
        {{ post.title }}
      </li>
    </ul>
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
