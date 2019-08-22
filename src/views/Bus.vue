<template>
<v-container>
    <v-row justify="center">
        <v-col>
    <v-expansion-panels inset>
      <v-expansion-panel
        v-for="(item,i) in items"
        :key="i"
      >
        <v-expansion-panel-header>{{item.text}}</v-expansion-panel-header>
        <v-expansion-panel-content>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </v-expansion-panel-content>
      </v-expansion-panel>
    </v-expansion-panels>
    </v-col>
  </v-row>
</v-container>
</template>


<script>
  export default {
    data: () => ({
      items: [
        { text: 'By Route' , to:'bus'},
        { text: 'By Stops', to:'train' },
      ],
    }),
  }
</script>