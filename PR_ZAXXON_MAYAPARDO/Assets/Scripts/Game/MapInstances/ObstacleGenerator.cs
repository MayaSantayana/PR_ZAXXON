using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleGenerator : MonoBehaviour
{
    [SerializeField] GameObject[] obstacle = new GameObject[6];
    [SerializeField] Transform initPos;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    [SerializeField] float speed;
    float intervalo = 60f;

    IEnumerator Generator()
    {
        float waiting = intervalo / speed;
        while (true)
        {
            float width = 2.5f;
            float widthDisp = Random.Range(-1f, 1f);
            float randNum = Random.Range(-1f, 1f);
            int r = Random.Range(0, obstacle.Length);
            if (randNum < 0)
            {
                float randispY = transform.position.y + Random.Range(1f, 6f);
                float randispZ = transform.position.y + Random.Range(-3f, 3f);
                Instantiate(obstacle[r], new Vector3(transform.position.x + width + widthDisp, randispY, transform.position.z + randispZ), Quaternion.identity);
            }
            if (randNum >= 0)
            {
                float randispY = transform.position.y + Random.Range(1, 6);
                float randispZ = transform.position.y + Random.Range(-3f, 3f);
                Instantiate(obstacle[r], new Vector3(transform.position.x - width + widthDisp, randispY, transform.position.z + randispZ), Quaternion.identity);
            }
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
        if (initGameScript.alive == false)
        {
            StopCoroutine("Generator");
        }
    }
}
