export const mixins = {
  methods: {
    // transforms the javascript date format YYYY-MM-DDTHH:mm:ss.sssZ to Mysql format YYYY-MM-DD
    mysqlDateFormat(date) {
      return this.$moment(date).format("YYYY-MM-DD");
    },
    //transforms all the dates of an object in mysql format
    formatDates(object) {
      for (var attribute in object) {
        if (object[attribute] instanceof Date) {
          object[attribute] = this.mysqlDateFormat(object[attribute]);
        }
      }
      return object;
    },
    getDate() {
      this.$moment().format("YYYY-MM-DD");
    },
    validateEmail(email) {
      var re = /\S+@\S+\.\S+/;
      return re.test(email);
    },
    showError(message) {
      return this.$notify({
        message: message,
        icon: "add_alert",
        horizontalAlign: "right",
        verticalAlign: "bottom",
        type: "danger"
      });
    },
    showInfo(message) {
      return this.$notify({
        message: message,
        icon: "done",
        horizontalAlign: "right",
        verticalAlign: "bottom",
        type: "success"
      });
    }
  }
}