<template>
  <Layout>
    <g-image
      alt="Photo of myself"
      src="~/profile.png"
      width="135"
    />

    <h1>Bernard Ting</h1>

    <p>
      A software engineer with experience in cloud infrastructure, CI/CD
      pipelines and container tools in the financial industry, with a focus on
      DevOps practices and cybersecurity.
    </p>

    <Element
      v-for="element in elements"
      :key="element.id"
      :title="element.title"
      :subtitle="element.subtitle"
      :date="element.date"
      :body="element.body"
    />
  </Layout>
</template>

<script>
import Element from "~/components/Element.vue";

export default {
  metaInfo: {
    title: "Bernard's CV",
  },
  components: {
    Element,
  },
  data() {
    return {
      elements: [
        {
          title: "Capital One, London",
          subtitle: "Cyber Security Engineer",
          date: "Oct 2020 - Present",
          body: `Working in the Cyber Engineering and Operations team.
          Building automated tools which simplify workflows and improve security processes
          Taking part in security operations and managing enterprise network security infrastructure`,
        },
        {
          title: "Capital One, London",
          subtitle: "Backend Engineer",
          date: "Sep 2019 - Oct 2020",
          body: `Main technologies used: Python, Java, Docker, Terraform, Jenkins (Groovy), AWS.
          Architected and tested enhanced cloud infrastructure deployments
          Developed CI/CD pipelines and infrastructure tools
          Provided extensive support cross-team and throughout enterprise
          Actively participated in incident management`,
        },
        {
          title: "Capital One, London",
          subtitle: "DevTools Engineer Intern",
          date: "Jun 2018 - Aug 2018",
          body: `Main technologies used: Docker, Chef, Jenkins, AWS, Ruby.
          Pioneered container technology
          Developed reusable configuration management component
          Implemented AWS actions programmatically
          Teamwork and cross-team support`,
        },
      ],
    };
  },
};
</script>

<style>
.home-links a {
  margin-right: 1rem;
}
</style>
