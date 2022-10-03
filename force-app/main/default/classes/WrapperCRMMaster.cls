public class WrapperCRMMaster {

	public class Table {
		public Integer srnature_id;
		public String srnature_name;
	}

	public Result Result;

	public class Result {
		public List<Table> Table;
	}

	
	public static WrapperCRMMaster parse(String json) {
		return (WrapperCRMMaster) System.JSON.deserialize(json, WrapperCRMMaster.class);
	}
}