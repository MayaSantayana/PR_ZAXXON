using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapMove : MonoBehaviour
{
    [SerializeField] GameObject mapAsset;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    float speed;
    float speedVar = 1;

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
    }

    void Update()
    {
        speed = initGameScript.spaceshipSpeed;

        
        transform.Translate(0, 0, -speed * Time.deltaTime * speedVar);
        if (transform.position.z < -30)
        {
            Destroy(mapAsset);
        }

        if (initGameScript.alive == false)
            {
                StopCoroutine("SpeedIncrease");

                if (speedVar > 0f)
                {
                    StartCoroutine("slow");
                }
                else if (speedVar < 0f)
                {
                    StopCoroutine("slow");
                    speedVar = 0;
                }
            }
    }

    IEnumerator slow()
    {
        speedVar -= 0.01f;
        yield return new WaitForSeconds(0.1f);
    }
}
