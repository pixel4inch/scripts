$(document).ready(function () {
  $.getJSON("./data/menu.json", function (data) {

    var output = '';
    $.each(data.menu, function (key, value) {
      if (value.DISPLAY == "DISPLAY-BLOCK") {
        output += '<li class="nav-item d-flex align-items-center">' + '<i class="' + value.ICONLINK + ' mr-2"/></i> <a href="#' + value.id + '" class="nav-link js-scroll-trigger">' + value.Tab + '</a>' + '</li>';
      }
    });

    $('#sidenav').html(output);

  }).fail(function () {
    document.write("An error has occurred.");
  });

});



//  HEADER COMPONENT 
class HeaderComponent extends HTMLElement {
  connectedCallback() {
    this.innerHTML = `
      <nav class="navbar navbar-expand-md fixed-top main-nav" id="sideNav">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">
        <span class="d-block d-lg-none"
          ><img
            class="img-fluid img-profile rounded-circle mx-auto mb-2"
            src="assets/img/profile.jpg"
            style="width: 50px; height: 50px; margin-bottom: 0px"
            alt="..."
        /></span>
        <span class="d-none d-lg-block"
          ><img
            class="img-fluid img-profile rounded-circle mx-auto mb-2"
            src="assets/img/profile.jpg"
            alt="..."
        /></span>
      </a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarResponsive"
        aria-controls="navbarResponsive"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav" id="sidenav">
          
        </ul>
      </div>
    </nav>
        `;

  }
}

customElements.define('header-component', HeaderComponent);

