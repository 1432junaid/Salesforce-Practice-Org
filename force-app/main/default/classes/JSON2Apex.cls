public class JSON2Apex {
    
	public class Timezone {
		public String name {get;set;} 
		public Integer now_in_dst {get;set;} 
		public Integer offset_sec {get;set;} 
		public String offset_string {get;set;} 
		public String short_name {get;set;} 

		public Timezone(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'now_in_dst') {
							now_in_dst = parser.getIntegerValue();
						} else if (text == 'offset_sec') {
							offset_sec = parser.getIntegerValue();
						} else if (text == 'offset_string') {
							offset_string = parser.getText();
						} else if (text == 'short_name') {
							short_name = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Timezone consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Annotations_U {
		public DMS DMS {get;set;} 
		public String MGRS {get;set;} 
		public String Maidenhead {get;set;} 
		public Mercator Mercator {get;set;} 
		public OSM OSM {get;set;} 
		public UN_M49_W UN_M49 {get;set;} 
		public Integer callingcode {get;set;} 
		public Currency_X currency_Z {get;set;} // in json: currency
		public String flag {get;set;} 
		public String geohash {get;set;} 
		public Double qibla {get;set;} 
		public Roadinfo roadinfo {get;set;} 
		public Sun sun {get;set;} 
		public Timezone timezone {get;set;} 
		public What3words what3words {get;set;} 

		public Annotations_U(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DMS') {
							DMS = new DMS(parser);
						} else if (text == 'MGRS') {
							MGRS = parser.getText();
						} else if (text == 'Maidenhead') {
							Maidenhead = parser.getText();
						} else if (text == 'Mercator') {
							Mercator = new Mercator(parser);
						} else if (text == 'OSM') {
							OSM = new OSM(parser);
						} else if (text == 'UN_M49') {
							UN_M49 = new UN_M49_W(parser);
						} else if (text == 'callingcode') {
							callingcode = parser.getIntegerValue();
						} else if (text == 'currency') {
							currency_Z = new Currency_X(parser);
						} else if (text == 'flag') {
							flag = parser.getText();
						} else if (text == 'geohash') {
							geohash = parser.getText();
						} else if (text == 'qibla') {
							qibla = parser.getDoubleValue();
						} else if (text == 'roadinfo') {
							roadinfo = new Roadinfo(parser);
						} else if (text == 'sun') {
							sun = new Sun(parser);
						} else if (text == 'timezone') {
							timezone = new Timezone(parser);
						} else if (text == 'what3words') {
							what3words = new What3words(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Annotations_U consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components_T {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String municipality {get;set;} 
		public String postcode {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 
		public String suburb {get;set;} 

		public Components_T(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'municipality') {
							municipality = parser.getText();
						} else if (text == 'postcode') {
							postcode = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else if (text == 'suburb') {
							suburb = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components_T consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Annotations_V {
		public DMS DMS {get;set;} 
		public FIPS FIPS {get;set;} 
		public String MGRS {get;set;} 
		public String Maidenhead {get;set;} 
		public Mercator Mercator {get;set;} 
		public OSM OSM {get;set;} 
		public UN_M49_Y UN_M49 {get;set;} 
		public Integer callingcode {get;set;} 
		public Currency_X currency_Z {get;set;} // in json: currency
		public String flag {get;set;} 
		public String geohash {get;set;} 
		public Double qibla {get;set;} 
		public Roadinfo roadinfo {get;set;} 
		public Sun sun {get;set;} 
		public Timezone timezone {get;set;} 
		public What3words what3words {get;set;} 

		public Annotations_V(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DMS') {
							DMS = new DMS(parser);
						} else if (text == 'FIPS') {
							FIPS = new FIPS(parser);
						} else if (text == 'MGRS') {
							MGRS = parser.getText();
						} else if (text == 'Maidenhead') {
							Maidenhead = parser.getText();
						} else if (text == 'Mercator') {
							Mercator = new Mercator(parser);
						} else if (text == 'OSM') {
							OSM = new OSM(parser);
						} else if (text == 'UN_M49') {
							UN_M49 = new UN_M49_Y(parser);
						} else if (text == 'callingcode') {
							callingcode = parser.getIntegerValue();
						} else if (text == 'currency') {
							currency_Z = new Currency_X(parser);
						} else if (text == 'flag') {
							flag = parser.getText();
						} else if (text == 'geohash') {
							geohash = parser.getText();
						} else if (text == 'qibla') {
							qibla = parser.getDoubleValue();
						} else if (text == 'roadinfo') {
							roadinfo = new Roadinfo(parser);
						} else if (text == 'sun') {
							sun = new Sun(parser);
						} else if (text == 'timezone') {
							timezone = new Timezone(parser);
						} else if (text == 'what3words') {
							what3words = new What3words(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Annotations_V consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components_S {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String municipality {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 
		public String suburb {get;set;} 

		public Components_S(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'municipality') {
							municipality = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else if (text == 'suburb') {
							suburb = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components_S consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Annotations_T {
		public DMS DMS {get;set;} 
		public String MGRS {get;set;} 
		public String Maidenhead {get;set;} 
		public Mercator Mercator {get;set;} 
		public OSM OSM {get;set;} 
		public UN_M49_W UN_M49 {get;set;} 
		public Integer callingcode {get;set;} 
		public Currency_X currency_Z {get;set;} // in json: currency
		public String flag {get;set;} 
		public String geohash {get;set;} 
		public Double qibla {get;set;} 
		public Roadinfo roadinfo {get;set;} 
		public Sun sun {get;set;} 
		public Timezone timezone {get;set;} 
		public What3words what3words {get;set;} 
		public String wikidata {get;set;} 

		public Annotations_T(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DMS') {
							DMS = new DMS(parser);
						} else if (text == 'MGRS') {
							MGRS = parser.getText();
						} else if (text == 'Maidenhead') {
							Maidenhead = parser.getText();
						} else if (text == 'Mercator') {
							Mercator = new Mercator(parser);
						} else if (text == 'OSM') {
							OSM = new OSM(parser);
						} else if (text == 'UN_M49') {
							UN_M49 = new UN_M49_W(parser);
						} else if (text == 'callingcode') {
							callingcode = parser.getIntegerValue();
						} else if (text == 'currency') {
							currency_Z = new Currency_X(parser);
						} else if (text == 'flag') {
							flag = parser.getText();
						} else if (text == 'geohash') {
							geohash = parser.getText();
						} else if (text == 'qibla') {
							qibla = parser.getDoubleValue();
						} else if (text == 'roadinfo') {
							roadinfo = new Roadinfo(parser);
						} else if (text == 'sun') {
							sun = new Sun(parser);
						} else if (text == 'timezone') {
							timezone = new Timezone(parser);
						} else if (text == 'what3words') {
							what3words = new What3words(parser);
						} else if (text == 'wikidata') {
							wikidata = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Annotations_T consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Annotations_Y {
		public DMS DMS {get;set;} 
		public String MGRS {get;set;} 
		public String Maidenhead {get;set;} 
		public Mercator Mercator {get;set;} 
		public OSM OSM {get;set;} 
		public UN_M49_Z UN_M49 {get;set;} 
		public Integer callingcode {get;set;} 
		public Currency_Y currency_Z {get;set;} // in json: currency
		public String flag {get;set;} 
		public String geohash {get;set;} 
		public Double qibla {get;set;} 
		public Roadinfo roadinfo {get;set;} 
		public Sun sun {get;set;} 
		public Timezone timezone {get;set;} 
		public What3words what3words {get;set;} 
		public String wikidata {get;set;} 

		public Annotations_Y(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DMS') {
							DMS = new DMS(parser);
						} else if (text == 'MGRS') {
							MGRS = parser.getText();
						} else if (text == 'Maidenhead') {
							Maidenhead = parser.getText();
						} else if (text == 'Mercator') {
							Mercator = new Mercator(parser);
						} else if (text == 'OSM') {
							OSM = new OSM(parser);
						} else if (text == 'UN_M49') {
							UN_M49 = new UN_M49_Z(parser);
						} else if (text == 'callingcode') {
							callingcode = parser.getIntegerValue();
						} else if (text == 'currency') {
							currency_Z = new Currency_Y(parser);
						} else if (text == 'flag') {
							flag = parser.getText();
						} else if (text == 'geohash') {
							geohash = parser.getText();
						} else if (text == 'qibla') {
							qibla = parser.getDoubleValue();
						} else if (text == 'roadinfo') {
							roadinfo = new Roadinfo(parser);
						} else if (text == 'sun') {
							sun = new Sun(parser);
						} else if (text == 'timezone') {
							timezone = new Timezone(parser);
						} else if (text == 'what3words') {
							what3words = new What3words(parser);
						} else if (text == 'wikidata') {
							wikidata = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Annotations_Y consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components_X {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String county {get;set;} 
		public String county_code {get;set;} 
		public String hamlet {get;set;} 
		public String postcode {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 
		public String town {get;set;} 

		public Components_X(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'county') {
							county = parser.getText();
						} else if (text == 'county_code') {
							county_code = parser.getText();
						} else if (text == 'hamlet') {
							hamlet = parser.getText();
						} else if (text == 'postcode') {
							postcode = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else if (text == 'town') {
							town = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components_X consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Annotations_Z {
		public DMS DMS {get;set;} 
		public String MGRS {get;set;} 
		public String Maidenhead {get;set;} 
		public Mercator Mercator {get;set;} 
		public OSM OSM {get;set;} 
		public UN_M49 UN_M49 {get;set;} 
		public Integer callingcode {get;set;} 
		public Currency_Z currency_Z {get;set;} // in json: currency
		public String flag {get;set;} 
		public String geohash {get;set;} 
		public Double qibla {get;set;} 
		public Roadinfo roadinfo {get;set;} 
		public Sun sun {get;set;} 
		public Timezone timezone {get;set;} 
		public What3words what3words {get;set;} 

		public Annotations_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DMS') {
							DMS = new DMS(parser);
						} else if (text == 'MGRS') {
							MGRS = parser.getText();
						} else if (text == 'Maidenhead') {
							Maidenhead = parser.getText();
						} else if (text == 'Mercator') {
							Mercator = new Mercator(parser);
						} else if (text == 'OSM') {
							OSM = new OSM(parser);
						} else if (text == 'UN_M49') {
							UN_M49 = new UN_M49(parser);
						} else if (text == 'callingcode') {
							callingcode = parser.getIntegerValue();
						} else if (text == 'currency') {
							currency_Z = new Currency_Z(parser);
						} else if (text == 'flag') {
							flag = parser.getText();
						} else if (text == 'geohash') {
							geohash = parser.getText();
						} else if (text == 'qibla') {
							qibla = parser.getDoubleValue();
						} else if (text == 'roadinfo') {
							roadinfo = new Roadinfo(parser);
						} else if (text == 'sun') {
							sun = new Sun(parser);
						} else if (text == 'timezone') {
							timezone = new Timezone(parser);
						} else if (text == 'what3words') {
							what3words = new What3words(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Annotations_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components_W {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String county {get;set;} 
		public String hamlet {get;set;} 
		public String postcode {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 

		public Components_W(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'county') {
							county = parser.getText();
						} else if (text == 'hamlet') {
							hamlet = parser.getText();
						} else if (text == 'postcode') {
							postcode = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components_W consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Mercator {
		public Double x {get;set;} 
		public Double y {get;set;} 

		public Mercator(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'x') {
							x = parser.getDoubleValue();
						} else if (text == 'y') {
							y = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Mercator consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Annotations_W {
		public DMS DMS {get;set;} 
		public String MGRS {get;set;} 
		public String Maidenhead {get;set;} 
		public Mercator Mercator {get;set;} 
		public OSM OSM {get;set;} 
		public UN_M49_X UN_M49 {get;set;} 
		public Integer callingcode {get;set;} 
		public Currency_X currency_Z {get;set;} // in json: currency
		public String flag {get;set;} 
		public String geohash {get;set;} 
		public Integer qibla {get;set;} 
		public Roadinfo roadinfo {get;set;} 
		public Sun sun {get;set;} 
		public Timezone timezone {get;set;} 
		public What3words what3words {get;set;} 

		public Annotations_W(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DMS') {
							DMS = new DMS(parser);
						} else if (text == 'MGRS') {
							MGRS = parser.getText();
						} else if (text == 'Maidenhead') {
							Maidenhead = parser.getText();
						} else if (text == 'Mercator') {
							Mercator = new Mercator(parser);
						} else if (text == 'OSM') {
							OSM = new OSM(parser);
						} else if (text == 'UN_M49') {
							UN_M49 = new UN_M49_X(parser);
						} else if (text == 'callingcode') {
							callingcode = parser.getIntegerValue();
						} else if (text == 'currency') {
							currency_Z = new Currency_X(parser);
						} else if (text == 'flag') {
							flag = parser.getText();
						} else if (text == 'geohash') {
							geohash = parser.getText();
						} else if (text == 'qibla') {
							qibla = parser.getIntegerValue();
						} else if (text == 'roadinfo') {
							roadinfo = new Roadinfo(parser);
						} else if (text == 'sun') {
							sun = new Sun(parser);
						} else if (text == 'timezone') {
							timezone = new Timezone(parser);
						} else if (text == 'what3words') {
							what3words = new What3words(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Annotations_W consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components_V {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String city {get;set;} 
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String county {get;set;} 
		public String postcode {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 
		public String state_district {get;set;} 
		public String village {get;set;} 

		public Components_V(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'city') {
							city = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'county') {
							county = parser.getText();
						} else if (text == 'postcode') {
							postcode = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else if (text == 'state_district') {
							state_district = parser.getText();
						} else if (text == 'village') {
							village = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components_V consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Annotations_X {
		public DMS DMS {get;set;} 
		public FIPS FIPS {get;set;} 
		public String MGRS {get;set;} 
		public String Maidenhead {get;set;} 
		public Mercator Mercator {get;set;} 
		public OSM OSM {get;set;} 
		public UN_M49_Y UN_M49 {get;set;} 
		public Integer callingcode {get;set;} 
		public Currency_X currency_Z {get;set;} // in json: currency
		public String flag {get;set;} 
		public String geohash {get;set;} 
		public Double qibla {get;set;} 
		public Roadinfo roadinfo {get;set;} 
		public Sun sun {get;set;} 
		public Timezone timezone {get;set;} 
		public What3words what3words {get;set;} 
		public String wikidata {get;set;} 

		public Annotations_X(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DMS') {
							DMS = new DMS(parser);
						} else if (text == 'FIPS') {
							FIPS = new FIPS(parser);
						} else if (text == 'MGRS') {
							MGRS = parser.getText();
						} else if (text == 'Maidenhead') {
							Maidenhead = parser.getText();
						} else if (text == 'Mercator') {
							Mercator = new Mercator(parser);
						} else if (text == 'OSM') {
							OSM = new OSM(parser);
						} else if (text == 'UN_M49') {
							UN_M49 = new UN_M49_Y(parser);
						} else if (text == 'callingcode') {
							callingcode = parser.getIntegerValue();
						} else if (text == 'currency') {
							currency_Z = new Currency_X(parser);
						} else if (text == 'flag') {
							flag = parser.getText();
						} else if (text == 'geohash') {
							geohash = parser.getText();
						} else if (text == 'qibla') {
							qibla = parser.getDoubleValue();
						} else if (text == 'roadinfo') {
							roadinfo = new Roadinfo(parser);
						} else if (text == 'sun') {
							sun = new Sun(parser);
						} else if (text == 'timezone') {
							timezone = new Timezone(parser);
						} else if (text == 'what3words') {
							what3words = new What3words(parser);
						} else if (text == 'wikidata') {
							wikidata = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Annotations_X consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components_U {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String county {get;set;} 
		public String hamlet {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 

		public Components_U(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'county') {
							county = parser.getText();
						} else if (text == 'hamlet') {
							hamlet = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components_U consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Licenses {
		public String name {get;set;} 
		public String url {get;set;} 

		public Licenses(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'name') {
							name = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Licenses consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String city {get;set;} 
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String county {get;set;} 
		public String postcode {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 
		public String state_district {get;set;} 

		public Components(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'city') {
							city = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'county') {
							county = parser.getText();
						} else if (text == 'postcode') {
							postcode = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else if (text == 'state_district') {
							state_district = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Annotations {
		public DMS DMS {get;set;} 
		public String MGRS {get;set;} 
		public String Maidenhead {get;set;} 
		public Mercator Mercator {get;set;} 
		public OSM OSM {get;set;} 
		public UN_M49 UN_M49 {get;set;} 
		public Integer callingcode {get;set;} 
		public Currency_Z currency_Z {get;set;} // in json: currency
		public String flag {get;set;} 
		public String geohash {get;set;} 
		public Double qibla {get;set;} 
		public Roadinfo roadinfo {get;set;} 
		public Sun sun {get;set;} 
		public Timezone timezone {get;set;} 
		public What3words what3words {get;set;} 
		public String wikidata {get;set;} 

		public Annotations(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'DMS') {
							DMS = new DMS(parser);
						} else if (text == 'MGRS') {
							MGRS = parser.getText();
						} else if (text == 'Maidenhead') {
							Maidenhead = parser.getText();
						} else if (text == 'Mercator') {
							Mercator = new Mercator(parser);
						} else if (text == 'OSM') {
							OSM = new OSM(parser);
						} else if (text == 'UN_M49') {
							UN_M49 = new UN_M49(parser);
						} else if (text == 'callingcode') {
							callingcode = parser.getIntegerValue();
						} else if (text == 'currency') {
							currency_Z = new Currency_Z(parser);
						} else if (text == 'flag') {
							flag = parser.getText();
						} else if (text == 'geohash') {
							geohash = parser.getText();
						} else if (text == 'qibla') {
							qibla = parser.getDoubleValue();
						} else if (text == 'roadinfo') {
							roadinfo = new Roadinfo(parser);
						} else if (text == 'sun') {
							sun = new Sun(parser);
						} else if (text == 'timezone') {
							timezone = new Timezone(parser);
						} else if (text == 'what3words') {
							what3words = new What3words(parser);
						} else if (text == 'wikidata') {
							wikidata = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Annotations consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class What3words {
		public String words {get;set;} 

		public What3words(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'words') {
							words = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'What3words consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Regions_W {
		public String AU {get;set;} 
		public String AUSTRALASIA {get;set;} 
		public String OCEANIA {get;set;} 
		public String WORLD {get;set;} 

		public Regions_W(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'AU') {
							AU = parser.getText();
						} else if (text == 'AUSTRALASIA') {
							AUSTRALASIA = parser.getText();
						} else if (text == 'OCEANIA') {
							OCEANIA = parser.getText();
						} else if (text == 'WORLD') {
							WORLD = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Regions_W consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Regions_X {
		public String AMERICAS {get;set;} 
		public String CA {get;set;} 
		public String NORTHERN_AMERICA {get;set;} 
		public String WORLD {get;set;} 

		public Regions_X(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'AMERICAS') {
							AMERICAS = parser.getText();
						} else if (text == 'CA') {
							CA = parser.getText();
						} else if (text == 'NORTHERN_AMERICA') {
							NORTHERN_AMERICA = parser.getText();
						} else if (text == 'WORLD') {
							WORLD = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Regions_X consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Regions_Y {
		public String AMERICAS {get;set;} 
		public String NORTHERN_AMERICA {get;set;} 
		public String US {get;set;} 
		public String WORLD {get;set;} 

		public Regions_Y(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'AMERICAS') {
							AMERICAS = parser.getText();
						} else if (text == 'NORTHERN_AMERICA') {
							NORTHERN_AMERICA = parser.getText();
						} else if (text == 'US') {
							US = parser.getText();
						} else if (text == 'WORLD') {
							WORLD = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Regions_Y consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components_Z {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 
		public String state_district {get;set;} 

		public Components_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else if (text == 'state_district') {
							state_district = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Regions_Z {
		public String EUROPE {get;set;} 
		public String GB {get;set;} 
		public String NORTHERN_EUROPE {get;set;} 
		public String WORLD {get;set;} 

		public Regions_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'EUROPE') {
							EUROPE = parser.getText();
						} else if (text == 'GB') {
							GB = parser.getText();
						} else if (text == 'NORTHERN_EUROPE') {
							NORTHERN_EUROPE = parser.getText();
						} else if (text == 'WORLD') {
							WORLD = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Regions_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Components_Y {
		public String ISO_3166_1_alpha_2 {get;set;} // in json: ISO_3166-1_alpha-2
		public String ISO_3166_1_alpha_3 {get;set;} // in json: ISO_3166-1_alpha-3
		public String x_category {get;set;} // in json: _category
		public String x_type {get;set;} // in json: _type
		public String continent {get;set;} 
		public String country {get;set;} 
		public String country_code {get;set;} 
		public String county {get;set;} 
		public String postcode {get;set;} 
		public String state {get;set;} 
		public String state_code {get;set;} 
		public String state_district {get;set;} 

		public Components_Y(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ISO_3166-1_alpha-2') {
							ISO_3166_1_alpha_2 = parser.getText();
						} else if (text == 'ISO_3166-1_alpha-3') {
							ISO_3166_1_alpha_3 = parser.getText();
						} else if (text == '_category') {
							x_category = parser.getText();
						} else if (text == '_type') {
							x_type = parser.getText();
						} else if (text == 'continent') {
							continent = parser.getText();
						} else if (text == 'country') {
							country = parser.getText();
						} else if (text == 'country_code') {
							country_code = parser.getText();
						} else if (text == 'county') {
							county = parser.getText();
						} else if (text == 'postcode') {
							postcode = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else if (text == 'state_code') {
							state_code = parser.getText();
						} else if (text == 'state_district') {
							state_district = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Components_Y consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class UN_M49_Z {
		public Regions_Z regions {get;set;} 
		public List<String> statistical_groupings {get;set;} 

		public UN_M49_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'regions') {
							regions = new Regions_Z(parser);
						} else if (text == 'statistical_groupings') {
							statistical_groupings = arrayOfString(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'UN_M49_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class UN_M49_Y {
		public Regions_Y regions {get;set;} 
		public List<String> statistical_groupings {get;set;} 

		public UN_M49_Y(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'regions') {
							regions = new Regions_Y(parser);
						} else if (text == 'statistical_groupings') {
							statistical_groupings = arrayOfString(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'UN_M49_Y consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class UN_M49_X {
		public Regions_X regions {get;set;} 
		public List<String> statistical_groupings {get;set;} 

		public UN_M49_X(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'regions') {
							regions = new Regions_X(parser);
						} else if (text == 'statistical_groupings') {
							statistical_groupings = arrayOfString(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'UN_M49_X consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class UN_M49_W {
		public Regions_W regions {get;set;} 
		public List<String> statistical_groupings {get;set;} 

		public UN_M49_W(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'regions') {
							regions = new Regions_W(parser);
						} else if (text == 'statistical_groupings') {
							statistical_groupings = arrayOfString(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'UN_M49_W consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Status {
		public Integer code {get;set;} 
		public String message {get;set;} 

		public Status(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'code') {
							code = parser.getIntegerValue();
						} else if (text == 'message') {
							message = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Status consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Rate {
		public Integer limit_Z {get;set;} // in json: limit
		public Integer remaining {get;set;} 
		public Integer reset {get;set;} 

		public Rate(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'limit') {
							limit_Z = parser.getIntegerValue();
						} else if (text == 'remaining') {
							remaining = parser.getIntegerValue();
						} else if (text == 'reset') {
							reset = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Rate consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class FIPS {
		public String county {get;set;} 
		public String state {get;set;} 

		public FIPS(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'county') {
							county = parser.getText();
						} else if (text == 'state') {
							state = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'FIPS consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Bounds {
		public Northeast northeast {get;set;} 
		public Northeast southwest {get;set;} 

		public Bounds(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'northeast') {
							northeast = new Northeast(parser);
						} else if (text == 'southwest') {
							southwest = new Northeast(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Bounds consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Currency_X {
		public List<String> alternate_symbols {get;set;} 
		public String decimal_mark {get;set;} 
		public String disambiguate_symbol {get;set;} 
		public String html_entity {get;set;} 
		public String iso_code {get;set;} 
		public String iso_numeric {get;set;} 
		public String name {get;set;} 
		public Integer smallest_denomination {get;set;} 
		public String subunit {get;set;} 
		public Integer subunit_to_unit {get;set;} 
		public String symbol {get;set;} 
		public Integer symbol_first {get;set;} 
		public String thousands_separator {get;set;} 

		public Currency_X(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'alternate_symbols') {
							alternate_symbols = arrayOfString(parser);
						} else if (text == 'decimal_mark') {
							decimal_mark = parser.getText();
						} else if (text == 'disambiguate_symbol') {
							disambiguate_symbol = parser.getText();
						} else if (text == 'html_entity') {
							html_entity = parser.getText();
						} else if (text == 'iso_code') {
							iso_code = parser.getText();
						} else if (text == 'iso_numeric') {
							iso_numeric = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'smallest_denomination') {
							smallest_denomination = parser.getIntegerValue();
						} else if (text == 'subunit') {
							subunit = parser.getText();
						} else if (text == 'subunit_to_unit') {
							subunit_to_unit = parser.getIntegerValue();
						} else if (text == 'symbol') {
							symbol = parser.getText();
						} else if (text == 'symbol_first') {
							symbol_first = parser.getIntegerValue();
						} else if (text == 'thousands_separator') {
							thousands_separator = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Currency_X consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Stay_informed {
		public String blog {get;set;} 
		public String twitter {get;set;} 

		public Stay_informed(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'blog') {
							blog = parser.getText();
						} else if (text == 'twitter') {
							twitter = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Stay_informed consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Currency_Y {
		public List<Alternate_symbols> alternate_symbols {get;set;} 
		public String decimal_mark {get;set;} 
		public String html_entity {get;set;} 
		public String iso_code {get;set;} 
		public String iso_numeric {get;set;} 
		public String name {get;set;} 
		public Integer smallest_denomination {get;set;} 
		public String subunit {get;set;} 
		public Integer subunit_to_unit {get;set;} 
		public String symbol {get;set;} 
		public Integer symbol_first {get;set;} 
		public String thousands_separator {get;set;} 

		public Currency_Y(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'alternate_symbols') {
							alternate_symbols = arrayOfAlternate_symbols(parser);
						} else if (text == 'decimal_mark') {
							decimal_mark = parser.getText();
						} else if (text == 'html_entity') {
							html_entity = parser.getText();
						} else if (text == 'iso_code') {
							iso_code = parser.getText();
						} else if (text == 'iso_numeric') {
							iso_numeric = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'smallest_denomination') {
							smallest_denomination = parser.getIntegerValue();
						} else if (text == 'subunit') {
							subunit = parser.getText();
						} else if (text == 'subunit_to_unit') {
							subunit_to_unit = parser.getIntegerValue();
						} else if (text == 'symbol') {
							symbol = parser.getText();
						} else if (text == 'symbol_first') {
							symbol_first = parser.getIntegerValue();
						} else if (text == 'thousands_separator') {
							thousands_separator = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Currency_Y consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Regions {
		public String ASIA {get;set;} 
		public String IN_Z {get;set;} // in json: IN
		public String SOUTHERN_ASIA {get;set;} 
		public String WORLD {get;set;} 

		public Regions(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'ASIA') {
							ASIA = parser.getText();
						} else if (text == 'IN') {
							IN_Z = parser.getText();
						} else if (text == 'SOUTHERN_ASIA') {
							SOUTHERN_ASIA = parser.getText();
						} else if (text == 'WORLD') {
							WORLD = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Regions consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Sun {
		public Rise rise {get;set;} 
		public Rise set_Z {get;set;} // in json: set

		public Sun(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'rise') {
							rise = new Rise(parser);
						} else if (text == 'set') {
							set_Z = new Rise(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Sun consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Currency_Z {
		public List<String> alternate_symbols {get;set;} 
		public String decimal_mark {get;set;} 
		public String html_entity {get;set;} 
		public String iso_code {get;set;} 
		public String iso_numeric {get;set;} 
		public String name {get;set;} 
		public Integer smallest_denomination {get;set;} 
		public String subunit {get;set;} 
		public Integer subunit_to_unit {get;set;} 
		public String symbol {get;set;} 
		public Integer symbol_first {get;set;} 
		public String thousands_separator {get;set;} 

		public Currency_Z(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'alternate_symbols') {
							alternate_symbols = arrayOfString(parser);
						} else if (text == 'decimal_mark') {
							decimal_mark = parser.getText();
						} else if (text == 'html_entity') {
							html_entity = parser.getText();
						} else if (text == 'iso_code') {
							iso_code = parser.getText();
						} else if (text == 'iso_numeric') {
							iso_numeric = parser.getText();
						} else if (text == 'name') {
							name = parser.getText();
						} else if (text == 'smallest_denomination') {
							smallest_denomination = parser.getIntegerValue();
						} else if (text == 'subunit') {
							subunit = parser.getText();
						} else if (text == 'subunit_to_unit') {
							subunit_to_unit = parser.getIntegerValue();
						} else if (text == 'symbol') {
							symbol = parser.getText();
						} else if (text == 'symbol_first') {
							symbol_first = parser.getIntegerValue();
						} else if (text == 'thousands_separator') {
							thousands_separator = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Currency_Z consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Alternate_symbols {

		public Alternate_symbols(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						{
							System.debug(LoggingLevel.WARN, 'Alternate_symbols consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Northeast {
		public Double lat {get;set;} 
		public Double lng {get;set;} 

		public Northeast(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'lat') {
							lat = parser.getDoubleValue();
						} else if (text == 'lng') {
							lng = parser.getDoubleValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Northeast consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Roadinfo {
		public String drive_on {get;set;} 
		public String speed_in {get;set;} 

		public Roadinfo(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'drive_on') {
							drive_on = parser.getText();
						} else if (text == 'speed_in') {
							speed_in = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'Roadinfo consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public String documentation {get;set;} 
	public List<Licenses> licenses {get;set;} 
	public Rate rate {get;set;} 
	public List<Results> results {get;set;} 
	public Status status {get;set;} 
	public Stay_informed stay_informed {get;set;} 
	public String thanks {get;set;} 
	public Timestamp timestamp {get;set;} 
	public Integer total_results {get;set;} 

	public JSON2Apex(JSONParser parser) {
		while (parser.nextToken() != System.JSONToken.END_OBJECT) {
			if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
				String text = parser.getText();
				if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
					if (text == 'documentation') {
						documentation = parser.getText();
					} else if (text == 'licenses') {
						licenses = arrayOfLicenses(parser);
					} else if (text == 'rate') {
						rate = new Rate(parser);
					} else if (text == 'results') {
						results = arrayOfResults(parser);
					} else if (text == 'status') {
						status = new Status(parser);
					} else if (text == 'stay_informed') {
						stay_informed = new Stay_informed(parser);
					} else if (text == 'thanks') {
						thanks = parser.getText();
					} else if (text == 'timestamp') {
						timestamp = new Timestamp(parser);
					} else if (text == 'total_results') {
						total_results = parser.getIntegerValue();
					} else {
						System.debug(LoggingLevel.WARN, 'JSON2Apex consuming unrecognized property: '+text);
						consumeObject(parser);
					}
				}
			}
		}
	}
	
	public class Timestamp {
		public String created_http {get;set;} 
		public Integer created_unix {get;set;} 

		public Timestamp(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'created_http') {
							created_http = parser.getText();
						} else if (text == 'created_unix') {
							created_unix = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Timestamp consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Rise {
		public Integer apparent {get;set;} 
		public Integer astronomical {get;set;} 
		public Integer civil {get;set;} 
		public Integer nautical {get;set;} 

		public Rise(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'apparent') {
							apparent = parser.getIntegerValue();
						} else if (text == 'astronomical') {
							astronomical = parser.getIntegerValue();
						} else if (text == 'civil') {
							civil = parser.getIntegerValue();
						} else if (text == 'nautical') {
							nautical = parser.getIntegerValue();
						} else {
							System.debug(LoggingLevel.WARN, 'Rise consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class OSM {
		public String edit_url {get;set;} 
		public String note_url {get;set;} 
		public String url {get;set;} 

		public OSM(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'edit_url') {
							edit_url = parser.getText();
						} else if (text == 'note_url') {
							note_url = parser.getText();
						} else if (text == 'url') {
							url = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'OSM consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class DMS {
		public String lat {get;set;} 
		public String lng {get;set;} 

		public DMS(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'lat') {
							lat = parser.getText();
						} else if (text == 'lng') {
							lng = parser.getText();
						} else {
							System.debug(LoggingLevel.WARN, 'DMS consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class UN_M49 {
		public Regions regions {get;set;} 
		public List<String> statistical_groupings {get;set;} 

		public UN_M49(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
				if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'regions') {
							regions = new Regions(parser);
						} else if (text == 'statistical_groupings') {
							statistical_groupings = arrayOfString(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'UN_M49 consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
	
	public class Results {
		public Annotations annotations {get;set;} 
		public Bounds bounds {get;set;} 
		public Components components {get;set;} 
		public Integer confidence {get;set;} 
		public String formatted {get;set;} 
		public Northeast geometry {get;set;} 

		public Results(JSONParser parser) {
			while (parser.nextToken() != System.JSONToken.END_OBJECT) {
                if (parser.getCurrentToken() == System.JSONToken.FIELD_NAME) {
					String text = parser.getText();
					if (parser.nextToken() != System.JSONToken.VALUE_NULL) {
						if (text == 'annotations') {
							annotations = new Annotations(parser);
						} else if (text == 'bounds') {
							bounds = new Bounds(parser);
						} else if (text == 'components') {
							components = new Components(parser);
						} else if (text == 'confidence') {
							confidence = parser.getIntegerValue();
						} else if (text == 'formatted') {
							formatted = parser.getText();
						} else if (text == 'geometry') {
							geometry = new Northeast(parser);
						} else {
							System.debug(LoggingLevel.WARN, 'Results consuming unrecognized property: '+text);
							consumeObject(parser);
						}
					}
				}
			}
		}
	}
		
	public static JSON2Apex parse(String json) {
		System.JSONParser parser = System.JSON.createParser(json);
		return new JSON2Apex(parser);
	}
	
	public static void consumeObject(System.JSONParser parser) {
		Integer depth = 0;
		do {
			System.JSONToken curr = parser.getCurrentToken();
			if (curr == System.JSONToken.START_OBJECT || 
				curr == System.JSONToken.START_ARRAY) {
				depth++;
			} else if (curr == System.JSONToken.END_OBJECT ||
				curr == System.JSONToken.END_ARRAY) {
				depth--;
			}
		} while (depth > 0 && parser.nextToken() != null);
	}
	
    private static List<Results> arrayOfResults(System.JSONParser p) {
        List<Results> res = new List<Results>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Results(p));
        }
        return res;
    }

    private static List<Licenses> arrayOfLicenses(System.JSONParser p) {
        List<Licenses> res = new List<Licenses>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Licenses(p));
        }
        return res;
    }

    private static List<String> arrayOfString(System.JSONParser p) {
        List<String> res = new List<String>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(p.getText());
        }
        return res;
    }

    private static List<Alternate_symbols> arrayOfAlternate_symbols(System.JSONParser p) {
        List<Alternate_symbols> res = new List<Alternate_symbols>();
        if (p.getCurrentToken() == null) p.nextToken();
        while (p.nextToken() != System.JSONToken.END_ARRAY) {
            res.add(new Alternate_symbols(p));
        }
        return res;
    }

}