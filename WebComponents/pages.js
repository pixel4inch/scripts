

$(document).ready(function () {
    $.getJSON("./data/tabsdata.json", function (data) {
        var xdpage = '';
        var arpage = '';
        var fontpage = '';
        var iconpage = '';
        $.each(data.tabinfo, function (key, value) {
            if (value.catogry == "XD") {
                xdpage += `
               <div class="col-lg-3 col-md-2 col-sm-12 mb-3 ">
                    <div class="col-11 mx-auto shadow-sm bs-card">
                        <div class="w-100 bs-card-header text-center">
                             <img src="href="`+ value.img + `class="bs-card-img"/> 
                        </div>
                        <div class="w-100 bs-card-body ">
                             <h6 class="mb-0">  `+ value.name + ` <h6/>
                        </div>

                    </div>
               </div>
             `      ;
            } else if (value.catogry == "ar") {
                arpage += `
                <div class="col-lg-3 col-md-2 col-sm-12 mb-3 ">
                <div class="col-11 mx-auto shadow-sm bs-card">
                    <div class="w-100 bs-card-header text-center">
                    <h6 class="mb-0">  `+ value.name + ` <h6/>
                    </div>
                </div>
           </div>
          `;
            } else if (value.catogry == "Fonts") {

                fontpage += `
                <div class="col-lg-3 col-md-2 col-sm-12 mb-3 ">
                <div class="col-11 mx-auto shadow-sm bs-card">
                    <div class="w-100 bs-card-header text-center">
                         <img src="`+ value.img + `" class="bs-card-img"/> 
                    </div>
                    <div class="w-100 bs-card-body my-3">
                         <h6 class="mb-3"> <i class="fa-solid fa-tag mr-3"></i>` + value.type + `</h6>
                         <h5>`+ value.name + ` <a href=" ` + value.link + `" target="_blank"><i class="fa-solid fa-arrow-up-right-from-square ml-2">  </i></a> <h5/>
                         <p class="mt-3">`+ value.Description + `</p>
                    </div>

                </div>
           </div>
          `;
            } else if (value.catogry == "Icons") {
                iconpage += `
                <div class="col-lg-3 col-md-2 col-sm-12 mb-3 ">
                <div class="col-11 mx-auto shadow-sm bs-card">
                    <div class="w-100 bs-card-header text-center">
                         <img src="`+ value.img + `" class="bs-card-img"/> 
                    </div>
                    <div class="w-100 bs-card-body my-3">
                         <h6 class="mb-3"> <i class="fa-solid fa-tag mr-3"></i>` + value.type + `</h6>
                         <h5>`+ value.name + ` <a href=" ` + value.link + `" target="_blank"><i class="fa-solid fa-arrow-up-right-from-square ml-2">  </i></a> <h5/>
                         <p class="mt-3">`+ value.Description + `</p>
                    </div>

                </div>
           </div>
          `;
            }
        });


        $('#xdblock').html(xdpage);
        $('#Ar_block').html(arpage);
        $('#Icon_block').html(iconpage);
        $('#fonts_block').html(fontpage);



    }).fail(function () {
        document.write("An error has occurred.");
    });
});


//================PAGES WEB COMPONENT=====================//

//XD COMPONENT 
class XdComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row" id="xdblock">
            </div>
        `;
    }
}
customElements.define('xd-component', XdComponent);

//AR Tools COMPONENT 
class ArComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row" id="Ar_block">
            </div>
        `;
    }
}
customElements.define('ar-component', ArComponent);

//Icon COMPONENT 
class IconComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row" id="Icon_block">
            </div>
        `;
    }
}
customElements.define('icon-component', IconComponent);

//Fonts COMPONENT 
class FontsComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row" id="fonts_block">
            </div>
        `;
    }
}
customElements.define('fonts-component', FontsComponent);

//AI Tools COMPONENT 
class AiComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row" id="AiComponent_block">
            </div>
        `;
    }
}
customElements.define('ai-component', AiComponent);

//ACCESSIBILITY Tools COMPONENT 
class AccessibilityComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row" id="Accessibility_block" >
            </div>
        `;
    }
}
customElements.define('accessibility-component', AccessibilityComponent);

//ANIMATION Tools COMPONENT 
class AnimationComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row"  id="Animation_block">
             </div>
        `;
    }

}
customElements.define('animation-component', AnimationComponent);

//BOOKS COMPONENT 
class BooksComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row" id="books_block">
            </div>
        `;
    }
}
customElements.define('books-component', BooksComponent);

//COLLABORATION TOOLS COMPONENT
class CollaborationComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="row">
            </div>
        `;
    }
}
customElements.define('collaboration-component', CollaborationComponent);

//FRAME WORKS COMPONENT
class FrameWorksComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="d-flex">
            </div>
        `;
    }
}
customElements.define('frameworks-component', FrameWorksComponent);

//COLOR GRADIENTS COMPONENT
class ColorsComponent extends HTMLElement {
    connectedCallback() {
        this.innerHTML = `
            <div class="d-flex">
            </div>
        `;
    }
}
customElements.define('colors-component', ColorsComponent);


