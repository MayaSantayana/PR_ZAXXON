using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacles : MonoBehaviour
{
    public GameObject obstacle;
    [SerializeField] Transform initPos;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    [SerializeField] float speed;
    float intervalo = 10f;
    float waiting;

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
        StartCoroutine("Generator");


    }

    // Update is called once per frame
    void Update()
    {
        speed = initGameScript.spaceshipSpeed;
        float waiting = intervalo / speed;
    }
    IEnumerator Generator()
    {
        float waiting = intervalo / speed;
        while (true)
        {
            int width = 7;
            /*if (intervalo = null) 
            {
                intervalo = 1f;
            }*/
            for (int n = Random.Range(1, 4); n < 5; n++)
            {
                int rotationVal = Random.Range(0, 4);
                float randispX = Random.Range(-width, width);
                float randispZ = transform.position.z + Random.Range(-6, 7);
                float randispY = transform.position.y + Random.Range(-1, 8);
                //Instantiate(obstacle, new Vector3(randispX, 0, 0 + randispZ), Quaternion.identity);
                Instantiate(obstacle, new Vector3(randispX, randispY, randispZ), Quaternion.Euler(0f, 0f, rotationVal * 45f));
            }
            yield return new WaitForSeconds(waiting);
        }
    }
}
