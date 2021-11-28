using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectRotate : MonoBehaviour
{
    // Start is called before the first frame update
    public void RotateLeft(){
        this.transform.Rotate(Vector3.up, -1);
    }

    public void RotateRight(){
        this.transform.Rotate(Vector3.up, 1);
    }
}
