import {Controller} from 'stimulus'

export default class extends Controller {
    static targets = ["query"];

    connect() {
        console.log('Stimuls Js loaded SearchController');
    }

    initialize() {
    }

}