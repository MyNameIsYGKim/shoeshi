package co.sam.shoeshi.common;

import java.util.HashMap;

import com.google.common.base.CaseFormat;

public class CamelHashMap extends HashMap {
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
	public Object put(Object key, Object value) {
		return super.put(toLowerCamel((String) key), value);
	}

	private static String toLowerCamel(String key) {
		return CaseFormat.UPPER_UNDERSCORE.to(CaseFormat.LOWER_CAMEL, key);
	}
}
