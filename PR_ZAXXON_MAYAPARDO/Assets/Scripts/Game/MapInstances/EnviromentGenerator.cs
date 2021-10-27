using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnviromentGenerator : MonoBehaviour
{
    [SerializeField] GameObject enviroment;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    [SerializeField] float speed;


    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;

        
        for (float n = 0; n < 400; n += 100)
        {
            Vector3 startInstPos = new Vector3(0f, 0f, n);
            Instantiate(enviroment, startInstPos, Quaternion.identity);
        }
    }

    void Update()
    {
        speed = initGameScript.spaceshipSpeed;

        transform.Translate(Vector3.back * Time.deltaTime * speed);
        /*if (transform.position.z <= -100)
        {
            Vector3 instPos = transform.position;
            //Instantiate(enviroment, new Vector3(instPos.x, instPos.y, instPos.z +300), Quaternion.identity);
            Object.Destroy(enviroment);
        }*/
    }
}
