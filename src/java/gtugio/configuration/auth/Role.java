package gtugio.configuration.auth;

class Role {

	/* only one user has this role initially */
	public static final String ROLE_ADMIN = "admin";
	
	/* grant access to moderator capabilities */
	public static final String ROLE_MODERATOR = "moderator";
	
	/* default role for users signed in using google accounts */
	public static final String ROLE_USER= "user";
}
