package com.university.Servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.security.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;

import com.university.dao.DatabaseConnection;

import weka.classifiers.evaluation.NumericPrediction;
import weka.classifiers.functions.GaussianProcesses;
import weka.classifiers.functions.LinearRegression;
import weka.classifiers.functions.MultilayerPerceptron;
import weka.classifiers.functions.SMOreg;
import weka.classifiers.timeseries.WekaForecaster;
import weka.classifiers.timeseries.core.TSLagMaker;
import weka.classifiers.timeseries.core.TSLagMaker.Periodicity;
import weka.core.Instances;
import weka.experiment.InstanceQuery;
import weka.classifiers.evaluation.NominalPrediction;

public class Test {

List getPrediction(int univId)
{		List list = new ArrayList();
		List result = new ArrayList();

	try {
			// path to the Australian wine data included with the time series forecasting
			// package
//			String pathToTestData = weka.core.WekaPackageManager.PACKAGES_DIR.toString()
//					+ File.separator + "timeseriesForecasting" + File.separator + "sample-data"
//					+ File.separator + "test.arff";


			InstanceQuery query = new InstanceQuery();
//			query.setUsername("root");
//			query.setPassword("root");
			query.setUsername("b359683ef8d0a3");
			query.setPassword("ee805dcc");
			
			query.setQuery("SELECT applcn,applcnw,applcnm,admssn,admssnw,admssnm, enrlt,enrlftw,enrlftm,year FROM predictdata where unitid="+univId);
			list.add("applcn");
			list.add("admssn");
			list.add("enrlt");

			Instances test = query.retrieveInstances();


			System.out.println("Instance from db"+test);
			System.out.println("Instance"+test.get(0));
//


			// load the wine data
			//		      Instances test = new Instances(new BufferedReader(new FileReader(pathToTestData)));


			// new forecaster
			WekaForecaster forecaster = new WekaForecaster();

			// set the targets we want to forecast. This method calls
			// setFieldsToLag() on the lag maker object for us
			// forecaster.setFieldsToForecast("Fortified,Dry-white");
			//		      forecaster.setFieldsToForecast("applcn,admssn,enrlt");
			forecaster.setFieldsToForecast("applcn,applcnw,applcnm,admssn,admssnw,admssnm,enrlt,enrlftw,enrlftm");

			// default underlying classifier is SMOreg (SVM) - we'll use
			// gaussian processes for regression instead
//					      forecaster.setBaseForecaster(new MultilayerPerceptron());
//			forecaster.setBaseForecaster(new GaussianProcesses());
			forecaster.setBaseForecaster(new SMOreg());
//			forecaster.setBaseForecaster(new LinearRegression());



			forecaster.getTSLagMaker().setTimeStampField("year"); // date time stamp
			forecaster.getTSLagMaker().setPeriodicity(Periodicity.YEARLY);
			//      forecaster.getTSLagMaker().setMinLag(1);
			//      forecaster.getTSLagMaker().setMaxLag(1); // monthly data

			// add a month of the year indicator field
			//	      forecaster.getTSLagMaker().sesetAddMonthOfYear(true);

			// add a quarter of the year indicator field
			//      forecaster.getTSLagMaker().setAddQuarterOfYear(true);

			// build the model
			forecaster.buildForecaster(test, System.out);

			// prime the forecaster with enough recent historical data
			// to cover up to the maximum lag. In our case, we could just supply
			// the 12 most recent historical instances, as this covers our maximum
			// lag period
			forecaster.primeForecaster(test);

			// forecast for 12 units (months) beyond the end of the
			// training data
			List<List<NumericPrediction>> forecast = forecaster.forecast(1, System.out);

			// output the predictions. Outer list is over the steps; inner list is over
			// the targets
			for (int i = 0; i < 1; i++) {
				List<NumericPrediction> predsAtStep = forecast.get(i);
				for (int j = 0; j < 9; j++) {
					NumericPrediction predForTarget = predsAtStep.get(j);
					System.out.print("" + predForTarget.predicted() + " ");
//					System.out.println("After Checking "+predForTarget.predicted());
//					map.put(list.get(i),predForTarget.predicted());
					result.add(predForTarget.predicted());

				}
				System.out.println();
			}

			// we can continue to use the trained forecaster for further forecasting
			// by priming with the most recent historical data (as it becomes available).
			// At some stage it becomes prudent to re-build the model using current
			// historical data.
			System.out.println(result);
			return result;

		} catch (Exception ex) {
			ex.printStackTrace();
			return result;

		}
	}

}
