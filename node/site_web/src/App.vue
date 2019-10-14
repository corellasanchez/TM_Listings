<template>
  <div id="app">
  <nav class="navbar navbar-expand-lg navbar-dark  bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="index.html"><img src="./assets/images/logo.png" class="main-logo"></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item active"><a href="index.html" class="nav-link">Inicio</a></li>
	          <li class="nav-item"><a href="about.html" class="nav-link">Quiénes Somos</a></li>
	          <li class="nav-item"><a href="agent.html" class="nav-link">Agentes</a></li>
	          <li class="nav-item"><a href="services.html" class="nav-link">Servicios</a></li>
	          <li class="nav-item"><a href="properties.html" class="nav-link">Propiedades</a></li>
	          <li class="nav-item"><a href="contact.html" class="nav-link">Contacto</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <router-view/>
  </div>
</template>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#nav {
  padding: 30px;
  a {
    font-weight: bold;
    color: #2c3e50;
    &.router-link-exact-active {
      color: #42b983;
    }
  }
}
</style>
