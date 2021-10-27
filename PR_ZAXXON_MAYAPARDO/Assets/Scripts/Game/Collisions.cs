using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Collisions : MonoBehaviour
{
    private int health = 3;
    [SerializeField] GameObject ship;
    private void OnTriggerEnter(Collider other)
    {
        print("He chocao con " + other.gameObject.name);
        if (other.gameObject.layer == 6)
        {
            health--;
            if (health <= 0)
            {
                Object.Destroy(ship);
            }
            else
            {
                print("Your health is " + health);
            }

        }
        
    }
    // Start is called before the first frame update
    void Start()
    {
        health = 3;
        print("Your health is " + health);
    }

    // Update is called once per frame
    void Update()
    {
    }
}
