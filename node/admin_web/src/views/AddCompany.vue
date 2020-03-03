<template>
  <div class="content">
    <div class="md-layout">
      <div class="md-layout-item md-medium-size-100 md-size-66">
        <form>
          <md-card>
            <md-card-header :data-background-color="theme_color">
              <h4 class="title">Detalles de la Compañia</h4>
            </md-card-header>
            <md-card-content>
              <div class="md-layout md-gutter">
                <div class="md-layout-item md-small-size-100 md-size-33">
                  <md-field>
                    <label>Cedula Jurídica</label>
                    <md-input required type="text"></md-input>
                  </md-field>
                </div>
                <div class="md-layout-item md-small-size-100 md-size-33">
                  <md-field>
                    <label>Nombre</label>
                    <md-input required type="text"></md-input>
                  </md-field>
                </div>
                <div class="md-layout-item md-small-size-100 md-size-33">
                  <md-field>
                    <label>Banco</label>
                    <md-select required>
                      <md-option>TEST 1</md-option>
                      <md-option>TEST 2</md-option>
                    </md-select>
                  </md-field>
                </div>
              </div>
            </md-card-content>
          </md-card>
        </form>
      </div>
      <div class="md-layout-item md-medium-size-100 md-size-33">
        <form>
          <md-card>
            <md-card-header :data-background-color="theme_color">
              <h4 class="title">Guardar Cambios</h4>
            </md-card-header>
            <md-card-content>
              <md-button class="md-raised md-primary" style="width:100%">
                <md-icon>save</md-icon>Guardar Usuario
              </md-button>
            </md-card-content>
          </md-card>
        </form>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      theme_color: "orange"
    };
  }
};
</script>