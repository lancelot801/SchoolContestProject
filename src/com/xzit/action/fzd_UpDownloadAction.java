package com.xzit.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionSupport;


import com.xzit.dao.fzd_ContestMessageDao;
import com.xzit.dao.impl.fzd_ContestMessageDaoImpl;

import org.apache.struts2.ServletActionContext;

public class fzd_UpDownloadAction extends ActionSupport {
	private HttpServletResponse response = ServletActionContext.getResponse();
    private static final long serialVersionUID = 1L;
    private List<File> file;// ��Ӧjsp��file��ǩ
    private List<String> fileFileName;//  
    private List<String> fileContentType;//  
    private String fileName;//���jsp��pram����
    private int conId2;//�������
    
  
	public int getConId2() {
		return conId2;
	}

	public void setConId2(int conId2) {
		this.conId2 = conId2;
	}

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@SuppressWarnings("deprecation")
    // �ļ��ϴ�
    public String uploadFile() throws Exception {
		fzd_ContestMessageDao cmdao = new fzd_ContestMessageDaoImpl();
		 //System.out.println("AAAA");
        String root = ServletActionContext.getServletContext().getRealPath(
                "/upload");// �ϴ�·��
        //String contest="\\contestfiles";
        String contest="\\contestfiles"+"\\"+conId2;   //��������
        root=root+contest;
        File outfile = new File(root);
        if(!outfile.isFile()){
            outfile.mkdirs();
      }
       // System.out.println(root);
        InputStream inputStream;
        File destFile;
        OutputStream os;
        for (int i = 0; i < file.size(); i++) {
            inputStream = new FileInputStream(file.get(i));
            destFile = new File(root, this.getFileFileName().get(i));
            os = new FileOutputStream(destFile);
            byte[] buffer = new byte[400];
            int length = 0;
            while ((length = inputStream.read(buffer)) > 0) {
                os.write(buffer, 0, length);
            }
            inputStream.close();
            os.close();
        }
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("fileName", fileFileName);
        
        String filename=fileFileName.toString().replace("[", "").replace("]", "");
        //�ھ�����������ļ�·�����ϴ���·��
        	String filepath="upload/"+"contestfiles/"+conId2+"/"+filename;
        	//String transfilepath=filepath.replace("\\", "\\\\");
        	// dao.addfiles(conId, filepath);
        	//�浽���ݿ���Ҫת��
        	//System.out.println(transfilepath);
        	//System.out.println("upload/"+"contestfiles/"+conId2+"/"+filename);
        	cmdao.uploadfilef(conId2,filepath);
        	//System.out.println(conId2+"conId");
        	return SUCCESS;
    }

    // �ļ�����
    public InputStream getDownloadFile() throws FileNotFoundException,
            UnsupportedEncodingException {
        System.out.println(getFileName());

        // ��������ļ���Ϊ���ģ������ַ�����ת��
        ServletActionContext.getResponse().setHeader("Content-Disposition","attachment;fileName="
                        + java.net.URLEncoder.encode(fileName, "UTF-8"));
        InputStream inputStream = new FileInputStream("D:/"  //ʹ�þ���·�� ���Ӹ�·�����ء�����.txt"�ļ�
                + this.getFileName());
        System.out.println(inputStream);
        return inputStream;
    }

    // ����
    public String downloadFile() throws Exception {
        return SUCCESS;
    }

    public String getFileName() throws UnsupportedEncodingException {
        return fileName;
    }

    public void setFileName(String fileName)
            throws UnsupportedEncodingException {
        this.fileName = new String(fileName.getBytes("ISO8859-1"), "utf-8");
    }
 }