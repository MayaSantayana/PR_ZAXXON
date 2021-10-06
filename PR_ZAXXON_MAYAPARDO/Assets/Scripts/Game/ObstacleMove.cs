using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleMove : MonoBehaviour
{
    [SerializeField] GameObject Obstacle;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    float speed;

    // Start is called before the first frame update
    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
    }

    // Update is called once per frame
    void Update()
    {
        speed = initGameScript.spaceshipSpeed;
        transform.Translate(0, 0, 0.8f * -speed * Time.deltaTime);
        if (transform.position.z < -30)
        {
            Destroy(Obstacle);
        }
    }
}
