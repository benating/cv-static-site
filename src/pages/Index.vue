<template>
  <Layout>

    <g-image alt="Photo of myself" src="~/profile.png" width="135" />

    <h1>Bernard Ting</h1>

    <p>
      A backend engineer with experience in cloud infrastructure, CI/CD pipelines and container tools in the financial industry, with a focus on DevOps practices.
    </p>

    <p class="home-links">
      <a href="https://github.com/benating/cv-static-site" target="_blank" rel="noopener">Site GitHub</a>
      <a href="https://github.com/benating/cloud-resume-challenge" target="_blank" rel="noopener">Infrastructure GitHub</a>
    </p>

  </Layout>
</template>

<script>
import Section from '~/components/Section.vue'

export default {
  metaInfo: {
    title: 'Bernard\'s Profile'
  },
  components: {
    Section
  }
}
</script>

<style>
.home-links a {
  margin-right: 1rem;
}
</style>
