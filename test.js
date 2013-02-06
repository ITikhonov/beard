load("example.js")

function output(x) { putstr(x); }
function getvalue(data,x) {
	var vs=x.split('.');
	var v=data;
	var i;
	for(i=0;i<vs.length;i++) {
		y=v[vs[i]];
		if(y==undefined) return;
		v=y;
	}
	return v;
}

function compare(x,y) {
	return x==y;
}

template({
	'simple_var': 'Simple Variable',
	'simple_cond_var': true,
	'list_var': ['left','center','right','unknown'],
	'ext_block': function(data,x,output) { output("External block received '"+x+"' value"); },
	'nestlist_var': [{'cond':'left'},{'cond':'center'},{'cond':'right'},{'cond':'unknown'}],
},undefined,output,getvalue,compare);

