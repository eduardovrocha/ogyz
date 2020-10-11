import {Controller} from 'stimulus'
import Rails from "@rails/ujs";

export default class extends Controller {
    static targets = ["query"];

    connect() {
        console.log('Stimuls Js loaded SearchBooksController');
    }

    initialize() {
    }

    submit() {
        const value = this.queryTarget.value
        console.log(this.element)
        Rails.ajax({
            type: "GET",
            url: `/?query=${value}`,
            dataType: "json",
            success: (_data, _status, xhr) => {
                if (xhr.status !== 200) { /* handle with error thread exception */
                    console.log('Looks like there was a problem. Status Code: ' +
                        xhr.status);
                    return;
                }
                let bookHTML = '';
                let bookArray = _data;
                bookArray.forEach(book => {
                    bookHTML += this.bookTemplate(book);
                });
                this.booksTarget.innerHTML = bookHTML;
                // this.booksTarget.DataTable();
            }
        })
    }

    bookTemplate(book) {
        return `
                    <div class="media text-muted pt-3">
                        <img data-src="${book.image}" alt="book covver" class="mr-2 rounded" 
                        src="${book.image}" data-holder-rendered="true" style="width: 32px; height: 32px;">
                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                            <div class="d-flex justify-content-between align-items-center w-100">
                                <strong class="text-gray-dark">${book.title}</strong>
                                <span>Show | Edit | Destroy</span>
                            </div>
                            <span class="d-block">${book.author}</span>
                        </div>
                    </div>
        `
    }

}