using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using CodeMonkey.Utils;

public class GraphScript : MonoBehaviour
{
    [SerializeField] private Sprite circleSprite;
    private RectTransform graphContainer;

    // public Text Predictions;

    
    // void Update(){
    //     PlotRegressionLine(LinearRegression.coeffs);
    // }

    public GameObject CreateCircle(Vector2 anchoredPosition){
        GameObject gameObject = new GameObject("circle",typeof(Image));
        gameObject.transform.SetParent(graphContainer,false);
        gameObject.GetComponent<Image>().sprite = circleSprite;
        RectTransform rectTransform = gameObject.GetComponent<RectTransform>();
        rectTransform.anchoredPosition = anchoredPosition;
        rectTransform.sizeDelta = new Vector2(10,10);
        rectTransform.anchorMin = new Vector2(0,0);
        rectTransform.anchorMax = new Vector2(0,0);
        return gameObject;
    }

    public void ShowGraph(List<double> valueList,Color linecolor){
        float graphHeight = graphContainer.sizeDelta.y;
        float yMaximum = 10f;
        float xSize = 50f;

        GameObject lastCircleGameObject = null;
        for (int i=0;i<valueList.Count;i++) {
            float xPosition = 2 * xSize + i * xSize;
            float yPosition = ((float)valueList[i] / yMaximum) * graphHeight + 50f;
            GameObject circleGameObject = CreateCircle(new Vector2(xPosition,yPosition));
            if(lastCircleGameObject!=null) {
                CreateDotConnection(lastCircleGameObject.GetComponent<RectTransform>().anchoredPosition,circleGameObject.GetComponent<RectTransform>().anchoredPosition,linecolor);
            }
            lastCircleGameObject = circleGameObject;
        }
    }

    public void CreateDotConnection(Vector2 dotPosA, Vector2 dotPosB,Color lineColor){
        GameObject gameObject = new GameObject("dotConnection",typeof(Image));
        gameObject.transform.SetParent(graphContainer,false);
        gameObject.GetComponent<Image>().color = lineColor;
        Vector2 dir = (dotPosB - dotPosA).normalized;
        float distance = Vector2.Distance(dotPosA,dotPosB);        
        RectTransform rectTransform = gameObject.GetComponent<RectTransform>();
        rectTransform.anchorMin = new Vector2(0,0);
        rectTransform.anchorMax = new Vector2(0,0);
        rectTransform.sizeDelta = new Vector2(distance,3f);
        rectTransform.anchoredPosition = dotPosA + dir * distance *.5f;
        rectTransform.localEulerAngles = new Vector3 (0,0,UtilsClass.GetAngleFromVectorFloat(dir));
    }

    public void PlotRegressionLine(){
        double[] coeffs = LinearRegression.coeffs;
        List<double> valueList = new List<double>() {1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0};
        List<double> predictions = new List<double>();
        foreach(double value in valueList){
            predictions.Add(coeffs[0]+value*coeffs[1]);
        }
        ShowGraph(predictions,new Color(0,0,1));
        // string res = "";
        // foreach(double value in predictions){
        //     res+= value.ToString() + " ";
        // }
        // Predictions.text = res;
    }
    private void PlotOriginal(){
        graphContainer = transform.Find("graphContainer").GetComponent<RectTransform>();
        List<double> valueList = new List<double>() {2.0,4.0,6.0,8.0,10.0,12.0,14.0,16.0,18.0,20.0,22.0,24.0,26.0,28.0,30.0};
        ShowGraph(valueList,new Color(1,0,0));
    }

    private void Awake(){
        PlotOriginal();
    }
    public void ClearGraph(){
        foreach(Transform child in graphContainer){
            if(child.tag!="GraphContainerBg"){
                Destroy(child.gameObject);
            }
        }
        PlotOriginal();
    }
}   

