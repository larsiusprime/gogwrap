import gogwrap.api.Galaxy;

class Test
{
	static function main()
	{
		trace("Implement Something");
	}

	private static function gogWrap_onAchievementStored(id:String)
	{
		trace("Achievement stored: " + id);
	}
}

