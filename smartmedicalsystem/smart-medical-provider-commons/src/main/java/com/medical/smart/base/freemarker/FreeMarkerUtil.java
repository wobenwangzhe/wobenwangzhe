package com.medical.smart.base.freemarker;


import com.medical.smart.system.admin.pojo.entity.Admin;
import freemarker.template.Configuration;
import freemarker.template.Template;
import jdk.nashorn.internal.ir.SplitReturn;
import org.apache.commons.configuration.interpol.ConfigurationInterpolator;
import org.springframework.util.ResourceUtils;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FreeMarkerUtil {
	/**
	 * <b>使用freemarker复制模板</b>
	 * @param entity
	 * @return
	 */
	public static boolean doFreeMarker(Entity entity){

		// 创建 Freemarker Configuration 对象
		Configuration config = new Configuration(Configuration.VERSION_2_3_31);
		//文件保存路径
		String pathStr = entity.getPackageName().replace(".", "/")+"/";
		try {
			//获得模版文件所在文件夹目录
			String freeMarkerPath = ResourceUtils.getURL("classpath:").getPath() + "freemarker";
			//F:/smartmedicalsystem/smartmedicalsystem/smart-medical-provider-commons/target/classes/freemarker
			System.out.println("模板所在路径:"+freeMarkerPath);
			//设定 Freemarker Configuration的模板路径
			config.setDirectoryForTemplateLoading(new File(freeMarkerPath));
			//设定生成的文件编码格式
			config.setDefaultEncoding("UTF-8");
			//设定所需要生成目标文件的 freemarker 目标是哪个
			Template template =config.getTemplate("entity.ftl");

			String targetPath = ResourceUtils.getURL("classpath:").getPath();
			targetPath=targetPath.substring(0, targetPath.indexOf("target/classes/"));
			///F:/smartmedicalsystem/smartmedicalsystem/smart-medical-provider-commons/
			targetPath = targetPath + "src/main/java/"+pathStr;
			System.out.println("生成文件位置:"+targetPath);

			//根据路径和生成文件创建对应的File文件
			File targetFile = new File(targetPath+entity.getClassName()+".java");
			// 根据 File 创建 BufferedWriter 对象
			BufferedWriter bw = new BufferedWriter(new FileWriter(targetFile));

			// 使用 Freemarker 生成对应的文件
			template.process(entity, bw);
			bw.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
