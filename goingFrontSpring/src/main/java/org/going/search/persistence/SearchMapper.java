package org.going.search.persistence;

import java.util.List;

import org.going.main.domain.MainVo;

public interface SearchMapper {

			List<MainVo> Search(String keyword) throws Exception;
}
