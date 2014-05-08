package com.university.universityclient.test;

import java.net.URL;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.internal.Coordinates;
import org.openqa.selenium.internal.Locatable;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class University_ClientTest  {
	protected WebDriver driver;
	protected WebDriverWait wait;
	protected RemoteWebDriver driver2;





//	@Test
//	public void CRconfiguration() throws Exception {
//	    System.setProperty("webdriver.chrome.driver","C:/chromedriver_win32/chromedriver.exe");
//	    driver = new ChromeDriver();
//	    testAPI();
//	}
//	
//	@Test
//	public void FFconfiguration() throws Exception {
//	    driver = new FirefoxDriver();
////		wait = new WebDriverWait(driver, 30);
//
//	    testAPI();
//	}
//	
//	@Test
//	public void IEconfiguration() throws Exception {
//	    System.setProperty("webdriver.ie.driver",
//	    "C:/IEDriverServer.exe");
//	    driver = new InternetExplorerDriver();
//	    testAPI();
//	}
	@BeforeClass
	public void mobileConfiguration() throws Exception {
		driver=(RemoteWebDriver)driver;
		DesiredCapabilities capabilities = new DesiredCapabilities();
		capabilities.setCapability("device","Android");
	    capabilities.setCapability("app", "Chrome");
	    capabilities.setCapability(CapabilityType.BROWSER_NAME, "");
	    capabilities.setCapability(CapabilityType.VERSION, "4.2.2");
	    capabilities.setCapability(CapabilityType.PLATFORM, "WINDOWS");
		driver = new RemoteWebDriver(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
//	    testAPI();
	}
	
	

	@Test
	public void testAPI() throws InterruptedException
	{
		try{
		
		wait = new WebDriverWait(driver, 30);
		driver.get("http://universityclient.team-sjsu.cloudbees.net/");
//	    driver.get("http://www.yahoo.com");
		 Thread.sleep(5000);

		 WebElement userName = driver.findElement(By.xpath(".//*[@id='email']"));
		 userName.sendKeys("vaib.da.great@gmail.com");
		 WebElement password = driver.findElement(By.xpath(".//*[@id='password']"));
		 password.click();
		 password.sendKeys("123");
		 WebElement sigIn = driver.findElement(By.xpath("html/body/div[2]/div/div/div/div[2]/form/div[4]/div/button[1]"));
		 sigIn.click();
		 Thread.sleep(8000);
//		 WebElement element = wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("html/body/div[4]/div/div[1]/div[2]/a[3]")));
		
		 
		 //Search By Name
		 
//		 WebElement searchByName = driver.findElement(By.xpath(".//*[@id='univ_name']"));
//		 searchByName.click();
//		 searchByName.sendKeys("Stanford University");
////		 searchByName.click();
//		 Thread.sleep(2000);
//
//		 
////		 WebElement searchBtn = driver.findElement(By.xpath("html/body/div[4]/div/div[1]/div[3]/form[1]/div/div[2]/button"));
////		 searchBtn.click(); 
//		 
//		 //Search By Branch
//
//		 WebElement searchByBranch = driver.findElement(By.xpath(".//*[@id='branch_name']"));
//		 searchByBranch.click();
//		 searchByBranch.sendKeys("Engineering");
		 
		 
//		 //Search By State
//
//		 WebElement searchByState = driver.findElement(By.xpath(".//*[@id='state_name']"));
//		 searchByState.click();
//		 searchByState.sendKeys("CA");
//		 
//		 
//		 WebElement searchBtn = driver.findElement(By.xpath("html/body/div[4]/div/div[1]/div[3]/form[3]/div/div[2]/button"));
//		 searchBtn.click();
//		 
//		 //Selecting USC
//		 Thread.sleep(3000);
//		 
//		 WebElement detailsBtn= driver.findElement(By.xpath("html/body/div[2]/div/div[2]/table/tbody/tr[3]/td[3]/form/button"));
//		 detailsBtn.click();		
//		  Thread.sleep(3000);
//
////		 WebElement detailsBtn = driver.findElement(By.cssSelector("button[value='University of Southern California']"));
////		 detailsBtn.click();
//		 
//		 WebElement finTab = driver.findElement(By.xpath(".//*[@id='myTab']/li[2]/a"));
//		 finTab.click();		
//		  Thread.sleep(3000);
//
//		 
//		 WebElement enrollTab = driver.findElement(By.xpath(".//*[@id='myTab']/li[3]/a"));
//		 enrollTab.click();
//		  Thread.sleep(3000);
//
//		 
//		 //Back To Home
//		 WebElement homeTab = driver.findElement(By.xpath("html/body/div[1]/div/div[2]/ul/li[1]/a"));
//		 homeTab.click();
//		  Thread.sleep(3000);

		 
		 
		 
		 //Compare
		 WebElement compUniv = driver.findElement(By.xpath("html/body/div[4]/div/div[1]/div[2]/a[3]"));
		 compUniv.click();
//		 JavascriptExecutor js = (JavascriptExecutor)driver;
//		 js.executeScript("window.scrollTo(0,Math.max(document.documentElement.scrollHeight," + "document.body.scrollHeight,document.documentElement.clientHeight));");
//		 
//		  WebElement univ1 = driver.findElement(By.xpath("html/body/form/div/table/thead/tr[6]/td[1]]"));
		  WebElement univ1 = driver.findElement(By.cssSelector("input[value='104151']"));
		  Coordinates coordinate1 =((Locatable)univ1).getCoordinates();
		  coordinate1.inViewPort();
		  univ1.click();
		  Thread.sleep(3000);

		  WebElement univ2 = driver.findElement(By.cssSelector("input[value='196130']"));
		  Coordinates coordinate2 =((Locatable)univ2).getCoordinates();
		  coordinate2.inViewPort();
		  univ2.click();
		  Thread.sleep(3000);


		  WebElement univ3 = driver.findElement(By.cssSelector("input[value='139755']"));
		  Coordinates coordinate3 =((Locatable)univ3).getCoordinates();
		  coordinate3.inViewPort();
		  univ3.click();
		  Thread.sleep(3000);

		  WebElement univ4 = driver.findElement(By.cssSelector("input[value='122755']"));
		  Coordinates coordinate4 =((Locatable)univ4).getCoordinates();
		  coordinate4.inViewPort();
		  univ4.click();
		  Thread.sleep(3000);

//		  WebElement univ5 = driver.findElement(By.cssSelector("input[value='123961']"));
//		  Coordinates coordinate5 =((Locatable)univ5).getCoordinates();
//		  coordinate5.inViewPort();
//		  univ5.click();
//		  Thread.sleep(3000);

//		  WebElement univ6 = driver.findElement(By.cssSelector("input[value='243744']"));
//		  Coordinates coordinate6 =((Locatable)univ6).getCoordinates();
//		  coordinate6.inViewPort();
//		  univ6.click();
//		Thread.sleep(6000);
		  
		  
		  
		WebElement compBtn = driver.findElement(By.xpath("html/body/form/button"));
	    compBtn.click();
		  Thread.sleep(4000);

		  WebElement admission = driver.findElement(By.xpath("html/body/ul/li[2]/a"));
		  admission.click();
			Thread.sleep(4000);

		  WebElement fAid = driver.findElement(By.xpath("html/body/ul/li[3]/a"));
		  fAid.click();
			Thread.sleep(4000);

		  WebElement department = driver.findElement(By.xpath("html/body/ul/li[4]/a"));
		  department.click();
			Thread.sleep(4000);

//		  WebElement backBtn = driver.findElement(By.xpath("html/body/form/button"));
//		  backBtn.click();
//		  Thread.sleep(3000);
		  
//		  WebElement home = driver.findElement(By.xpath("html/body/div[1]/div/div[2]/ul/li[1]/a"));
//		  home.click();
//		  Thread.sleep(3000);
//		  
//		  WebElement compBtn = driver.findElement(By.xpath("html/body/form/button"));
//		  compBtn.click();
//		 
		  
		 //Back to Home
		  WebElement homeComp = driver.findElement(By.xpath("html/body/div[1]/div/div[2]/ul/li[1]/a"));
		  homeComp.click();		  
		 
		 //Get Recommendation
		 WebElement getReco = driver.findElement(By.xpath("html/body/div[4]/div/div[1]/div[2]/a[2]"));
		 getReco.click();
		 
		  Thread.sleep(5000);

		 //LogOut
		 WebElement logout = driver.findElement(By.xpath("html/body/div[1]/div/div[2]/ul/li[2]/a"));
		 logout.click();
		
			
		
//		  WebElement univ2 = driver.findElement(By.xpath("html/body/form/div/table/thead/tr[54]/td[1]"));
//		  univ2.click();
//		  WebElement univ3 = driver.findElement(By.xpath("html/body/form/div/table/thead/tr[121]/td[1]"));
//		  univ3.click();
//		  WebElement univ4 = driver.findElement(By.xpath("html/body/form/div/table/thead/tr[150]/td[1]"));
//		  univ4.click();
//		  WebElement univ5 = driver.findElement(By.xpath("html/body/form/div/table/thead/tr[166]/td[1]"));
//		  univ5.click();
//		  WebElement univ6 = driver.findElement(By.xpath("html/body/form/div/table/thead/tr[245]/td[1]"));
//		 WebElement univ6 = driver.findElement(By.cssSelector("input[value='104151']"));
//		 

//		  univ6.click();


		  
		  
		  
		  
		  
		  
//		 WebElement discussion = driver.findElement(By.xpath("html/body/div[2]/div/div[1]/div[1]/a[2]"));
//		 discussion.click();
//		 //Discussion Board
//		 WebElement loginLink = driver.findElement(By.xpath(".//*[@id='login']"));
//		 loginLink.click();
//		 
//		 WebElement fUserName = driver.findElement(By.xpath(".//*[@id='loginform']/table[2]/tbody/tr[2]/td/table/tbody/tr[2]/td[2]/input"));
//		 fUserName.sendKeys("admin");
//		 WebElement fPassword = driver.findElement(By.xpath(".//*[@id='loginform']/table[2]/tbody/tr[2]/td/table/tbody/tr[3]/td[2]/input"));
//		 fPassword.click();
//		 fPassword.sendKeys("admin");
//		 Thread.sleep(3000);
//
//		 WebElement loginBtn = driver.findElement(By.xpath(".//*[@id='loginform']/table[2]/tbody/tr[2]/td/table/tbody/tr[5]/td/input[2]"));
//		 loginBtn.click();
//		 
//		 Thread.sleep(3000);
//
//		 WebElement searchLink = driver.findElement(By.xpath(".//*[@id='search']/b"));
//		 searchLink.click();
//		 Thread.sleep(3000);
//
//		 WebElement searchTerm = driver.findElement(By.xpath(".//*[@id='formSearch']/table[2]/tbody/tr[2]/td[2]/p/span/input[1]"));
//		 searchTerm.click();
//		 searchTerm.sendKeys("university");
//		 Thread.sleep(3000);
//		 WebElement searchBtn = driver.findElement(By.xpath(".//*[@id='formSearch']/table[2]/tbody/tr[5]/td/input"));
//		 searchBtn.click();
//		 Thread.sleep(3000);
//
//		 WebElement msg = driver.findElement(By.xpath("html/body/table/tbody/tr[2]/td/table/tbody/tr/td/table[2]/tbody/tr[2]/td/div/a"));
//		 msg.click();
//		 
//		 Thread.sleep(3000);
//
//		WebElement logout= driver.findElement(By.xpath(".//*[@id='logout']"));
//		 logout.click();
		 
		 
		 //add topic to university ranking
//		 WebElement testForum = driver.findElement(By.xpath("html/body/table/tbody/tr[2]/td/table/tbody/tr/td/table[2]/tbody/tr[3]/td[2]/span[1]/a"));
//		 testForum.click();
//		 
//		 WebElement forum1 = driver.findElement(By.xpath(".//*[@id='formModeration']/table/tbody/tr[2]/td[2]/span/a"));
//		 forum1.click();
//		 
		 
		 
//		 WebElement agree = driver.findElement(By.xpath("html/body/table/tbody/tr[2]/td/table/tbody/tr[3]/td/input[1]"));
//		 agree.click();
		 
		 
		 
		 
		 System.out.println("Page Title is " + driver.getTitle());
//		Assert.assertEquals("Welcome to Disha - A University Recommendation System", driver.getTitle());
		Thread.sleep(5000);
		driver.close();
//		driver.quit();
		}
		
		catch(Exception e)
		{
//			driver.close();
//			driver.quit();


		}

	}


}
