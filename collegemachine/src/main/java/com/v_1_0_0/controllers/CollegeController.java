/**
 * 
 */
package com.v_1_0_0.controllers;

import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.codec.binary.Base64;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.google.gson.Gson;
import com.v_1_0_0.controllerutility.CollegeUtility;

import curiosity.bean_utility.Contact;
import curiosity.college.ccbean.College;
import curiosity.college.ccbean.CollegeMapper;
import curiosity.college.cchelpermapper.FileUpload;
import curiosity.fileUtility.Converter;
import curiosity.tool_utility.MapperBeanUtility;

/**
 * This is the College Controller
 * 
 * @author RITESH SINGH
 * @version 1.0.0, 3 May 2016
 */
@Controller
public class CollegeController {

	/**
	 * This Url use to Go-On college-create page
	 * 
	 * @update RITESH SINGH at 3 May 2016
	 * @author RITESH SINGH
	 * @since version 1.0.0, 3 May 2016
	 * 
	 * @return ModelAndView
	 */
	@RequestMapping(value = { "/collegeCreate" }, method = RequestMethod.GET)
	public ModelAndView collegeCreatePage() {
		
		Map<String,Object> data = new HashMap<String,Object>();
		return new ModelAndView("v_1_0_0/college/create", "data", data);
	}
	
	/**
	 * This Url use to Saved the requested college in MongoDB
	 * 
	 * @update RITESH SINGH at 4 May 2016
	 * @author RITESH SINGH
	 * @since version 1.0.0, 4 May 2016
	 * 
	 * @return ModelAndView
	 */
	@RequestMapping(value = "/collegeSave", method = RequestMethod.POST)
	public ModelAndView showMessage(@ModelAttribute("collegeCreate") CollegeMapper mapper, BindingResult result, HttpServletRequest request) throws Exception {

		Gson gson = new Gson();
		mapper.setImageBase64(Converter.encodeImageIntoBase64(mapper.getFileData()));
		College college = new College();
		MapperBeanUtility.collegeInboundBean(mapper, college);
		college.createCollege();
		String path = request.getContextPath();
		return new ModelAndView("redirect:/.."+path+"/collegeCreate");
	}
	
	/**
	 * This Url use to Go-On college-List page
	 * 
	 * @update RITESH SINGH at 6 May 2016
	 * @author RITESH SINGH
	 * @since version 1.0.0, 6 May 2016
	 * 
	 * @return ModelAndView
	 * @throws UnknownHostException 
	 */
	@RequestMapping(value = { "/collegeList" }, method = RequestMethod.GET)
	public ModelAndView projectListPage() throws UnknownHostException {
		
		Map<String,Object> data = new HashMap<String,Object>();
		data.put("tag", "all");
		return new ModelAndView("v_1_0_0/college/list", "data", data);
	}
	
	/**
	 * This Url use to get the college-List using ajax call
	 * 
	 * @update RITESH SINGH at 6 May 2016
	 * @author RITESH SINGH
	 * @since version 1.0.0, 6 May 2016
	 * 
	 * @return ModelAndView
	 */
	@RequestMapping("/colleges")
	public @ResponseBody String getList(@RequestParam(value="tag")String tag, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		return new Gson().toJson(CollegeUtility.getColleges(tag));
		//return null;
	}
	
	
	/**
	 * This Url use to Go-On college-create page
	 * 
	 * @update RITESH SINGH at 11 May 2016
	 * @author RITESH SINGH
	 * @since version 1.0.0, 11 May 2016
	 * 
	 * @return ModelAndView
	 */
	@RequestMapping(value = { "/uploadcollegeCreate" }, method = RequestMethod.GET)
	public ModelAndView uploadcollegeCreatePage() {
		
		Map<String,Object> data = new HashMap<String,Object>();
		return new ModelAndView("v_1_0_0/college/uploadcreate", "data", data);
	}
	
