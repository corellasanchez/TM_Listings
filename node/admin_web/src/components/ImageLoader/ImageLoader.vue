<template>
    <md-card md-waterfall md-mode="fixed" class="imageLoaderCard">
        <md-card-header :data-background-color="dataBackgroundColor">
            <h4 class="title">{{title}}</h4>
        </md-card-header>
        <md-card-content>
            <p v-if="images.length > 0">Haga click o arrastre las imágenes al recuadro de abajo para agregar más</p>
            <vue-dropzone ref="vueDropzone" id="dropzone" :options="dropzoneOptions" @vdropzone-success="fileUploaded" @vdropzone-removed-file="fileRemoved"></vue-dropzone>
            <small class="md-helper-text">** Los cambios en las imágenes se ven reflejados inmediatamente </small>
        </md-card-content>
    </md-card>
</template>

<script>
import vue2Dropzone from "vue2-dropzone";
import "vue2-dropzone/dist/vue2Dropzone.min.css";
import FileService from "../../services/File";
const {
    API_PROTOCOL,
    API_URL,
    API_PORT,
    IMAGE_FOLDER
} = require("../../config");

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
        },
        preUploadedImages: {
            type: Array,
            default: []
        },
        isUpdating: {
            type: Boolean,
            default: false
        }
    },
    watch: {
        preUploadedImages: {
            deep: true,
            handler(images) {
                let url = "";
                if (images) {
                    images.forEach(image => {
                        url = this.imageFolder + image.url;
                        var mockFile = {
                            name: image.url,
                            size: image.size,
                            type: ""
                        };
                        this.$refs["vueDropzone"].manuallyAddFile(mockFile, url);
                        this.images.push({
                            serverName: image.url,
                            localName: "",
                            fileSize: image.size
                        });
                    });
                }
            }
        }
    },
    async mounted() {
        this.updateAutorization();
    },
    data() {
        return {
            dropzoneOptions: {
                url: `${API_PROTOCOL}://${API_URL}:${API_PORT}/file`,
                thumbnailWidth: 186,
                thumbnailHeight: 128,
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
            fileService: FileService,
            imageFolder: `${API_PROTOCOL}://${API_URL}:${API_PORT}/${IMAGE_FOLDER}/`
        };
    },
    methods: {
        fileUploaded(file, response) {
            this.images.push({
                serverName: response.filename,
                localName: file.name,
                fileSize: response.size
            });

            // asign this image to a record in the db
            if (this.isUpdating) {
                this.$parent.linkImage(response.filename, response.size);
            }
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
            let serverName = "";

            //file was previusly save in the db
            if (this.isUpdating && file.manuallyAdded) {
                serverName = file.name;
            } else {
                serverName = this.images.find(x => x.localName === file.name)
                    .serverName;
            }
            this.images.splice(
                this.images.findIndex(x => x.serverName === serverName),
                1
            );
            let result = await this.fileService.deleteFile(serverName);
            this.$parent.removeImage(serverName);
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

.imageLoaderCard {
    min-height: 250px !important;
}

.dropzone .dz-preview {
    margin: 17px !important;
}

.dz-filename {
    display: none;
}
</style>