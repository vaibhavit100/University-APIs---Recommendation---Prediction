"use strict";

//Creating the application namespace
var id, inputString, customerInfo, customerJSON;
var Customer360App = {
		models: {},
		views: {},
		utils: {},
};



//-------------------------------------------------- Utilities ---------------------------------------------------- //

//The Template Loader. Used to asynchronously load templates located in separate .html files

Customer360App.utils.templateLoader = {


		templates: {},

		load: function(names, callback) {
			console.log("template loader");
			var deferreds = [],
			self = this;

			$.each(names, function(index, name) {
				console.log(name + '.jsp');
				deferreds.push($.ajax({url:+ name + '.jsp',success: function(data) {
					//console.log(data);
					this.source = data;
					//console.log(this.source);
					self.templates[name] = Handlebars.compile(this.source);
				}}));
			});

			$.when.apply(null, deferreds).done(callback);
		},

		// Get template by name from hash of preloaded templates
		get: function(name) {
			return this.templates[name];
		}

};


//-------------------------------------------------- The Models ---------------------------------------------------- //

Customer360App.models.Transition = Backbone.Model.extend({

	url: function() {
		console.log("model.url");
		return this.url;
	},
	setURL: function(restURL) {
		console.log("model.seturl");
		this.url = restURL;
	},

	parse: function(response) {
		console.log("model.parse");
		return response;
	}
});



//-------------------------------------------------- The Views ---------------------------------------------------- //

//Customer Search page

Customer360App.views.SearchCustomer = Backbone.View.extend({

	initialize: function() {
		this.template = Customer360App.utils.templateLoader.get('home');
	},

	render: function() {
		console.log("render the view to display customer search page");
		$(this.el).html(this.template());
		return this;
	},

	events: {
		"keyup #search-text": "search",    // Search for company name in database with specified input - Autocomplete function
		"click #autosuggest-submit": "navigateToDashboard", // Navigate to dashboard to display customer info - Search Button
		//"click #back" : "navigateToHomePage" // Goes to the homepage
	},

	// called when there is a change in the input text
	search: function(event)
	{
		inputString = $('#search-text').val();
		console.log("keyboard entry " + inputString);

		if(inputString.length < 1)
			return;
		if(inputString.length > 0) 
		{
			Customer360App.app.searchcustomer(inputString);
		} 

	},

	// Function fetches the values from the database on the basis of input string
	autosuggestion: function(parseData)
	{
		console.log("autosuggestion function of search customer " +parseData);
		// customerId is a global object which holds the customerId of a particular Customer
		customerInfo = parseData;
		$("#search-text").autocomplete({source: parseData});
	},


});


//----------------------------------------------- The Application Router ------------------------------------------ //

Customer360App.Router = Backbone.Router.extend({

	routes: {

		"home.jsp": "home",
		"customer/:univId/name/:universityName": "dashboard",
	},


	initialize: function() {
		console.log("router initialize");

		var self = this;

		// Keep track of the history of pages (we only store the page URL). Used to identify the direction
		// (left or right) of the sliding transition between pages.

		this.pageHistory = [];

		// Register event listener for back button throughout the app

		$('#content').on('click', '.back-button', function(event) {
			window.history.back();
			return false;
		});

		//this.fetchCustomerSearchURL = "search.htm";

	},

	navigate: function(fragment) {
		console.log("navigation router called ");
		Backbone.Router.prototype.navigate.apply(this, arguments);
	},

	/* Search Page Functions - searchpage & searchcustomer. 
 	1. searchpage - loads initial page. 
 	2. searchcustomer - calls autosuggestion functionality */

//	To load initial view of search page. 
	searchpage: function()
	{
		$("#content").empty();
		console.log("home");
		var CUSTOMERLIST = [];
		Customer360App.app.searchCustomerView = new Customer360App.views.SearchCustomer({model: CUSTOMERLIST});
		Customer360App.app.addPage(Customer360App.app.searchCustomerView.render());
		$("#def_header").hide();
	},

//	Search customer for auto suggestion //

	searchcustomer: function(inputString)
	{
		console.log("Search Customer for auto suggestion" + inputString);
		this.fetchCustomerSearch(inputString);
	},

	/* INTI VIEW */

//	Function to call the Customer List View      (Need to implement the event for search option)

	initCustomerListView: function(parseData){
		console.log("init view for customer list - parsed Data");
		//console.log(parseData);
		Customer360App.app.transactions.set(parseData);
		Customer360App.app.customerListView = new Customer360App.views.CustomerList({model: parseData});
		Customer360App.app.addPage(Customer360App.app.customerListView.render());
		$("#def_header").hide();
	},


	initCustomerSearchView: function(parseData){
		console.log("init view for customer search -  parsed Data");
		//console.log(parseData);
		Customer360App.app.transactions.set(parseData);

		Customer360App.app.searchCustomerResultView = new Customer360App.views.SearchCustomer({model: parseData});

		// calling auto suggestion
		Customer360App.app.searchCustomerResultView.autosuggestion(parseData);

		//Customer360App.app.addPage(Customer360App.app.searchCustomerResultView.render());
		$("#def_header").hide();
	},

//	Search Customer List of Customer360 App

	fetchCustomerSearch: function(inputString){
		console.log("fetchCusomterSearch with key " +inputString);
		this.transactions = new Customer360App.models.Transition();
		self = this;
		console.log(this.fetchCustomerSearchURL);
		var URL = this.fetchCustomerSearchURL + '?startsWith=' + inputString ;
		console.log("URL = "+URL);

		// setting the URL with request parameter //
		this.transactions.setURL(URL);

		this.transactions.fetch({
			dataType: "json",
			success: function(customerSearchData) {
				//console.log(customerSearchData);
				Customer360App.app.initCustomerSearchView(Customer360App.app.parser("CUSTOMERSEARCH",customerSearchData.toJSON()));
			},
			error:function(customerSearchData){
				console.log(customerSearchData);
				console.log("Error occurred while retrieving the customers list");
			}
		});
	},

//	Json Parser Function //

	parser:function(route, jsonData){
		console.log("parse function with route " + route);

		// Converting json data into json string format
		var jsonString = JSON.stringify(jsonData);
		console.log("JSON STRING FORMAT");
		console.log(jsonString);

		// json object 
		var jsonObject = JSON.parse(jsonString);

		// Variables Required //
		var myobject = {};
		myobject.CUSTOMERINFO = [];
		var CUSTOMERLIST = [];

		switch(route)
		{
		case "CUSTOMERSEARCH":
		{
			console.log("CUSTOMER SEARCH PARSING");
			for (var key in jsonObject)
			{
				try {
					CUSTOMERLIST.push(jsonObject[key]["universityName"]);
					CUSTOMERLIST.push(jsonObject[key]["univId"]);
				}
				catch(err)
				{
					console.log("Error occurred while parsing the json string" + jsonObject[key] + "Error Message" + err.message);
				}
			}
			break;
		}

		}
		if (route == "CUSTOMERSEARCH")
		{
			// Returns the list of customers list with specified user input. 
			return CUSTOMERLIST;
		}
		else
		{
			return myobject;
		}

	},

	addPage: function(page) {
		console.log("addpage");
		var slideFrom,
		self = this;
		$('#content').append(page.el);
	},

});

Customer360App.utils.templateLoader.load(['home'],
		function() {
	//console.log("Customer360App.utils.templateLoader.load");
	Customer360App.app = new Customer360App.Router();
	Backbone.history.start();
});



