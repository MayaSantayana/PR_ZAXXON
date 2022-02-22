using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnviromentMove : MonoBehaviour
{
    [SerializeField] GameObject enviroment;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    [SerializeField] float speed;
    float speedVar = 1f;

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
    }

    void Update()
    {
        transform.Translate(0, 0, -speed * Time.deltaTime * speedVar);
        if (transform.position.z <= -100)
        {
            Vector3 instPos = transform.position;
            Instantiate(enviroment, new Vector3(instPos.x, instPos.y, instPos.z + 400), Quaternion.identity);
            Object.Destroy(enviroment);
        }


        if (initGameScript.alive == false)
        {
            if (speedVar > 0f)
            {
                StartCoroutine("slow");
            }
            else if (speedVar < 0f)
            {
                StopCoroutine("slow");
                speedVar = 0;
            }

        speed = initGameScript.spaceshipSpeed;

        }
    }
    IEnumerator slow()
    {
        speedVar -= 0.005f;
        yield return new WaitForSeconds(0.1f);
    }

}

