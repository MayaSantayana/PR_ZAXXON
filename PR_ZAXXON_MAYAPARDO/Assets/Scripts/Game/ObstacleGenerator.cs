using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleGenerator : MonoBehaviour
{
    public GameObject obstacle;
    [SerializeField] Transform initPos;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    [SerializeField] float speed;
    float intervalo = 30f;
    float waiting;

    IEnumerator Generator()
    {
        float waiting = intervalo / speed;
        while (true)
        {
            int width = 6;
            float randispY = transform.position.y + Random.Range(0, 6);
            float randispX = Random.Range(-width, width);
            Instantiate(obstacle, new Vector3(randispX, randispY, transform.position.z), Quaternion.identity);
            yield return new WaitForSeconds(waiting);
        }
    }

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
        StartCoroutine("Generator");

    }

    void Update()
    {
        speed = initGameScript.spaceshipSpeed;
        float waiting = intervalo / speed;
    }
}
