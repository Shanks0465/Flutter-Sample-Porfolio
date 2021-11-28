using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;

public class LinearRegression : MonoBehaviour
{
    public Text Info;
    public Text b0;
    public Text b1;
    public Text mseloss;
    public static double b0val;
    public static double b1val;
    public Text GraphCoeff;
    public static double xval = 1;
    public static double x_mean = 0.0;

    public static double y_mean = 0.0;
    public static double[] coeffs={0,0};
    public Text formula;
    public static double[] x={1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0};
    public static double[] y={2.0,4.0,6.0,8.0,10.0,12.0,14.0,16.0,18.0,20.0};
    // Start is called before the first frame update
    public double Sum(double[] values){
        double sum=0;
        foreach (var val in values){
            sum+=val;
        }
        return sum;
    }

    public double Mean(double[] values){
        double mean=Sum(values)/values.Length;
        return mean;
    }

    public double Variance(double[] values,double mean){
        double variance=0;
        foreach (var val in values){
            double x=val-mean;
            variance+=x*x;
        }
        return variance;
    }

    public double Covariance(double[] x,double meanx,double[] y,double meany){
        double covariance=0;
        for(int i=0;i<x.Length;i++){
            covariance+=(x[i]-meanx)*(y[i]-meany);
        }
        return covariance;
    }
    
    public double[] Coefficients(double[] x,double[] y){
        x_mean=Mean(x);
        y_mean=Mean(y);
        b1val = Covariance(x,x_mean,y,y_mean)/Variance(x,x_mean);
        b0val = y_mean -b1val * x_mean;
        double[] res = {b0val,b1val};
        return res;
    }
    // Update is called once per frame
    public void Train()
    {

        coeffs = Coefficients(x,y);
        // b0.text = coeffs[0].ToString();
        // b1.text = coeffs[1].ToString();
        // formula.text = coeffs[0].ToString() + " + " + coeffs[1].ToString() + " * "+"X = Y";
    }
    void Update(){
        b0.text = coeffs[0].ToString();
        b1.text = coeffs[1].ToString();
        double output = coeffs[0]+coeffs[1]*xval;
        formula.text = coeffs[0].ToString() + " + " + coeffs[1].ToString() + " * "+xval.ToString()+ "=" + output.ToString();
        Predict(coeffs);
        SetGraphCoeff();
    }

    public void Predict(double[] covals){
        double[] xvals={1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0};
        double[] yvals={2.0,4.0,6.0,8.0,10.0,12.0,14.0,16.0,18.0,20.0};
        double mse=0;
        double[] res= new double[10];
        for(int i =0;i<xvals.Length;i++){
            res[i] = covals[0] + covals[1]*xvals[i];
        }
        for(int i=0;i<yvals.Length;i++){
            mse+=(yvals[i]-res[i])*(yvals[i]-res[i]);
        }
        mseloss.text = "MSE Loss: " + (Math.Round(mse/10.0,4)).ToString();
    }

    public void SetB0(string value){
        coeffs[0]=double.Parse(value);
        b0.text = coeffs[0].ToString();
    }
    public void SetB1(string value){
        coeffs[1]=double.Parse(value);
        b1.text = coeffs[1].ToString();
    }

    public void SetGraphCoeff(){
        GraphCoeff.text = "Coefficients: ["+coeffs[0].ToString()+","+coeffs[1].ToString()+"]";
    }
    public void SetInput(string value){
        xval=double.Parse(value);
    }
    public void HandleDropDown(int val){
        if(val==0){
            Info.text = "Mean of X: "+x_mean.ToString();
        }
        if(val==1){
            Info.text = "Mean of Y: "+y_mean.ToString();
        }
    }
}
