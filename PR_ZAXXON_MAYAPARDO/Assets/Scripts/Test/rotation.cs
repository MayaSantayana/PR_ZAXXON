using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class rotation : MonoBehaviour
{
    public GameObject Helix;
    void spin()
    {
        if (Input.GetKey("d"))
        {
            transform.Rotate(0f, 100f * Time.deltaTime, 0f, Space.Self);
            print("weeee");
        }
        if (Input.GetKey("a"))
        {
            transform.Rotate(0f, -100f * Time.deltaTime, 0f, Space.Self);
            print("weeee");
        }
    }
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        spin();
    }
}
