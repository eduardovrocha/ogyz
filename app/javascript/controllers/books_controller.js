import {Controller} from 'stimulus'
import Rails from "@rails/ujs";

export default class extends Controller {
    static targets = ["query", "books"];

    connect() {
        console.log('Stimuls Js loaded BooksController');
        this.loadDatatable();
    }

    initialize() {
    }

    loadDatatable() {
        console.log($('#books-datatable'));
        let loadedBook = $('#books-datatable').DataTable({
            'order': [0, 'asc'],
            "processing": true,
            'serverSide': true,
            "ajax": { "url": $('#books-datatable').data('source'), "dataSrc": "" },
            'dataType': "json",
            "columns": [
                { "data": "id" },
                { "data": "title" },
                { "data": "description" }
            ]
        });
        // $('#books-datatable').ready(loadedBook);
        // $('#books-datatable').on('turbolinks:load', loadedBook);

    }

}