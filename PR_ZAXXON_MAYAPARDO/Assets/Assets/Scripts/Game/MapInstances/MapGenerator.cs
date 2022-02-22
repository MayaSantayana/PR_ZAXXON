using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapGenerator : MonoBehaviour
{

    [SerializeField] GameObject[] mapAssets = new GameObject[2];
    [SerializeField] Transform initPos;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    float intervalo = 100f;
    float speed;
    int n;
    int count = 0;

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
        StartCoroutine("MapGen");
        StartingMapGen();
        intervalo = 100f;

    }


    void Update()
    {
        speed = initGameScript.spaceshipSpeed;
        if (initGameScript.alive == false)
        {
            StopCoroutine("MapGen");
        }
    }
    IEnumerator MapGen()
    {
        float waiting = intervalo / speed;
        while (true)
        {
            if (count <= 3)
            {
                Instantiate(mapAssets[0], transform.position, Quaternion.identity);
                count++;
                yield return new WaitForSeconds(waiting);
            }
            else
            {
                Instantiate(mapAssets[1], transform.position, Quaternion.identity);
                count = 0;
                yield return new WaitForSeconds(waiting);
            }
        }
    }
    
    void StartingMapGen()
    {
        for (n = 0; n < 20; n++)
        {
            float newPosZ = transform.position.z - (n * 100);
            Instantiate(mapAssets[0], new Vector3(transform.position.x, transform.position.y, newPosZ), Quaternion.identity);
        }
    }
}
