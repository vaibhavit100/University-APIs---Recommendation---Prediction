package com.cmpe295.university.test;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.By;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
public class UniversityAPITest{
protected WebDriver driver;


//	@Test
//	public void FFconfiguration() throws Exception {
//	    driver = new FirefoxDriver();
//	    testAPI();
//	}

//	@Test
//	public void CRconfiguration() throws Exception {
//	    System.setProperty("webdriver.chrome.driver","C:/chromedriver_win32/chromedriver.exe");
//	    driver = new ChromeDriver();
//	    testAPI();
//	}
//	
//	@Test
//	public void androidConfiguration() throws Exception {
//		driver=(RemoteWebDriver)driver;
//		DesiredCapabilities capabilities = new DesiredCapabilities();
//		capabilities.setCapability("device","Android");
//	    capabilities.setCapability("app", "Chrome");
//	    capabilities.setCapability(CapabilityType.BROWSER_NAME, "");
//	    capabilities.setCapability(CapabilityType.VERSION, "4.4.2");
//	    capabilities.setCapability(CapabilityType.PLATFORM, "WINDOWS");
//		driver = new RemoteWebDriver(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
//	    testAPI();
//	}
//	
	
	
	
	
	@Test
	public void iosConfiguration() throws Exception {
//		driver=(RemoteWebDriver)driver;
        String myApp = "/Users/testing/Library/Developer/Xcode/DerivedData/SafariLauncher-coidnmjoofuxfnayfnsfoispntmz/Build/Products/Debug-iphoneos/SafariLauncher.app";
		DesiredCapabilities capabilities = new DesiredCapabilities();
	    capabilities.setCapability("app", "safari");
		capabilities.setCapability("device","iPad");

//	    capabilities.setCapability(CapabilityType.BROWSER_NAME, "");
	    capabilities.setCapability(CapabilityType.VERSION, "7.0");
//	    capabilities.setCapability(CapabilityType.PLATFORM, "Mac");
		driver = new RemoteWebDriver(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
	    testAPI();
	}
//	
//	
//	@Test
//	public void IEconfiguration() throws Exception {
//	    System.setProperty("webdriver.ie.driver",
//	    "C:/IEDriverServer.exe");
//	    driver = new InternetExplorerDriver();
//	    testAPI();
//	}
	
	public void testAPI() throws InterruptedException
	{
		// Create a new instance of the Firefox driver

		driver.get("http://universityapi.vaibhav28.cloudbees.net/");
		System.out.println("Page Title is " + driver.getTitle());
		Assert.assertEquals("US Universities- API for developers", driver.getTitle());
		Thread.sleep(5000);
		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityInfo");
		Thread.sleep(5000);

//		//	driver.get("http://universityapi.vaibhav28.cloudbees.net/");
//		//	Thread.sleep(5000);
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByName?univName=San Jose State");
//		Thread.sleep(5000);
//
//		//	driver.get("http://universityapi.vaibhav28.cloudbees.net/");
//		//	Thread.sleep(5000);
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByCity?city=San Jose");
//		Thread.sleep(5000);
//		
//		//	driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByState?state=CA");
//		//	Thread.sleep(5000);
//		//
//		//	driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByZip?zip=95112");
//		//	Thread.sleep(5000);
//		//		
//		//	driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityInfoByCountyName?countyName=Santa Clara");
//		//	Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getAllEnrollCourse");
//		Thread.sleep(5000);
//
//		//	driver.get("http://universityapi.vaibhav28.cloudbees.net/getEnrollCourseByUnivId?univId=");
//		//	Thread.sleep(5000);
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getEnrollCourseByUnivName?univName=San Jose State");
//		Thread.sleep(5000);
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getAllFinancialAid");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getFinancialAidByUnivId");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getFinancialAidByUnivName");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getAllUniversityProgram");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityProgramById");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityProgramByName");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityDetailsById");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityDetailsByName");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getAdmissionInfoByUnivId");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getAdmissionInfoByUnivName");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityApplicationById");
//		Thread.sleep(5000);
//
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityByMinGRE");
//		Thread.sleep(5000);
//
//		driver.get("http://universityapi.vaibhav28.cloudbees.net/getUniversityByMinTOEFL");

		driver.quit();


	}


}
