export const mixins = {
  methods: {
    // transforms the javascript date format YYYY-MM-DDTHH:mm:ss.sssZ to Mysql format YYYY-MM-DD
    mysqlDateFormat(date) {
      return this.$moment(date).format("YYYY-MM-DD");
    },

    // transforms the mysql date format YYYY-MM-DD to Locale format dd-MM-yyyy
    tolocalDateFormat(date) {
      if (date) {
        return this.$moment(date, "YYYY-MM-DD").format("DD-MM-YYYY");
      }
    },
    // transforms the date format dd-MM-yyyy to Locale format YYYY-MM-DD
    fromLocaltoMysql(date) {
      if (date) {
        return this.$moment(date, "DD-MM-YYYY").format("YYYY-MM-DD");
      }
    },
    booleanToString(boolean) {
      if (boolean) {
        return '1'
      } else {
        return '0'
      }
    },

    //transforms all the dates of an object in mysql format
    formatDates(object) {
      for (var attribute in object) {
        if (object[attribute] instanceof Date) {
          object[attribute] = this.mysqlDateFormat(object[attribute]);
        }
        if (typeof object[attribute] === 'string' && object[attribute].toString().match(/\d{2}-\d{2}-\d{4}/)) {
          object[attribute] = this.fromLocaltoMysql(object[attribute]);
        }
      }
      return object;
    },

    //transforms all the dates of an object in mysql format
    formatToLocalDates(object) {
      for (var attribute in object) {
        var parsedDate = Date.parse(object[attribute]);
        if (isNaN(object[attribute]) && !isNaN(parsedDate)) {
          object[attribute] = this.tolocalDateFormat(object[attribute]);
        }
      }
      return object;
    },
    getDate() {
      return this.$moment().format("YYYY-MM-DD");
    },
    async getYearsFromNow(numberOfYears) {
      if (numberOfYears > 0) {
        var currentYear = this.$moment().year();
        var years = [];
        for (var i = currentYear + 1; i >= currentYear - numberOfYears; i--) {
          years.push(i);
        }
        return years;
      }
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