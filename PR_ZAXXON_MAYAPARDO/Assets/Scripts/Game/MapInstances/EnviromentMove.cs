using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnviromentMove : MonoBehaviour
{
    [SerializeField] GameObject enviroment;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    [SerializeField] float speed;
    void move()
    {
        speed = initGameScript.spaceshipSpeed;

        transform.Translate(Vector3.back * Time.deltaTime * speed);
        if (transform.position.z <= -100)
        {
            Vector3 instPos = transform.position;
            Instantiate(enviroment, new Vector3(instPos.x, instPos.y, instPos.z + 400), Quaternion.identity);
            Object.Destroy(enviroment);
        }
    }
    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
        move();
    }

    void Update()
    {

    }
}

