using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement2 : MonoBehaviour
{
    public int health;
    private int maxHealth;
    [SerializeField] GameObject ship;
    [SerializeField] float desplSpeed;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    bool inv = false;
    public Renderer rend;


    float limiteR = 7f;
    float limiteL = -7f;
    float limiteU = 8f;
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

    void OnTriggerEnter(Collider other)
    {
        print("He chocao con " + other.gameObject.name);
        if (other.gameObject.layer == 6)
        {
            Hit();        
        }

        if (other.gameObject.layer == 7)
        {
            if (health < maxHealth)
            {
                health += 1;
                Object.Destroy(other);
            }
            else
            {
                Debug.Log("Full health");
            }
        }
    }

    void Hit()
    {
        if ((health > 0) && (inv == false))
        {
            health -= 1;
            print("Your health is " + health);
            inv = true;
            rend.enabled = false;
            Invoke("InvRevoke", 2f);
        }

        else if (health <= 0)
        {
            initGameScript.alive = false;
        }
    }

    void InvRevoke()
    {
        rend.enabled = true;
        inv = false;
    }

    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        maxHealth = 3;
        health = 3;
        print("Your health is " + health);

    }

    void Update()
    {

        initGameScript = initObject.GetComponent<InitGameScript>();
        desplSpeed = initGameScript.spaceshipSpeed;
        Move();
    }
}
