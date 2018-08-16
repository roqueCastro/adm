var morris1 = new Morris.Line({
    element: 'myfirstchart',
    data: [{
        meses: '2008',
        accidentes: 20,
        incendio: 12
    }, {
        meses: '2009',
        accidentes: 10,
        incendio: 16
    }, {
        meses: '2010',
        accidentes: 5,
        incendio: 40
    }, {
        meses: '2011',
        accidentes: 5,
        incendio: 0
    }, {
        meses: '2012',
        accidentes: 20,
        incendio: 30
    }],
    xkey: 'meses',
    ykeys: ['accidentes', 'incendio'],
    labels: ['Acidentes', 'Incendios'],
    resize: true,
    lineColors: ['#EE8600', '#12C300', '#89009C'],
    lineWidth: 3
});