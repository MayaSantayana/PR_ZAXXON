using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class ChManager : MonoBehaviour
{
    //VARIABLES

    //Components
    [SerializeField] GameObject ship;
    GameObject initObject;
    Rigidbody rb;
    InitGameScript initGameScript;
    Animator animator;

    //Player
    int health;
    [SerializeField]float moveSpeed;
    float moveDeacTime = 0.2f;
    float moveDeacX;
    float moveDeacY;
    float angle;

    float smoothTime = 2f;
    float smoothVel = 0f;


    //Map Limits
    float limiteR = 7f;
    float limiteL = -7f;
    //float limiteU = 4f;
    //float limiteD = 0f;

    bool inLimitH = true;
    //bool inLimitV = true;

    void Start()
    {
        //Get components
        rb = gameObject.GetComponent<Rigidbody>();
        animator = gameObject.GetComponent<Animator>();
        initObject = GameObject.Find("GlobalVar");
    }

    private void Update()
    {
        initGameScript = initObject.GetComponent<InitGameScript>();
        
    }
    void FixedUpdate()
    {
        Move();
    }

    //MOVEMENT
    void Move()
    {
        float PosX = transform.position.x;
        //float PosY = transform.position.y;
        float desplH = Input.GetAxis("Horizontal");
        float desplV = Input.GetAxis("Vertical");
        //float targetAngle = 40 * desplH;
        

        if (PosX < limiteL && desplH < 0 || PosX > limiteR && desplH > 0)
        {
            inLimitH = false;
        }
        else
        {
            inLimitH = true;
        }

        if (inLimitH && desplH != 0f)
        {
            rb.AddForce(Vector3.right * desplH * moveSpeed * 3f);
        }
        else
        {
            rb.velocity = new Vector3(
                Mathf.SmoothDamp(rb.velocity.x, 0f, ref moveDeacX, moveDeacTime), 
                rb.velocity.y, 
                0f);
        }

        if ( desplH == 0f && desplV == 0f)
        {
            rb.velocity = new Vector3(
                Mathf.SmoothDamp(rb.velocity.x, 0f, ref moveDeacX, moveDeacTime),
                Mathf.SmoothDamp(rb.velocity.y, 0f, ref moveDeacY, moveDeacTime),
                0f);
        }

        /*angle = Mathf.SmoothDamp(transform.rotation.x, desplH * 20f, ref smoothVel, smoothTime);
        transform.rotation = Quaternion.Euler(0f, 0f, angle);*/

        animator.SetFloat("MoveDir", desplH);
    }

    //COLLISIONS
    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.layer == 6)
        {
            initGameScript.Hit();
        }
        else if (collision.gameObject.layer == 7)
        {
            if (initGameScript.health < initGameScript.maxHealth)
            {
                initGameScript.PowerUp();
                Object.Destroy(collision.gameObject);
            }
            else
            {
                Debug.Log("Full health");
            }
        }
    }
}
