package com.codeplanet;

import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.imageio.ImageIO;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.pdfbox.multipdf.PDFMergerUtility;
import org.apache.pdfbox.multipdf.Splitter;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.encryption.AccessPermission;
import org.apache.pdfbox.pdmodel.encryption.StandardProtectionPolicy;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.apache.pdfbox.text.PDFTextStripper;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.codeplanet.model.User;
import com.codeplanet.model.UserFile;
import com.codeplanet.service.HomeService;

@Controller
public class AppController {
	@Autowired
	HomeService homeService;
	@RequestMapping(value="/register" )
	public String ashu(HttpServletRequest req,User user ) throws SQLException
	{  System.out.println("controller start for signup");
		homeService.insertInfo(user);
		System.out.println("controller end for signup");
		return "login";
	}
	@RequestMapping(value="/login")
	public String ashu1(HttpServletRequest req,User user) throws SQLException
	{  System.out.println("controller start for login");
	   if(homeService.check(user,req)==true)
	   { 
		 return "login_successful" ; 
	   }
	   else
	   {
		   return "login_failed"; 
	   }
	}
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest req,User user) throws SQLException
	{  System.out.println("controller start for logout");
	   HttpSession hs = req.getSession();
	   hs.invalidate();
	   return "index";
	   
	}  
	private String getMImeType(String filepath) {
        String file =filepath.toLowerCase();
        if(file.endsWith(".jpg")==true||file.endsWith(".jpeg")==true||file.endsWith(".png")==true)
        	return "image/jpeg";
        else if(file.endsWith(".pdf")==true)
        	return "application/pdf";
        else if(file.endsWith(".zip")==true)
        	return "application/zip";
        else 
        	return "other";
	}
	private ArrayList<String> uploadFileOnServer(UserFile user,HttpSession session) throws IOException {
		String sessionId = session.getId();
		sessionId = sessionId.substring(0, 5);
		String rootdirectory = "E:/files/user"+sessionId;   // where we want to save!
		File directory = new File(rootdirectory);
		directory.mkdirs();
		MultipartFile[] filedata = user.getUserfile();   //all the media data saved in multipart file!
		ArrayList<String>array = new  ArrayList<String>();
		for(MultipartFile filedata1:filedata)
		{
		String filename = filedata1.getOriginalFilename();
		String filepath=null;
		if(getMImeType(filename).equals("application/pdf")==false)
			throw new RuntimeException();
		if(filename!=null&&filename.length()>0)
		{  
			filepath =directory.getCanonicalPath()+File.separator+filename;
			BufferedOutputStream bf = new BufferedOutputStream(new FileOutputStream(filepath));
			bf.write(filedata1.getBytes());
			bf.flush();
			bf.close();
		
		}
		array.add(filepath);
		}
		return array;
	}
	// to download file from any server location!
	@RequestMapping(value="/download")
	public String download(HttpServletRequest req,HttpServletResponse res, HttpSession session) throws IOException 
	{   
		String mimetype  = null;
		String filepath= req.getParameter("filepath");
		try {
		mimetype = getMImeType(filepath);
		}
		catch(Exception e) {
			return "index";
		}
		res.setContentType(mimetype);
		File f = new File(filepath);
		res.setHeader("Content-Disposition", "filename=" + filepath);  //uses for set name of download file & download the file without interruted!
		FileInputStream fis = new FileInputStream(f);
		ServletOutputStream sos = res.getOutputStream();
		//byte[] b = new  byte[(int)f.length()];
		/*fis.read(b);
		sos.write(b);
		sos.flush();
		fis.close();
		sos.close();*/
		    IOUtils.copy(fis,sos);
			fis.close();
			sos.close();
			System.out.println("coloslredfrnd");
			deleteFile(new File("E:/files/user"+session.getId().substring(0,5)+""));
			return "index";
	}
	private void deleteFile(File f) throws IOException
    {
    	System.out.println(f);
    	if(f.isDirectory()==true&&f.delete()==false) {
 	    for (File subFile : f.listFiles())
 	    subFile.delete();
 	    f.delete();
    	}
    	else
    	f.delete();	
    }
	//// for merger pdf file!
	@PostMapping(value="/merge")
	public String merger(HttpServletRequest req,UserFile user,HttpSession session) throws IOException
	{   ArrayList<String> filepath;
		try
	    { filepath = uploadFileOnServer(user, session);
	    }
		catch(Exception e)
		{
			return "merge_pdf";
		}
		String sessionId = session.getId().substring(0,5);
		PDFMergerUtility pdf= new PDFMergerUtility();   
	    File f1 = new File("E:/files/user"+sessionId+"/merge.pdf");
	    f1.createNewFile();
	    pdf.setDestinationFileName(f1.getCanonicalPath());
		for(String f:filepath) {
		pdf.addSource(f);
		System.out.println("pdf merge");
		}
		pdf.mergeDocuments(null);
		for(String file:filepath)
		{   deleteFile(new File(file));	
		}
		req.setAttribute("filepath",f1.getCanonicalPath());
		return "download";
	}
	//// we can insert pdf file path in database!
