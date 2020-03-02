<template>
    <md-card class="saveProperty">
        <md-card-header :data-background-color="dataBackgroundColor">
            <h4 class="title">Guardar Cambios</h4>
        </md-card-header>
        <md-card-content>
            <md-switch v-model="vehiculo.mostrar" value="1" class="md-primary" @change="value => switchChanged(value,'mostrar')">Mostrar al público</md-switch>
    
            <md-switch v-model="vehiculo.destacado" value="1" class="md-primary" @change="value => switchChanged(value,'destacado')">Propiedad Destacada</md-switch>
    
            <md-button class="md-raised md-primary saveButton" @click="update" v-if="isUpdating">
                <md-icon>save</md-icon>Guardar Cambios
            </md-button>
            <md-button class="md-raised md-primary saveButton" @click="add" v-if="!isUpdating">
                <md-icon>save</md-icon>Agregar Vehículo
            </md-button>
        </md-card-content>
    </md-card>
</template>

<script>
export default {
    name: "vehicle-save",
    props: {
        dataBackgroundColor: {
            type: String,
            default: ""
        },
        vehiculo: {},
        isUpdating: {
            type: Boolean,
            default: false
        }
    },
    async mounted() {},
    data() {
        return {};
    },
    methods: {
        update: function() {
            this.$emit("update");
        },
        add: function() {
            this.$emit("add");
        },
        switchChanged(value, nombre) {
            if (!value) {
                switch (nombre) {
                    case "mostrar":
                        this.vehiculo.mostrar = "0";
                        break;
                    case "destacado":
                        this.vehiculo.destacado = "0";
                        break;
                }
            }
        }
    },
    components: {}
};
</script>

<style lang="scss">
.saveButton {
    width: 100%;
    min-height: 50px;
    font-size: 1rem !important;
}

.saveProperty {
    min-height: 236px;
}
</style>
