<template>
  <div>
    <md-field>
      <label>{{placeholder}}</label>
      <span class="md-prefix">$</span>
      <md-input :md-counter="'false'"
        type="text"
        v-model="displayValue"
        @blur="isInputActive = false"
        @focus="isInputActive = true"
        @keypress="isNumber($event)"
        maxlength="11"
      ></md-input>
    </md-field>
  </div>
</template>
<script>
export default {
  name: "currency-input",
  props: {
    value: {
      type: Number,
      default: 0
    },
    placeholder:{
      type: String,
      default: ''
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
          // Cursor is inside the input field. unformat display value for user
          return this.value.toString() === "0" ? "" : this.value.toString();
        } else {
          // User is not modifying now. Format display value for user interface
          return this.value
            .toFixed(2)
            .replace(/(\d)(?=(\d{3})+(?:\.\d+)?$)/g, "$1,");
        }
      },
      set(modifiedValue) {
        // Recalculate value after ignoring "$" and "," in user input
        let newValue = parseFloat(modifiedValue.replace(/[^\d\.]/g, ""));
        // Ensure that it is not NaN
        if (isNaN(newValue)) {
          newValue = 0;
        }
        // Note: we cannot set this.value as it is a "prop". It needs to be passed to parent component
        // $emit the event so that parent component gets it
        this.$emit("input", newValue);
      }
    },
    
  },
  methods: {
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