var simpleexpense = [
    {
        desc: "take out",
        amount: 30
    },
    {
        desc: "clothes",
        amount: 50
    },
    {
        desc: "grocery",
        amount: 90
    },
    {
        desc: "rent",
        amount: 600
    },
    {
        desc: "coffee",amount:4.50
    }
];
// Details about how big this chart will be

var width = 500;
var height = 500;
var radius = Math.min(width, height) / 2;

////////////////////////////////        PIE NATION              ////////////////
var pie = d3.layout.pie()
  .value(function (d) { return d.amount })

var slices = pie(simpleexpense);

var arc = d3.svg.arc()
  .innerRadius(0)
  .outerRadius(100);

// helper that returns a color based on an ID THANK GOD this exists
var color = d3.scale.category10();

var svg = d3.select('#chart').append('svg').attr('width', width)
  .attr('height', height);

//where it is on the map
var g = svg.append('g').attr('transform', 'translate(200, 250)')

g.selectAll('path.slice')
  .data(slices)
    .enter()
      .append('path')
        .attr('class', 'slice')
        .attr('d', arc)
        .attr('fill', function (d) {
            return color(d.data.desc);
        });

// building a legend is as simple as binding
// more elements to the same data. in this case,
// <text> tags
svg.append('g')
  .attr('class', 'legend')
    .selectAll('text')
    .data(slices)
      .enter()
        .append('text')
          .text(function (d) { return '• ' + d.data.desc; })
          .attr('fill', function (d) { return color(d.data.desc); })
          .attr('y', function (d, i) { return 20 * (i + 1); })

////////////////      END OF PIE NATION           /////////////////////////
