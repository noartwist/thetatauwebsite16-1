<?php
	include_once 'DB.php';

	// This file was automatically generated by the
	// setupMySQLDBConfig.py script in /python
	$MySQLDBconfig = new DBconf();

	$MySQLDBConfig->addScope("users")
		->addDP("userid", "string", True)
		->addDP("firstname", "string", True)
		->addDP("lastname", "string", True)
		->addDP("roll", "integer", True)
		->addDP("verified", "boolean", False)
		->addDP("email", "string", True)
		->addDP("img", "string", False)
		->declareKey("userid");

	$MySQLDBConfig->addScope("profile")
		->addDP("userid", "string", True)
		->addDP("major_ug", "string", False)
		->addDP("major_m", "string", False)
		->addDP("major_phd", "string", False)
		->addDP("major_pd", "string", False)
		->addDP("address", "string", False)
		->addDP("city", "string", False)
		->addDP("state", "string", False)
		->addDP("zip", "integer", False)
		->addDP("country", "string", False)
		->addDP("grad_year", "integer", False)
		->addDP("grad_month", "string", False)
		->addDP("pledge_class", "string", False)
		->addDP("nickname", "string", False)
		->addDP("fullname", "string", False)
		->addDP("phone", "string", False)
		->declareKey("userid");

	$MySQLDBConfig->addScope("jobs")
		->addDP("userid", "string", True)
		->addDP("title", "string", True)
		->addDP("company", "string", True)
		->addDP("description", "string", False)
		->addDP("startT", "integer", False)
		->addDP("endT", "integer", False)
		->addDP("link", "string", False)
		->declareKey("userid")
		->declareKey("title")
		->declareKey("company");

	$MySQLDBConfig->addScope("projects")
		->addDP("userid", "string", True)
		->addDP("projectname", "string", True)
		->addDP("description", "string", False)
		->addDP("startT", "integer", False)
		->addDP("endT", "integer", False)
		->addDP("link", "string", False)
		->declareKey("userid")
		->declareKey("projectname");

	$MySQLDBConfig->addScope("hobbies")
		->addDP("userid", "string", True)
		->addDP("hobby", "string", True)
		->declareKey("userid")
		->declareKey("hobby");

	$MySQLDBConfig->addScope("skills")
		->addDP("userid", "string", True)
		->addDP("skill", "string", True)
		->declareKey("userid")
		->declareKey("skill");

	$MySQLDBConfig->addScope("thetataucareer")
		->addDP("userid", "string", True)
		->addDP("role", "string", True)
		->addDP("year", "integer", True)
		->addDP("semester", "string", True)
		->declareKey("userid")
		->declareKey("role")
		->declareKey("year")
		->declareKey("semester");

	$MySQLDBConfig->addScope("social_profile")
		->addDP("userid", "string", True)
		->addDP("profiletype", "string", True)
		->addDP("link", "string", True)
		->declareKey("userid")
		->declareKey("profiletype");

	$MySQLDBConfig->addScope("auth")
		->addDP("userid", "string", True)
		->addDP("pw", "string", True)
		->addDP("token", "string", True)
		->declareKey("userid");

	$MySQLDBConfig->addScope("userroles")
		->addDP("userid", "string", True)
		->addDP("roleid", "string", True)
		->declareKey("userid")
		->declareKey("roleid");

	$MySQLDBConfig->addScope("roles")
		->addDP("roleid", "string", True)
		->addDP("title", "string", True)
		->addDP("contact", "string", True)
		->declareKey("roleid");

	$MySQLDBConfig->addScope("permissions")
		->addDP("roleid", "string", True)
		->addDP("action", "string", True)
		->addDP("kind", "integer", True)
		->declareKey("roleid")
		->declareKey("action");
?>