<template>
  <v-card
    class="mx-auto"
    max-width="700"
  >
    <v-card-title>{{ title }} - {{ subtitle }}</v-card-title>

    <v-card-subtitle>{{ date }}</v-card-subtitle>

    <v-card-actions>
      <v-btn
        icon
        @click="show = !show"
      >
        <v-icon>{{ show ? 'mdi-chevron-up' : 'mdi-chevron-down' }}</v-icon>
      </v-btn>
    </v-card-actions>

    <v-expand-transition>
      <div v-show="show">
        <v-divider />

        <v-card-text class="bodyText">
          {{ body }}
        </v-card-text>
      </div>
    </v-expand-transition>
  </v-card>
</template>

<script>
export default {
  name: "Element",
  props: {
    show: Boolean,
    title: {
      type: String,
      default: "",
    },
    subtitle: {
      type: String,
      default: "",
    },
    date: {
      type: String,
      default: "",
    },
    body: {
      type: String,
      default: "",
    },
  },
  beforeMount() {
    this.addBulletToBody();
  },
  methods: {
    addBulletToBody() {
      this.body = this.body.replace(/\n/g, "\n •");
    },
  },
};
</script>

<style>
.bodyText {
  white-space: pre-line;
}
</style>