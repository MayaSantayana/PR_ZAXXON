using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RigidBody : MonoBehaviour


{
    Rigidbody rb;
    public GameObject playerObject;
    // Start is called before the first frame update
    void Start()
    {
        rb = playerObject.GetComponent<Rigidbody>();
        rb.drag = 5f;
    }

    // Update is called once per frame
    void Update()
    {
        float desplY = Input.GetAxis("Vertical");
        rb.drag = desplY * 40f;
    }
}
