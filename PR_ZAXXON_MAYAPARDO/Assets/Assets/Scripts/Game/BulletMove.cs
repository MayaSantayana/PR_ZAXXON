using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletMove : MonoBehaviour
{
    [SerializeField] GameObject Bullet;
    [SerializeField] GameObject initObject;
    InitGameScript initGameScript;
    int speed = 90;
    // Start is called before the first frame update
    void Start()
    {
        initObject = GameObject.Find("GlobalVar");
        initGameScript = initObject.GetComponent<InitGameScript>();
    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(0, 0, speed * Time.deltaTime);
        if (transform.position.z >= 60)
        {
            Destroy(Bullet);
        }
    }
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.layer == 6)
        {
            Destroy(Bullet);
        }
        
        if (other.gameObject.layer == 8)
        {
            initGameScript.PickUp();
            Destroy(other);
            Destroy(Bullet);
            
        }
    }
}
