using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class obstacleMove : MonoBehaviour
{
    [SerializeField] float speed;
    public GameObject Obstacle;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    // Start is called before the first frame update
    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
    }

    // Update is called once per frame
    void Update()
    {
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;

        if (Input.GetKeyDown(KeyCode.Space))
        {
            StartCoroutine("Generator");
        }

        /*if (Input.GetKeyUp(KeyCode.Space))
        {
            StopCoroutine("Generator");
        }*/
        //MapMove();
        transform.Translate(0, 0, speed * Time.deltaTime);


    }
}