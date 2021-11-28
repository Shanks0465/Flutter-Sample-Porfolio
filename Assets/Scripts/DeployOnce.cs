using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeployOnce : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject plane;
    public void disablePlane(){
        plane.active = false;
    }
}
