<template>
  <v-stepper value="1">
    <v-stepper-header>
      <v-stepper-step step="1" complete>From</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step step="2">Destination</v-stepper-step>

      <v-divider></v-divider>

      <v-stepper-step step="3">Estimated time of departure</v-stepper-step>
    </v-stepper-header>

    <v-stepper-content step="1">
      <bus-stop-selector/>
    </v-stepper-content>


  </v-stepper>
</template>


<script>
  import BusStopSelector from '@/components/BusStopSelector.vue'

  export default {
    components:{
      BusStopSelector
    },
    data () {
      return {
        stepIndex: 0,
        steps: [
            {label:'From', icon:''},
            {label:'Destination', icon:''},
            {label:'Estimated time of departure', icon:''}
        ],
        items: [
            { text: 'By Route' , to:'bus'},
            { text: 'By Stops', to:'train' },
        ],
      }
    }

  }
</script>