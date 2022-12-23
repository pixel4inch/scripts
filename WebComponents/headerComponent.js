

    //  HEADER DATA FROM JSON
    $(document).ready(function () {
        $.getJSON("./data/menu.json", function (data) {
            var output = '';
            $.each(data.menu, function (key, value) {
                output += '<li>' + '<a href="'+ value.link  +'#" class="nav-link px-2 link-secondary">' + value.Tab + '</a>' + '</li>';
            });
            $('#topnav').html(output);
        }).fail(function () {
            document.write("An error has occurred.");
        });
    });


    //  HEADER COMPONENT 
    class HeaderComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        
        
        <nav class="navbar navbar-expand-lg bg-light">
        <a class="navbar-brand text-dark text-decoration-none d-flex justify-content-center align-items-center brandimg" href="#">
            <img src="./images/pixel4inch.jpg" class=" mx-2" style="width: 45px; height: auto;" />
            <span>PIXEL<span>4</span>INCH</span>
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mx-auto mb-md-0 custom_nav " id="topnav">
            
        </ul>
        </div>
    </nav>
        
        `;

    }



    }

    customElements.define('header-component', HeaderComponent);

