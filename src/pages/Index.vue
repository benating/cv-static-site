<template>
  <Layout>
    <g-image
      alt="Photo of myself"
      src="~/profile.png"
      width="135"
    />

    <h1>Bernard Ting</h1>

    <p>
      Experienced SRE with a passion for DevOps and cybersecurity with a
      demonstrated history of working with the cloud, CI/CD pipelines and
      infrastructure tools in the financial and security industry.
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
          title: "Duo Security, London",
          subtitle: "Senior SRE",
          date: "Apr 2022 - Present",
          body: `Leading projects to drive business value.
          Mentor and upskill other engineers
          Lead cross-team communications and ensuring alignment on vision
          Driving incident response improvements through postmortems
          Actively involved with recruiting`,
        },
        {
          title: "Duo Security, London",
          subtitle: "Site Reliability Engineer",
          date: "Mar 2021 - Apr 2022",
          body: `Working at the interface of SRE and application teams.
          Rearchitectured application from EC2/Ansible model to use EKS/ArgoCD
          Participating in on call for mission critical services
          Working alongside other SRE teams to enhance infrastructure, delivery and observability platforms`,
        },
        {
          title: "Capital One, London",
          subtitle: "Cyber Security Engineer",
          date: "Oct 2020 - Mar 2021",
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
