<template>
  <md-card md-waterfall md-mode="fixed">
    <md-card-header :data-background-color="dataBackgroundColor">
      <h4 class="title">{{title}}</h4>
    </md-card-header>
    <md-card-content>
      <vue-dropzone
        ref="vueDropzone"
        id="dropzone"
        :options="dropzoneOptions"
        @vdropzone-success="fileUploaded"
        @vdropzone-removed-file="fileRemoved"
      ></vue-dropzone>
    </md-card-content>
  </md-card>
</template>
<script>
import vue2Dropzone from "vue2-dropzone";
import "vue2-dropzone/dist/vue2Dropzone.min.css";
import FileService from "../../services/File";
const { API_PROTOCOL, API_URL, API_PORT } = require("../../config");

export default {
  name: "image-loader",
  props: {
    dataBackgroundColor: {
      type: String,
      default: ""
    },
    title: {
      type: String,
      default: ""
    },
    images: {
      type: Array,
      default: []
    }
  },
  async mounted() {
    this.updateAutorization();
  },
  data() {
    return {
      dropzoneOptions: {
        url: `${API_PROTOCOL}://${API_URL}:${API_PORT}/file`,
        thumbnailWidth: 185,
        maxFilesize: 15,
        resizeQuality: 0.9,
        resizeWidth: 1080,
        dictDefaultMessage: "Haga click o arrastre las imágenes aquí",
        dictRemoveFile: "Eliminar imágen",
        addRemoveLinks: true,
        acceptedFiles: "image/*",
        duplicateCheck: true,
        accept: this.avoidDuplicateFile,
        headers: {
          Authorization: ""
        }
      },
      token: "",
      fileService: FileService
    };
  },
  methods: {
    fileUploaded(file, response) {
      // console.log(file, response);
      console.log(response.filename, file.name);

      this.images.push({
        serverName: response.filename,
        localName: file.name
      });
    },
    avoidDuplicateFile(file, done) {
      if (
        this.$refs["vueDropzone"]
          .getAcceptedFiles()
          .find(x => x.name === file.name)
      ) {
        this.$refs["vueDropzone"].removeFile(file);
        console.log("La imagen ya estaba en la lista");
      } else {
        done();
      }
    },
    async fileRemoved(file) {
      const serverName = this.images.find(x => x.localName === file.name)
        .serverName;

      let result = await this.fileService.deleteFile(serverName);
      this.images.splice(
        this.images.findIndex(x => x.localName === file.name),
        1
      );
    },
    async updateAutorization() {
      this.token = await localStorage.getItem("token");
      this.$refs["vueDropzone"].options.headers.Authorization = this.token;
    }
  },
  components: {
    vueDropzone: vue2Dropzone
  }
};
</script>
<style lang="scss">
.dropzone .dz-preview .dz-remove:hover {
  color: #fff !important;
}
</style>