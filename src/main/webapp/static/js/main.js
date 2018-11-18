var App = {
    htmlElements: {
        board: document.querySelector('.minesweeper-container'),
    },
    init: function(){
        App.initBoardDrawing();
    },
    initBoardDrawing: function() {
        var div = document.createElement('div'),
            text = document.createTextNode('0');
        div.appendChild(text);
        div.className += 'empty-block';
        App.htmlElements.board.appendChild(div);

        var div = document.createElement('div'),
            text = document.createTextNode('1');
        div.appendChild(text);
        div.className += 'bomb-block';
        App.htmlElements.board.appendChild(div);
    },
}
App.init();