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
    [SerializeField] float moveMult;
    float moveDeacTime = 0.8f;
    float moveDeacX;
    float moveDeacY;

    //Map Limits
    float limiteR = 7f;
    float limiteL = -7f;
    bool inLimitH = true;

    //Hover
    public float multiplier = 10;

    public Transform[] anchors = new Transform[4];
    RaycastHit[] hits = new RaycastHit[4];

    //Particles
    [SerializeField] ParticleSystem engineFire_L;
    [SerializeField] ParticleSystem engineFire_R;

    #region START-UPDATE

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
        for (int i = 0; i < 4; i++)
            ApplyForce(anchors[i], hits[i]);

        Move();
    }
    #endregion

    #region MOVEMENT

    //Control
    void Move()
    {
        float PosX = transform.position.x;
        float desplH = Input.GetAxis("Horizontal");
        float desplV = Input.GetAxis("Vertical");

        //Limits
        if (PosX < limiteL && desplH < 0 || PosX > limiteR && desplH > 0)
        {
            inLimitH = false;
        }
        else
        {
            inLimitH = true;
        }


        //Move inputs
        if (inLimitH && desplH != 0f)
        {
            rb.AddForce(Vector3.right * desplH * moveSpeed * moveMult);
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

        animator.SetFloat("MoveDir", desplH);
    }

    //Hover
    void ApplyForce(Transform anchor, RaycastHit hit)
    {
        if (Physics.Raycast(anchor.position, -anchor.up, out hit))
        {
            float force = 0;
            force = Mathf.Abs(1 / (hit.point.y - anchor.position.y));
            rb.AddForceAtPosition(transform.up * force * multiplier, anchor.position, ForceMode.Acceleration);
        }
    }

    #endregion

    #region COLLISIONS
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
    #endregion
}
