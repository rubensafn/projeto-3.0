package br.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartFile;

public class Files {
	public static String createFile(MultipartFile file) {
		String caminhoArquivo = "";
		if (!file.isEmpty()) {
			File dir;
			try {
				dir = new File("opt/tomcat/webapps/temp/" + file.getOriginalFilename());
			} catch (java.lang.Exception e) {
				dir = new File("C:/Arquivo Download/temp/" + file.getOriginalFilename());
			}
			try {

				if (!dir.exists())
					dir.mkdirs();

				file.transferTo(dir);
				caminhoArquivo = dir.getCanonicalPath();

			} catch (java.lang.Exception e) {
				e.printStackTrace();
			}
		}
		return caminhoArquivo;
	}

	public static String createFile(MultipartFile file, String folder) {
		String caminhoArquivo = "";
		if (!file.isEmpty()) {
			File dir;
			try {
				dir = new File("opt/tomcat/webapps/arquivos/" + folder + "/" + file.getOriginalFilename());
			} catch (java.lang.Exception e) {
				dir = new File("C:/Arquivo Download/arquivos/" + folder + "/" + file.getOriginalFilename());
			}
			try {

				if (!dir.exists())
					dir.mkdirs();

				file.transferTo(dir);
				caminhoArquivo = dir.getCanonicalPath();

			} catch (java.lang.Exception e) {
				e.printStackTrace();
			}
		}
		return caminhoArquivo;
	}

	public static void downloadFile(HttpServletRequest request, HttpServletResponse response, String path) {

		File downloadFile = new File(path);
		try (FileInputStream inputStream = new FileInputStream(downloadFile);
				OutputStream outStream = response.getOutputStream();) {

			String mimeType = "application/octet-stream";

			response.setContentType(mimeType);
			response.setContentLength((int) downloadFile.length());
			String headerKey = "Content-Disposition";
			String headerValue = String.format("inline; filename=\"%s\"", downloadFile.getName());
			response.setHeader(headerKey, headerValue);

			byte[] buffer = new byte[4096];
			int bytesRead = -1;

			while ((bytesRead = inputStream.read(buffer)) != -1) {
				outStream.write(buffer, 0, bytesRead);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
