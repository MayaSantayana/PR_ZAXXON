using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObstacleGenerator : MonoBehaviour
{
    InitGameScript initGameScript;
    [SerializeField] GameObject initObject;

    //Obstacles
    [SerializeField] GameObject[] column;
    [SerializeField] GameObject[] wall;
    [SerializeField] GameObject[] small;

    //Deco
    [SerializeField] GameObject[] deco;

    //Instantiation
    [SerializeField] float speed;
    Vector3 initPos;
    float intervalo = 60f;

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;
        initPos = transform.position;
        print(initPos);
        StartingMapGen();
        StartCoroutine("Generator");
        StartCoroutine("DecoGenerator");
    }

    void Update()
    {
        speed = initGameScript.spaceshipSpeed;
        float waiting = intervalo / speed;
        if (initGameScript.alive == false)
        {
            StopCoroutine("ObstacleGen");
        }
    }

    //METHODS
    void StartingMapGen()
    {
        for (int n = 0; n < transform.position.z; n++)
        {
            int r = Random.Range(0, 4);

            int rObj = Random.Range(0, deco.Length);
            float rPosZ = Random.Range(-3f, 3f);
            float newPosZ = transform.position.z - n * 2 + rPosZ;
            float newPosX = transform.position.x + Random.Range(-20f, 20f);
            float rRotation = Random.Range(-180f, 180f);
            if (r > 2)
                Instantiate(deco[rObj], new Vector3(newPosX, transform.position.y, newPosZ), transform.rotation * Quaternion.Euler(0f, rRotation, 0f));
        }
    }

    IEnumerator ObstacleGen()
    {
        float waiting = intervalo / speed;
        float rInterval = Random.Range(0f, 0.5f);
        while (true)
        {
            float randObst = Random.Range(0f, 10f);
            

            //Esto sería mejor con un switch
            if (randObst < 1)
            {
                int r = Random.Range(0, wall.Length);
                float randispX = initPos.x + Random.Range(-7f, 7f);
                float randispZ = initPos.z + Random.Range(-2f, 2f);
                Instantiate(wall[r], new Vector3(randispX, transform.position.y, randispZ), Quaternion.identity);
            }
            else if (randObst >= 1 && randObst < 4)
            {
                int r = Random.Range(0, column.Length);
                float randispX = transform.position.x + Random.Range(-7f, 7f);
                float randispZ = transform.position.y + Random.Range(-2f, 2f);
                float rRotation = Random.Range(-180f, 180f);
                Instantiate(column[r], new Vector3(randispX, transform.position.y, randispZ), transform.rotation * Quaternion.Euler(0f, rRotation, 0f));
            }
            else if (randObst >=4 && randObst <= 8)
            {
                int r = Random.Range(0, small.Length);
                float randispX = transform.position.x + Random.Range(-7f, 7f);
                float randispZ = transform.position.y + Random.Range(-2f, 2f);
                float rRotation = Random.Range(-180f, 180f);
                Instantiate(small[r], new Vector3(randispX, transform.position.y, randispZ), transform.rotation * Quaternion.Euler(0f, rRotation, 0f));
            }

            yield return new WaitForSeconds(waiting + rInterval);
        }
    }

    IEnumerator DecoGenerator()
    {
        while (true)
        {

        }
    }
}
