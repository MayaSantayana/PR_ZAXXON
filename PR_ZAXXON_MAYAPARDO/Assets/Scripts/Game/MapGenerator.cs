using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MapGenerator : MonoBehaviour
{
    public GameObject mapAssets;
    [SerializeField] Transform initPos;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    float intervalo = 100f;
    float speed;
   
    
    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
        StartCoroutine("MapGen");
    }


    void Update()
    {
        speed = initGameScript.spaceshipSpeed;
    }
    IEnumerator MapGen()
    {
        float waiting = intervalo / speed;
        while (true)
        {
            Instantiate(mapAssets, transform.position, Quaternion.identity);
            yield return new WaitForSeconds(waiting);
        }
    }
}