	/**
	 * This Url use to Saved the requested college in MongoDB
	 * 
	 * @update RITESH SINGH at 11 May 2016
	 * @author RITESH SINGH
	 * @since version 1.0.0, 11 May 2016
	 * 
	 * @return ModelAndView
	 */
	@RequestMapping(value = "/uploadcollegeSave", method = RequestMethod.POST)
	public ModelAndView showMessageD(@ModelAttribute("uploadcollegeCreate") FileUpload mapper, BindingResult result, HttpServletRequest request) throws Exception {

		Gson gson = new Gson();
		
		/*Xlsx read*/
		
		/*try
        {
            FileInputStream file = new FileInputStream(new File("howtodoinjava_demo.xlsx"));
 
            //Create Workbook instance holding reference to .xlsx file
            XSSFWorkbook workbook = new XSSFWorkbook(file);
 
            //Get first/desired sheet from the workbook
            XSSFSheet sheet = workbook.getSheetAt(0);
 
            //Iterate through each rows one by one
            Iterator<Row> rowIterator = sheet.iterator();
            while (rowIterator.hasNext()) 
            {
                Row row = rowIterator.next();
                //For each row, iterate through all the columns
                Iterator<Cell> cellIterator = row.cellIterator();
                 
                while (cellIterator.hasNext()) 
                {
                    Cell cell = cellIterator.next();
                    //Check the cell type and format accordingly
                    switch (cell.getCellType()) 
                    {
                        case Cell.CELL_TYPE_NUMERIC:
                            System.out.print(cell.getNumericCellValue() + "t");
                            break;
                        case Cell.CELL_TYPE_STRING:
                            System.out.print(cell.getStringCellValue() + "t");
                            break;
                    }
                }
                System.out.println("");
            }
            file.close();
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }*/
		
		ByteArrayInputStream bis = new ByteArrayInputStream(mapper.getFileData().getBytes());
        Workbook workbook;
        try {
        	/*Validate the file extension*/
            if (mapper.getFileData().getOriginalFilename().endsWith("xls")) {
                workbook = new HSSFWorkbook(bis);
            } else if (mapper.getFileData().getOriginalFilename().endsWith("xlsx")) {
                workbook = new XSSFWorkbook(bis);
            } else {
                throw new IllegalArgumentException("Received file does not have a standard excel extension.");
            }
            /*Done Fle extension validation*/
            
          //Get first/desired sheet from the workbook
            Sheet sheet = workbook.getSheetAt(0);
            Map<String,Object> head = new HashMap<String,Object>();
            int i = 0;
            for (Row row : sheet) {
            	
            	CollegeMapper collegeMapper = new CollegeMapper();
                collegeMapper.setId("row"+i);
                Contact contact = new Contact();
                i++;
            	
               if(row.getRowNum() == 0){
            	   
            	   Iterator<Cell> cellIterator = row.cellIterator(); 
            	   while (cellIterator.hasNext()) {
                       Cell cell = cellIterator.next();      
                       /*cell value type validate*/
                       
                       switch (cell.getCellType()) 
                       {
                           case Cell.CELL_TYPE_BOOLEAN:
                         	  head.put(String.valueOf(cell.getColumnIndex()), cell.getBooleanCellValue());
                         	  break;
                           case Cell.CELL_TYPE_NUMERIC:
                               head.put(String.valueOf(cell.getColumnIndex()), cell.getNumericCellValue());
                               break;
                           case Cell.CELL_TYPE_STRING:
                               head.put(String.valueOf(cell.getColumnIndex()), cell.getStringCellValue());
                               break; 
                       }
                       
                       /*done cell value type validation*/
                   }
               }
            	
               if (row.getRowNum() != 0) {
                  Iterator<Cell> cellIterator = row.cellIterator();
                  int l = row.getLastCellNum();
                  int f = row.getFirstCellNum();
                  while (cellIterator.hasNext()) {
                      Cell cell = cellIterator.next();
                      /*cell value type validate*/
                      if(head.get(String.valueOf(cell.getColumnIndex())).equals("name")){
                    	  switch (cell.getCellType()) 
                          {
                              case Cell.CELL_TYPE_BOOLEAN:
                            	  collegeMapper.setName(String.valueOf(cell.getBooleanCellValue()));
                            	  break;
                              case Cell.CELL_TYPE_NUMERIC:
                                  collegeMapper.setName(String.valueOf(cell.getNumericCellValue()));
                                  break;
                              case Cell.CELL_TYPE_STRING:
                                  collegeMapper.setName(String.valueOf(cell.getStringCellValue()));
                                  break; 
                          }
                      }else if(head.get(String.valueOf(cell.getColumnIndex())).equals("code")){
                    	  switch (cell.getCellType()) 
                          {
                              case Cell.CELL_TYPE_BOOLEAN:
                            	  collegeMapper.setCode(String.valueOf(cell.getBooleanCellValue()));
                            	  break;
                              case Cell.CELL_TYPE_NUMERIC:
                                  collegeMapper.setCode(String.valueOf(cell.getNumericCellValue()));
                                  break;
                              case Cell.CELL_TYPE_STRING:
                                  collegeMapper.setCode(String.valueOf(cell.getStringCellValue()));
                                  break; 
                          }
                      }else if(head.get(String.valueOf(cell.getColumnIndex())).equals("lat")){
                    	  switch (cell.getCellType()) 
                          {
                              case Cell.CELL_TYPE_BOOLEAN:
                            	  collegeMapper.setLatitude(String.valueOf(cell.getBooleanCellValue()));
                            	  break;
                              case Cell.CELL_TYPE_NUMERIC:
                                  collegeMapper.setLatitude(String.valueOf(cell.getNumericCellValue()));
                                  break;
                              case Cell.CELL_TYPE_STRING:
                                  collegeMapper.setLatitude(String.valueOf(cell.getStringCellValue()));
                                  break; 
                          }
                      }else if(head.get(String.valueOf(cell.getColumnIndex())).equals("lng")){
                    	  switch (cell.getCellType()) 
                          {
                              case Cell.CELL_TYPE_BOOLEAN:
                            	  collegeMapper.setLongitude(String.valueOf(cell.getBooleanCellValue()));
                            	  break;
                              case Cell.CELL_TYPE_NUMERIC:
                                  collegeMapper.setLongitude(String.valueOf(cell.getNumericCellValue()));
                                  break;
                              case Cell.CELL_TYPE_STRING:
                                  collegeMapper.setLongitude(String.valueOf(cell.getStringCellValue()));
                                  break; 
                          }
                      }else if(head.get(String.valueOf(cell.getColumnIndex())).equals("email")){
                    	  switch (cell.getCellType()) 
                          {
                              case Cell.CELL_TYPE_BOOLEAN:
                            	  contact.setEmail(String.valueOf(cell.getBooleanCellValue()));
                            	  break;
                              case Cell.CELL_TYPE_NUMERIC:
                                  contact.setEmail(String.valueOf(cell.getNumericCellValue()));
                                  break;
                              case Cell.CELL_TYPE_STRING:
                                  contact.setEmail(String.valueOf(cell.getStringCellValue()));
                                  break; 
                          }
                      }else if(head.get(String.valueOf(cell.getColumnIndex())).equals("mob")){
                    	  switch (cell.getCellType()) 
                          {
                              case Cell.CELL_TYPE_BOOLEAN:
                            	  contact.setMobile(String.valueOf(cell.getBooleanCellValue()));
                            	  break;
                              case Cell.CELL_TYPE_NUMERIC:
                                  contact.setMobile(String.valueOf(cell.getNumericCellValue()));
                                  break;
                              case Cell.CELL_TYPE_STRING:
                                  contact.setMobile(String.valueOf(cell.getStringCellValue()));
                                  break; 
                          }
                      }else if(head.get(String.valueOf(cell.getColumnIndex())).equals("address")){
                    	  switch (cell.getCellType()) 
                          {
                              case Cell.CELL_TYPE_BOOLEAN:
                            	  collegeMapper.setAddress(String.valueOf(cell.getBooleanCellValue()));
                            	  break;
                              case Cell.CELL_TYPE_NUMERIC:
                                  collegeMapper.setAddress(String.valueOf(cell.getNumericCellValue()));
                                  break;
                              case Cell.CELL_TYPE_STRING:
                                  collegeMapper.setAddress(String.valueOf(cell.getStringCellValue()));
                                  break; 
                          }
                      }
                      
                      collegeMapper.setContact(contact);
                      /*done cell value type validation*/
                  }
                  
                  /*Going To insert into mongodb*/
                  College college = new College();
          		  MapperBeanUtility.collegeInboundBean(collegeMapper, college);
          		  college.setId("up"+college.getCreateInfo().getTime());
          		  college.set_id("up"+college.getCreateInfo().getTime());
          		  college.createCollege();
          		  /*Done creation*/
               }
            }

        } catch (IOException e) {
            e.printStackTrace();
        }
		/*Done reading*/
        
		String path = request.getContextPath();
		return new ModelAndView("redirect:/.."+path+"/collegeCreate");
	}
}