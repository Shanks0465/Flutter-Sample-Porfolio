using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class RayCastInput : MonoBehaviour
{
    // Start is called before the first frame update
    public Canvas B0;
    public Canvas B1;
    private bool b0=false;
    private bool b1=false;
    void Start()
    {
        B0.enabled=b0;
        B1.enabled=b1;
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetTouch(0).phase==TouchPhase.Began){
            Ray ray = Camera.main.ScreenPointToRay(Input.GetTouch(0).position);
            RaycastHit hit;
            if(Physics.Raycast(ray,out hit)){
                if(hit.transform.gameObject.tag=="B0"){
                    b0= !b0;
                    B0.enabled = b0;
                }
            }
            if(Physics.Raycast(ray,out hit)){
                if(hit.transform.gameObject.tag=="B1"){
                    b1= !b1;
                    B1.enabled = b1;
                }
            }
        }
    }
}
