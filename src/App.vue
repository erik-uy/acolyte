<template>
  <v-app id="keep">
    <v-app-bar
      app
      clipped-left
      color="amber"
    >
      <v-app-bar-nav-icon @click="drawer = !drawer"></v-app-bar-nav-icon>
      <span class="title ml-3 mr-5">Acolyte&nbsp;<span class="font-weight-light">Keep</span></span>
      <v-text-field
        solo-inverted
        flat
        hide-details
        label="Search"
        prepend-inner-icon="search"
      ></v-text-field>
      <div class="flex-grow-1"></div>
    </v-app-bar>

    <v-navigation-drawer
      v-model="drawer"
      app
      clipped
      color="grey lighten-4"
    >
    <v-row align="center">
      <v-col>
        <v-btn class="mx-2" fab dark large color="cyan">
          <v-icon dark>my_location</v-icon>
        </v-btn>
      </v-col>
      <v-col>
       <v-icon x-large >arrow_right_alt</v-icon>
      </v-col>
      <v-col>
        <v-btn class="mx-2" fab dark large color="indigo">
          <v-icon dark>pin_drop</v-icon>
        </v-btn>
      </v-col>
    </v-row>

      <v-list
        dense
        class="grey lighten-4"
      >

        <template v-for="(item, i) in items">
          <v-row
            v-if="item.heading"
            :key="i"
            align="center"
          >
            <v-col cols="6">
              <v-subheader v-if="item.heading">
                {{ item.heading }}
              </v-subheader>
            </v-col>
            <v-col
              cols="6"
              class="text-right"
            >
              <v-btn
                small
                text
              >edit</v-btn>
            </v-col>
          </v-row>
          <v-divider
            v-else-if="item.divider"
            :key="i"
            dark
            class="my-4"
          ></v-divider>
          <v-list-item
            v-else
            :key="i"
            v-bind:to="item.to"
          >
            <v-list-item-action>
              <v-icon>{{ item.icon }}</v-icon>
            </v-list-item-action>
            <v-list-item-content>
              <v-list-item-title class="grey--text">
                {{ item.text }}
              </v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </template>
      </v-list>
    </v-navigation-drawer>

    <v-content>
      <router-view></router-view>
    </v-content>
  </v-app>
</template>

<script>
  export default {
    props: {
      source: String,
    },
    data: () => ({
      drawer: null,
      items: [
        { icon: 'directions_bus', text: 'Bus' , to:'bus'},
        { icon: 'directions_transit', text: 'Train', to:'train' },
        { divider: true },
        { heading: 'Your Trips' },
        { icon: 'add', text: 'Create a new route' },
        { divider: true },
        { icon: 'settings', text: 'Settings' },
      ],
    }),
  }
</script>

<style>
#keep .v-navigation-drawer__border {
  display: none
}
</style>