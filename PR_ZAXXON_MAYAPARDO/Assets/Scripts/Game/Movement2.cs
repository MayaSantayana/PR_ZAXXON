using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement2 : MonoBehaviour
{
    [SerializeField] GameObject ship;
    [SerializeField] float desplSpeed;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;

    int health;

    float limiteR = 7f;
    float limiteL = -7f;
    float limiteU = 4f;
    float limiteD = 0f;

    bool inLimitH = true;
    bool inLimitV = true;

    void Move()
    {
        float PosX = transform.position.x;
        float PosY = transform.position.y;
        float desplH = Input.GetAxis("Horizontal");
        float desplV = Input.GetAxis("Vertical");
        float rot = Input.GetAxis("Horizontal-J2");
        //print(rot);

        if (PosX < limiteL && desplH < 0 || PosX > limiteR && desplH > 0)
        {
            inLimitH = false;
        }
        else
        {
            inLimitH = true;
        }        

        if (PosY < limiteD && desplV < 0 || PosY > limiteU && desplV > 0)
        {
            inLimitV = false;
        }
        else
        {
            inLimitV = true;
        }



        if (inLimitH)
        {
            transform.Translate(Vector3.right * Time.deltaTime * desplH * 0.5f * desplSpeed, Space.World);
        }

        if (inLimitV)
        {
            transform.Translate(Vector3.up * Time.deltaTime * desplV * 0.5f * desplSpeed, Space.World);
        }
    }

   

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        
        health = initGameScript.health;
        print("Your health is " + health);

    }

    void Update()
    {

        initGameScript = initObject.GetComponent<InitGameScript>();
        desplSpeed = initGameScript.spaceshipSpeed;
        Move();
    }

    void OnTriggerEnter(Collider other)
    {
        print("He chocao con " + other.gameObject.name);
            if (other.gameObject.layer == 6)
            {
                initGameScript.Hit();
            }
            else if (other.gameObject.layer == 7)
            {
                if (initGameScript.health < initGameScript.maxHealth)
                {
                    initGameScript.PowerUp();
                    Object.Destroy(other);
                }
                else
                {
                    Debug.Log("Full health");
                }
            }
    }
}
