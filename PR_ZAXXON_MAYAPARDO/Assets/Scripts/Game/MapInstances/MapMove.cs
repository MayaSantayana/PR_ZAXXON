using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapMove : MonoBehaviour
{
    [SerializeField] GameObject mapAsset;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    float speed;

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
    }

    void Update()
    {
        speed = initGameScript.spaceshipSpeed;
        transform.Translate(0, 0, -speed * Time.deltaTime);
        if (transform.position.z < -30)
        {
            Destroy(mapAsset);
        }
    }
}
