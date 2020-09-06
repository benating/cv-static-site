<template>
  <div id="app">
    <v-app id="inspire">
      <v-app id="inspire">
        <v-navigation-drawer v-model="drawer" app>
          <nav class="nav">
            <v-list dense>
              <g-link class="nav__link" to="/">
                <v-list-item link>
                  <v-list-item-action>
                    <v-icon>mdi-home</v-icon>
                  </v-list-item-action>
                  <v-list-item-content>
                    <v-list-item-title>Home</v-list-item-title>
                  </v-list-item-content>
                </v-list-item>
              </g-link>

              <g-link class="nav__link" to="/about/">
                <v-list-item link>
                  <v-list-item-action>
                    <v-icon>mdi-email</v-icon>
                  </v-list-item-action>
                  <v-list-item-content>
                    <v-list-item-title>About</v-list-item-title>
                  </v-list-item-content>
                </v-list-item>
              </g-link>
            </v-list>
          </nav>
        </v-navigation-drawer>

        <v-app-bar app color="indigo" dark>
          <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
          <v-toolbar-title>Bernard's CV</v-toolbar-title>
          <v-spacer />
          <span>Number of visitors: {{ numberOfVisitors }}</span>
        </v-app-bar>

        <v-main>
          <v-container class="fill-height" fluid>
            <v-row align="center" justify="center">
              <v-col class="text-left">
                <slot />
              </v-col>
            </v-row>
          </v-container>
        </v-main>
        <v-footer color="indigo" app>
          <span class="white--text">&copy; {{ new Date().getFullYear() }}</span>
          <v-spacer />
          <span>
            <a
              href="https://github.com/benating/cv-static-site"
              target="_blank"
              rel="noopener"
              class="white--text"
              style="margin-right: 10px"
            >Site GitHub</a>
            <a
              href="https://github.com/benating/cloud-resume-challenge"
              target="_blank"
              rel="noopener"
              class="white--text"
            >Infrastructure GitHub</a>
          </span>
        </v-footer>
      </v-app>
    </v-app>
  </div>
</template>

<static-query>
query {
  metadata {
    siteName
  }
}
</static-query>

<script>
import Vuetify from "vuetify";
export default {
  vuetify: new Vuetify(),
  props: ["drawer", "numberOfVisitors"],
  methods: {
    visitors() {
      fetch(
        "https://rgvzfbhl2i.execute-api.eu-west-2.amazonaws.com/crc/counter?counter_id=cv",
        {
          method: "GET",
        }
      )
        .then((res) => res.json())
        .then((data) => (this.numberOfVisitors = data))
        .catch((error) => (this.numberOfVisitors = error));
    },
  },
  beforeMount() {
    this.visitors();
  },
};
</script>

<style>
body {
  font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto,
    "Helvetica Neue", Arial, sans-serif;
  margin: 0;
  padding: 0;
  line-height: 1.5;
}

.layout {
  max-width: 760px;
  margin: 0 auto;
  padding-left: 20px;
  padding-right: 20px;
}

.header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 20px;
  height: 80px;
}

.nav__link {
  text-decoration: none;
  color: inherit;
}

.site__link {
  text-decoration: none;
  color: white;
}
</style>
