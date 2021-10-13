using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InitGameScript : MonoBehaviour
{
    //GLOBAL VARIABLES
    public float spaceshipSpeed = 50f;
    public float levelTime = 360f;
    [SerializeField] float speedIncrease = 10f;

    IEnumerator SpeedIncrease()
    {
        while (spaceshipSpeed < 200f)
        {
        spaceshipSpeed = spaceshipSpeed + speedIncrease;
        Debug.Log("New Speed:" + spaceshipSpeed);
        yield return new WaitForSeconds(levelTime);

        }
        if (spaceshipSpeed >= 190f) 
        {
        Debug.Log("Max speed");
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine("SpeedIncrease");
        spaceshipSpeed = 50f;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
