

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
        
        
        <header class="d-flex my-1 flex-wrap align-items-center justify-content-between  py-3 mb-0 border-bottom">
        <a href="/"
            class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none d-flex justify-content-center align-items-center brandimg">
            <img src="./images/pixel4inch.jpg" class=" mx-2" style="width: 45px; height: auto;" />
            <span>PIXEL<span>4</span>INCH</span>
        </a>

        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0 custom_nav " id="topnav">
            
        </ul>
    </header>
        
        `;

    }



    }

    customElements.define('header-component', HeaderComponent);

