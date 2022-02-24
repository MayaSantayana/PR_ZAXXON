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

    //PickUps
    [SerializeField] GameObject[] pickUp;


    //Instantiation
    [SerializeField] float speed;
    float intervalo = 20f;
    float waiting;

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
        speed = initGameScript.spaceshipSpeed;

        StartingMapGen();
        StartCoroutine("ObstacleGen");
        StartCoroutine("DecoGen");
        StartCoroutine("PickUpGen");
    }

    void Update()
    {
        speed = initGameScript.spaceshipSpeed;
        waiting = intervalo / speed;
        if (initGameScript.alive == false)
        {
            StopCoroutine("ObstacleGen");
            StopCoroutine("DecoGen");
            StopCoroutine("PickUpGen");
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
            float newPosZ = transform.position.z - n * 10 + rPosZ;
            float newPosX = transform.position.x + Random.Range(-20f, 20f);
            float rRotation = Random.Range(-180f, 180f);
            if (r >= 2)
                Instantiate(deco[rObj], new Vector3(newPosX, transform.position.y, newPosZ), transform.rotation * Quaternion.Euler(0f, rRotation, 0f));
        }
    }

    IEnumerator ObstacleGen()
    {
        while (true)
        {
            float randObst = Random.Range(0f, 10f);
            float rInterval = Random.Range(0f, 0.5f);

            //Esto sería mejor con un switch
            if (randObst < 1)
            {
                int r = Random.Range(0, wall.Length);
                float randispX = transform.position.x + Random.Range(-7f, 7f);
                float randispZ = transform.position.z + Random.Range(-2f, 2f);
                Instantiate(wall[r], new Vector3(randispX, transform.position.y, randispZ), Quaternion.identity);
            }
            else if (randObst >= 1 && randObst < 5)
            {
                int r = Random.Range(0, column.Length);
                float randispX = transform.position.x + Random.Range(-7f, 7f);
                float randispZ = transform.position.z + Random.Range(-2f, 2f);
                float rRotation = Random.Range(-180f, 180f);
                Instantiate(column[r], new Vector3(randispX, transform.position.y, randispZ), transform.rotation * Quaternion.Euler(0f, rRotation, 0f));
            }
            else if (randObst >=5 && randObst <= 9)
            {
                int r = Random.Range(0, small.Length);
                float randispX = transform.position.x + Random.Range(-7f, 7f);
                float randispZ = transform.position.z + Random.Range(-2f, 2f);
                float rRotation = Random.Range(-180f, 180f);
                Instantiate(small[r], new Vector3(randispX, transform.position.y, randispZ), transform.rotation * Quaternion.Euler(0f, rRotation, 0f));
            }

            yield return new WaitForSeconds(waiting + rInterval);
        }
    }

    IEnumerator DecoGen()
    {
        while (true)
        {
            float rInterval = Random.Range(0f, 0.5f);
            int rObj = Random.Range(0, deco.Length);
            float newPosZ = transform.position.z + Random.Range(-3f, 3f);
            float newPosX = transform.position.x + Random.Range(-20f, 20f);
            float rRotation = Random.Range(-180f, 180f);

            int r = Random.Range(0, 4);
            if (r >= 2)
                Instantiate(deco[rObj], new Vector3(newPosX, transform.position.y, newPosZ), transform.rotation * Quaternion.Euler(0f, rRotation, 0f));
            yield return new WaitForSeconds(waiting);
        }
    }

    IEnumerator PickUpGen()
    {
        while (true)
        {

            int obj;
            int r = Random.Range(0, 100);

            float newPosZ = transform.position.z + Random.Range(-2f, 2f);
            float newPosX = transform.position.x + Random.Range(-12f, 12f);

            if (r == 99)
                obj = 1;
            else
                obj = 0;

            /*if (pickUp[obj] == null)
                StopCoroutine(PickUpGen());*/

            Instantiate(pickUp[obj], new Vector3(newPosX, transform.position.y, newPosZ), Quaternion.identity);
            yield return new WaitForSeconds(waiting);
        }
    }

}
