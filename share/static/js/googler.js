Cog.prototype.search = function(term) {
    $.get('/google/' + term, function(html) {
        html = html.replace(/^[\s\S]*?<body.*?>/, '')
            .replace(/<\/body.*/, '')
            .replace(/<script[\s\S]+?<\/script>/g, '')
            ;
        var $ul = $('.content').append('<ul></ul>').find('ul');
        $(html).find('h3.r').each(function() {
            $ul.append('<li>' +
                $(this).html() +
                '</li>'
            );
        });
    });
};
