<template>
  <div>
    <md-field>
      <label>{{placeholder}}</label>
      <span v-if="prefix !== ''" class="md-prefix">{{prefix}}</span>
      <md-input
        :md-counter="'false'"
        type="text"
        v-model="displayValue"
        @blur="isInputActive = false"
        @focus="isInputActive = true"
        @keypress="isNumber($event)"
        maxlength="6"
        style="width:100%"
      ></md-input>
      <span v-if="sufix !== ''" class="md-suffix">{{sufix}}</span>
    </md-field>
  </div>
</template>
<script>
export default {
  name: "custom-input",
  props: {
    value: {
      type: Number,
      default: 0
    },
    prefix: {
      type: String,
      default: ""
    },
    sufix: {
      type: String,
      default: ""
    },
    placeholder: {
      type: String,
      default: ""
    },
    hasDecimals: {
      type: Boolean,
      default: false
    }
  },

  data() {
    return {
      isInputActive: false
    };
  },
  computed: {
    displayValue: {
      get() {
        if (this.isInputActive) {
          return this.value.toString() === "0" ? "" : this.value.toString();
        } else {
          return this.value
            .toFixed(this.hasDecimals ? 2 : 0)
            .replace(/(\d)(?=(\d{3})+(?:\.\d+)?$)/g, "$1,");
        }
      },
      set(modifiedValue) {
        let newValue = parseFloat(modifiedValue.replace(/[^\d\.]/g, ""));
        if (isNaN(newValue)) {
          newValue = 0;
        }
        this.$emit("input", newValue);
      }
    }
  },
  methods: {
    test(){
      console.log("TEST");
    },
    isNumber: function(evt) {
      evt = evt ? evt : window.event;
      var charCode = evt.which ? evt.which : evt.keyCode;
      if (
        charCode > 31 &&
        (charCode < 48 || charCode > 57) &&
        charCode !== 46
      ) {
        evt.preventDefault();
      } else {
        return true;
      }
    }
  }
};
</script>