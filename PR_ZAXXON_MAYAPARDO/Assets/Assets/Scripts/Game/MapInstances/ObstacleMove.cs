using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleMove : MonoBehaviour
{
    [SerializeField] GameObject obstacle;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    int direction;
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
        transform.Translate(0, 0, -speed * Time.deltaTime, Space.World);
        if (transform.position.z < -30)
        {
            Destroy(obstacle);
        }
    }
}
