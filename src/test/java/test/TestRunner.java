package test;


import org.junit.runner.RunWith;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;

@RunWith(Karate.class)
@KarateOptions(features = {"C:\\Users\\Shiv\\eclipse-workspace\\karate-archetype\\UI Features"}, 
tags = {"@UIAutomation"})
public class TestRunner extends TestBase {

}