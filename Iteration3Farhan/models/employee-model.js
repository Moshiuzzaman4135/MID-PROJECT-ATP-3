var db = require('./db');

module.exports ={



getAll : function(callback){
		var sql = "select * from employee";
		db.getResult(sql, null, function(results){
			if(results.length > 0){
				callback(results);
			}else{
				callback([]);
			}
		});
	},

getById : function(id, callback){
		var sql = "select * from employee where user_id=?";
		db.getResult(sql, [id], function(results){
			if(results.length > 0){
				callback(results[0]);
			}else{
				callback(null);
			}
		});
	},
	getByEmail : function(id, callback){
		var sql = "select * from employee where user_email=?";
		db.getResult(sql, [id], function(results){
			if(results.length > 0){
				callback(results[0]);
			}else{
				callback(null);
			}
		});
	},

// insert: function(user, callback){
// 		var sql = "insert into employee values(?,?,?,?)";
// 		db.execute(sql, [null, user.user_name, user.user_email, user.user_password,user.user_phoneno], function(status){
// 			if(status){
// 				callback(true);
// 			}else{
// 				callback(false);
// 			}
// 		});
// 	},

update : function(user, callback){
		var sql = "update employee set user_name=?, user_email=?, user_password=?, user_phoneno=? where user_id=?";
		var slqPrint= "update employee set user_name="+user.user_name+", user_email="+user.user_email+", user_password="+user.user_password+", user_phoneno="+user.user_phoneno+" where user_id="+user.user_id+";";
		console.log(slqPrint);
		db.execute(sql, [user.user_name, user.user_email, user.user_password,user.user_phoneno, user.user_id], function(status){
			console.log(status);
			if(status){

				callback(true);
			}else{
				callback(false);
			}
		});
	},


















}