package update.util;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UpdateUtil {
	private static List<FileItem> items;
	private static String basepath;
		/*
		* 普通java类没有servlet所以需要自己写
		*
		* */
	public UpdateUtil(HttpServlet servlet, HttpServletRequest request) {
		// 创建一个工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// 得到真实的路径Configure a repository (to ensure a secure temp location is used)
       //使JDK版本统一，所以加一个/
		ServletContext servletContext = servlet.getServletConfig().getServletContext();

		basepath = servletContext.getRealPath("/");
		basepath = basepath.endsWith("/") ? basepath : basepath + "/";
		//设置缓存存储地址
		System.out.println("basePath=" + basepath);
		File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
		factory.setRepository(repository);

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			// Parse the request
			items = upload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
	}
		/*
		* 处理普通文本域，返回值为fieldname的value
		*找出任意一个字段的value值
		* */
	public String processFormField(String fieldname) {
		String value = "";
		// 这里采用了枚举类型
		// 返回字段域的值
		//将集合类型专转换成枚举类型
		Iterator<FileItem> iter = items.iterator();
		while (iter.hasNext()) {
			FileItem item = iter.next();
			if (item.isFormField()) {
				String name = item.getFieldName();
				//不区分大小写
				if (name.equalsIgnoreCase(fieldname)) {
					value = item.getString();
				}
			}
		}
		return value;
	}
		/*
		* 处理文件域，path为路径
		* 返回值为重命名后的文件名
		* 把客户端保存到本地服务器
		* */
	public String processUploadedFile(String fieldname, String path) throws Exception {
		File uploadedfile = null;
		Iterator<FileItem> iter = items.iterator();
		String fileName="";
		while (iter.hasNext()) {
			FileItem item = iter.next();
			if (!item.isFormField()) {
				String fieldName = item.getFieldName();
				if (fieldName.equalsIgnoreCase(fieldname)) {
					fileName = item.getName();
					fileName = UUID.randomUUID().toString()//系统随机生成一个随机数，用来存储图片名称，而System.currentTimeMillis()这是获取系统时间
							+ fileName.substring(fileName.lastIndexOf("."), fileName.length());// rename，
					// filename
					uploadedfile = new File(basepath + path + "/" + fileName);

					item.write(uploadedfile);
					return fileName;

				}
			}
		}
		return fileName;
	}
}
