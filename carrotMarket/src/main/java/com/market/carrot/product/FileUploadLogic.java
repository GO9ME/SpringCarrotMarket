package com.market.carrot.product;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.market.carrot.dto.FileDTO;

@Service
public class FileUploadLogic {
	// 파일 업로드를 하고 업로드 정보를 DeptFileDTO로 변환해서 리턴하는 메소드
	public List<FileDTO> uploadFiles(List<MultipartFile> multipartFiles, String path)
			throws IllegalStateException, IOException {
		List<FileDTO> fileDtoList = new ArrayList<FileDTO>();
		for (MultipartFile multipartFile : multipartFiles) {
			// 클라이언트가 업로드한 파일명
			String originalFilename = multipartFile.getOriginalFilename();
			// 서버에서 식별할 수 있도록 파일명을 변경
			String storeFilename = createStoreFilename(originalFilename);
			// File객체를 실제 경로에 저장
			multipartFile.transferTo(new File(path + File.separator + storeFilename));
			fileDtoList.add(new FileDTO(originalFilename, storeFilename));
		}
		System.out.println(fileDtoList);
		return fileDtoList;

	}

	// 파일명을 변경하는 메소드
	private String createStoreFilename(String originalFilename) {
		int pos = originalFilename.lastIndexOf(".");
		String ext = originalFilename.substring(pos + 1);
		String uuid = UUID.randomUUID().toString();
		return uuid + "." + ext;
	}
}
