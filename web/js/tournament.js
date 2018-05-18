let bigData = {
    teams : [
        ["Star Wars",  "Dragon Ball" ],
        ["DC Comics",  "Matrix" ],
        ["Marvel",  "Chevaliers du Zodiaque" ],
        ["Harry Potter",  "Star Trek" ],
        ["Le Seigneur des Anneaux",  "Street Fighter"],
        ["Mario", "Alien"],
        ["Kill Bill", "Terminator"],
        ["Transformers", "Tortues Ninja"]
    ],
    results : [[ /* WINNER BRACKET */
        [[3,5], [2,4], [6,3], [2,3], [1,5], [5,3], [7,2], [1,2]],
        [[1,2], [3,4], [5,6], [7,8]],
        [[9,1], [8,2], [1,3]]
    ]]
};


$(function() {
    $('div#noConsolationRound .demo').bracket({
        skipConsolationRound: true,
        init: doubleEliminationData})
});