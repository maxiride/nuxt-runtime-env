<template>
  <section class="section">

      <p>
        Current host is: {{ where_am_i }} and I expect axios to perform a GET request to
        {{ where_am_i }}/api/endpoint.

      </p>

      <p>
        The docker-compose API_BASE_URL is http://example.test but it is ignored.
        Also prefix tag in nuxt.config.js is not applied. I expect to have /api at the end of the host.
      </p>


    <div class="buttons">
      <b-button icon-left="reload" @click.prevent="submit">Make a request and inspect the console</b-button>
    </div>


  </section>
</template>

<script>
  import Card from '~/components/Card'

  export default {
    name: 'HomePage',
    components: {
      Card
    },
    data() {
      return {
        where_am_i: window.location.host,
      }
    },

    methods: {
      submit() {
        this.$axios.get('endpoint')
      }
    }
  }
</script>
