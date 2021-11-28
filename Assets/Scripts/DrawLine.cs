using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DrawLine : MonoBehaviour
{
    // Start is called before the first frame update
    public Material mat1;
    private LineRenderer lineRenderer;
    private float counter;
    private float dist;
    public Transform origin;
    public Transform destination;
    public float lineDrawSpeed = 6f;


    public void Params()
    {
        LineRenderer obj = gameObject.AddComponent<LineRenderer>();
        lineRenderer = obj;
        lineRenderer.material=mat1;
        lineRenderer.positionCount = 2;
        lineRenderer.useWorldSpace = false;
        // lineRenderer.SetPosition(0,origin.position);
        lineRenderer.SetWidth(0.15f,0.15f);

        origin.transform.GetChild(0).GetComponent<MeshRenderer>().enabled=true;
        destination.transform.GetChild(0).GetComponent<MeshRenderer>().enabled=true;

        dist = Vector3.Distance(origin.position,destination.position);
    }

    // Update is called once per frame
    public void SetPos()
    {
        lineRenderer.SetPosition(0,origin.localPosition);
        lineRenderer.SetPosition(1,destination.localPosition);
        // if(counter < dist){
        //     counter += .1f/lineDrawSpeed;

        //     float x = Mathf.Lerp(0,dist,counter);

        //     Vector3 pointA = origin.position;
        //     Vector3 pointB = destination.position;

        //     Vector3 pointAlongLine = x * Vector3.Normalize(pointB-pointA) + pointA;

        //     lineRenderer.SetPosition(1,pointAlongLine);
        // }
    }
}
