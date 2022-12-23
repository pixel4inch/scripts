

    //  Footer Component
    class FooterComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
        
        
        <footer class="text-center bg-dark text-white p-2 my-3">
                <small>
                    ©
                    <script language="JavaScript">document.write(new Date().getFullYear());</script> Pixel4Inch, India.
                    All
                    Rights Reserved.
                </small>
            </footer>
        
        `;

    }



    }

    customElements.define('footer-component', FooterComponent);

