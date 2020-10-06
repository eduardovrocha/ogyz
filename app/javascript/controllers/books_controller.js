import {Controller} from 'stimulus'
export default class extends Controller {
    static targets = ["query", "books"]
    connect() {
        console.log('Stimuls Js loaded BooksController');
    }
    initialize() {}
    submit() {
        const value = this.queryTarget.value;
        console.log(`start get "/?query=${value}"`);
        fetch(`/?query=${value}`, {
            headers: {
                "Content-type": "Application/json"
            }
        })
            .then(
                function(response) {
                    if (response.status !== 200) {
                        console.log('Looks like there was a problem. Status Code: ' +
                            response.status);
                        return;
                    }

                    let bookHTML = "";
                    /* original expression, this data will come from response.data (.json) */

                    /* todo:    */
                    /* [ ] - back-end responder em .json quando houver requisição por js */
                    let bookArray = Object.values([ // let bookArray = Object.values(response.data)[0];
                        {"title": "título 01", "author_id": 1, "description": ".."},
                        {"title": "título 01", "author_id": 1, "description": ".."},
                        {"title": "título 01", "author_id": 1, "description": ".."},
                        {"title": "título 01", "author_id": 1, "description": ".."},
                        {"title": "título 01", "author_id": 1, "description": ".."},
                        {"title": "título 01", "author_id": 1, "description": ".."},
                        {"title": "título 01", "author_id": 1, "description": ".."},
                        {"title": "título 01", "author_id": 1, "description": ".."},
                        {"title": "título 01", "author_id": 1, "description": ".."}
                        ]);
                    bookArray.forEach(book => {
                        bookHTML += this.bookTemplate(book)
                    });

                    // Examine the text in the response
                    // response.json().then(function(data) {
                    //     console.log(data);
                    // });

                    this.booksTarget.innerHTML = bookHTML;
                }
            )
            .catch(function(err) {
                console.log('Fetch Error :-S', err);
            });
    }
    bookTemplate(book) {
        return `<div>
                    <h4>${book.title} <small>${book.description}</small></h4>
                </div> `
    }
}