/*	@RequestMapping(value="/test1",method=RequestMethod.POST)
	public String insertMediaFile(HttpServletRequest req,UserFile user) throws SQLException, IOException
	{  
		ArrayList<String> filepath = uploadFileOnServer(user);
		merger(filepath,req);
		return "index";
		
	} 
*/
	@PostMapping("/splitter")
    public String splitter(HttpServletResponse res,HttpServletRequest req,UserFile user,HttpSession session) throws IOException
    {   ArrayList<String> filePath;
	try
    { filePath = uploadFileOnServer(user, session);
    }
	catch(Exception e)
	{   req.setAttribute("message","file format is not up to date.");
		return "split_pdf";
	}
	    Iterator<String> it1 = filePath.iterator();
	    String str = it1.next();
		File f = new File(str);
		String password = user.getC();
		PDDocument pd = PDDocument.load(f,password);   // static method to do this!
		Splitter sp = new Splitter();
		List<PDDocument> pd1 = sp.split(pd);
		Iterator<PDDocument> it = pd1.listIterator();
		int i=0;
		List<String> filepaths = new ArrayList<String>();
		File folder = new File("e:/files/user"+session.getId().substring(0,5)+"/split"); // To create split folder
		folder.mkdirs();
		while(it.hasNext())
		{   i++;
			PDDocument pd2  = it.next();
			String s = "e:/files/user"+session.getId().substring(0,5)+"/split/"+i+".pdf";
			pd2.save(s);
			filepaths.add(s);
		}
		pd.close();
		 String zipFileName = zipFiles(filepaths, session);
	    req.setAttribute("filepath",zipFileName);	
	    
	    for(String file:filePath)
		{   deleteFile(new File(file));	
		}
		return "download";
    }
	private String zipFiles(List<String> filepaths,HttpSession session) throws IOException {
		String zipFileName = "E:/files/user"+session.getId().substring(0,5)+"/splitter.zip";
		FileOutputStream fos = new FileOutputStream(zipFileName);
	    ZipOutputStream zos = new ZipOutputStream(fos);  // present in util package!
	    for(String s: filepaths)
	    {
	    	zos.putNextEntry(new ZipEntry(new File(s).getName()));
	    	byte[] bytes = Files.readAllBytes(Paths.get(s));
	    	zos.write(bytes);
	    	zos.closeEntry(); // current entry will close at this type,after this new entry will be created!
	    }
	    zos.close();
	    fos.close();
	    // To delete split folder
	   deleteFile(new File("E:/files/user"+session.getId().substring(0,5)+"/split"));
	   return zipFileName;
 
	}
	   
	@PostMapping("/extract")
	public String extract(HttpServletRequest req,UserFile user,HttpServletResponse res, HttpSession session ) throws IOException
	{  ArrayList<String> filePath;
	try
    { filePath = uploadFileOnServer(user, session);
    }
	catch(Exception e)
	{
		req.setAttribute("message","file format is not up to date.");
		return "text_pdf";
	}
        Iterator<String> it1 = filePath.iterator();
    String str = it1.next();
	File f = new File(str);
	String password = user.getC();
	PDDocument pd = PDDocument.load(f,password); 
		PDFTextStripper text = new PDFTextStripper();
		String s  = text.getText(pd);       // just like a read method
		PrintWriter pw = res.getWriter();
		pw.write(s);
		pd.close();
		 for(String file:filePath)
			{   deleteFile(new File(file));	
			}
		 deleteFile(new File("E:/files/user"+session.getId().substring(0,5)+""));
		return null;
	}
	@PostMapping("/remove")
	public String removePage(HttpServletRequest req,UserFile user,HttpServletResponse res, HttpSession session) throws IOException
	{
		 ArrayList<String> filePath;
		
			try
		    { filePath = uploadFileOnServer(user,session);
		    }
			catch(Exception e)
			{req.setAttribute("message","Warning:-------file format is not up to date.");
			return "remove_pdf";
			}
    Iterator<String> it1 = filePath.iterator();
         String str = it1.next();
         File f = new File(str);
        String password = user.getC();
		PDDocument pd = PDDocument.load(f,password);
		int total = pd.getNumberOfPages();
		int from,to;
		// if page number is not valid!
		try
		{    from = Integer.parseInt(user.getA())-1;
             to  = Integer.parseInt(user.getB())-1;
			if(from<0||to<0||from>=total||to>=total)
				throw new RuntimeException();
		}
		catch(Exception e)
		{  
			req.setAttribute("message","Warning:-------something went wrong with range.");
			return "remove_pdf";
		}
		System.out.println(total);
		for(int i=from;i<=to;i++)
		{
			pd.removePage(from); 
		}
		pd.save("E:/files/user"+session.getId().substring(0,5)+"/remove.pdf");
		pd.close();
		 for(String file:filePath)
			{   deleteFile(new File(file));	
			}
		req.setAttribute("filepath","E:/files/user"+session.getId().substring(0,5)+"/remove.pdf");
		return "download";
	}
	@PostMapping("/pdfToImage")
	public String pdfToImage(HttpServletRequest req,UserFile user,HttpServletResponse res, HttpSession session) throws IOException
	{  ArrayList<String> filePath;
	try
    { 
		filePath = uploadFileOnServer(user,session);
            // if someone upload string as a number!
    }
	catch(Exception e)
	{req.setAttribute("message","Warning:-----------pdf format is not valid.");
	return "pdf_to_image";
	}
        Iterator<String> it1 = filePath.iterator();
      String str = it1.next();
        File f = new File(str);
     
        String password = user.getC();
		PDDocument pd = PDDocument.load(f,password);
		int total = pd.getNumberOfPages();
		int pageNumber;
		// To check page number of pdf!
		try
		{   pageNumber  = Integer.parseInt(user.getA())-1;
			if(pageNumber<0||pageNumber>=total)
				throw new RuntimeException();
		}
		catch(Throwable e)
		{
			req.setAttribute("message","Warning:---------Something went wrong with page number.");
			return "pdf_to_image";
		}
		PDFRenderer pr = new PDFRenderer(pd);
		BufferedImage img = pr.renderImage(pageNumber);  //  argument is index of page in pdf
		File f1 = new File("E:/files/user"+session.getId().substring(0,5)+"/image.jpg");
		f1.createNewFile();
		ImageIO.write(img,"JPEG",f1 );
		 for(String file:filePath)
			{   deleteFile(new File(file));	
			}
		req.setAttribute("filepath",f1.getCanonicalPath());
		pd.close();
		return "download";
	}
	@PostMapping("/protect")
	public String protect(HttpServletRequest req,UserFile user,HttpServletResponse res, HttpSession session) throws IOException
	{    ArrayList<String> filePath;
	try
    { filePath = uploadFileOnServer(user,session);
    }
	catch(Exception e)
	{
		req.setAttribute("message","file format is not up to date.");
		return "protect_pdf";
	}
         Iterator<String> it1 = filePath.iterator();
         String str = it1.next();
         
         
         String pwd = user.getA();
		File f = new File(str);
		PDDocument pd = PDDocument.load(f);
		AccessPermission ap = new AccessPermission() ;
		StandardProtectionPolicy policy = new StandardProtectionPolicy("code????",pwd, ap);  // always use special character!
		policy.setEncryptionKeyLength(128);
		policy.setPermissions(ap);
	    	pd.protect(policy);
	    	pd.save("E:/files/user"+session.getId().substring(0,5)+"/protected.pdf");
	    	pd.close();
	    	 for(String file:filePath)
	 		{   deleteFile(new File(file));	
	 		}
	    	req.setAttribute("filepath","E:/files/user"+session.getId().substring(0,5)+"/protected.pdf");
			return "download";
     }
	@PostMapping("/unlock")
	public String unlock(UserFile user,HttpServletResponse res,HttpServletRequest req, HttpSession session) throws IOException
	{   ArrayList<String> filePath;
	try
    { filePath = uploadFileOnServer(user,session);
    }
	catch(Exception e)
	{req.setAttribute("message","file format is not up to date.");
	return "unlock_pdf";
	}
    Iterator<String> it1 = filePath.iterator();
    String str = it1.next();
       str = str.trim();
       String pwd = user.getA();
       pwd = pwd.trim();
		File f = new File(str);
		PDDocument pd = PDDocument.load(f,pwd);
	   pd.setAllSecurityToBeRemoved(true);
	   pd.save("E:/files/user"+session.getId().substring(0,5)+"/unlock.pdf");
	   pd.close();
	   for(String file:filePath)
		{   deleteFile(new File(file));	
		}
	   req.setAttribute("filepath","E:/files/user"+session.getId().substring(0,5)+"/unlock.pdf");
   
		return "download";
	}
	
	@RequestMapping("sendemail")
	public String email() throws AddressException, MessagingException, IOException {
		
		Properties p= new Properties();
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.EnableSSL.enable", "true");
		p.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.socketFactory.port", "465");
		Session session=Session.getInstance(p, new SimpleAuthenticator("ashuman241@gmail.com","Radhe?????"));
		Message msg=new MimeMessage(session);
		msg.setFrom(new InternetAddress("ashuman241@gmail.com"));
		msg.setRecipient(Message.RecipientType.TO, new InternetAddress("ashuman231@gmail.com"));
		msg.setSubject("email sending application");
		msg.setContent("hello i am ashu", "text/html");
		File f = new File("E:/files/merge/ee.pdf");
		 Multipart multi = new MimeMultipart();
	     DataSource fds = new FileDataSource(f);
         BodyPart fileBodyPart = new MimeBodyPart();
         fileBodyPart.setDataHandler(new DataHandler(fds));
         fileBodyPart.setFileName("download.pdf");
	     multi.addBodyPart(fileBodyPart);
		msg.setContent(multi);
		Transport.send(msg);
		return  "index1";
	}   
	    @RequestMapping("/loginPage")
		public String loginCall()
		{
			return "login";
		}
	    @RequestMapping("/signupPage")
		public String signupCall()
		{
			return "signup";
		}
	    @RequestMapping("/splitPage")
		public String splitCall()
		{
			return "split_pdf";
		}
	    @RequestMapping("/protectPage")
	    public String protectPdf()
	    {
	    	return "protect_pdf";
	    }
	    @RequestMapping("/unlockPage")
	    public String unlockPdf()
	    {
	    	return "unlock_pdf";
	    }
	    @RequestMapping("/removePage")
	    public String removePdf()
	    {
	    	return "remove_pdf";
	    }
	    @RequestMapping("/textPage")
	    public String textPdf()
	    {
	    	return "text_pdf";
	    }
	    @RequestMapping("/imagePage")
	    public String imagePdf()
	    {
	    	return "pdf_to_image";
	    }
	    @RequestMapping("/mergePage")
	    public String mergePdf()
	    {
	    	return "merge_pdf";
	    }
	    @RequestMapping("/indexPage")
	    public String indexPdf()
	    {
	    	return "index";
	    }
	    
}
