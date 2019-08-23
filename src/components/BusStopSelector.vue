<template>
    <v-card>
        <v-card-text>
          <v-row>
              <v-expansion-panels inset mandatory>

                <v-expansion-panel :key="1" >
                  <v-expansion-panel-header>By Route</v-expansion-panel-header>
                  <v-expansion-panel-content>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                  </v-expansion-panel-content>
                </v-expansion-panel>

                <v-expansion-panel :key="2">
                  <v-expansion-panel-header>By Stop</v-expansion-panel-header>
                  <v-expansion-panel-content>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                  </v-expansion-panel-content>
                </v-expansion-panel>

              </v-expansion-panels>
            </v-row>
          </v-card-text>
      </v-card>
</template>

<script>
export default {
    data(){
        return {
        };
    }
}
</script>