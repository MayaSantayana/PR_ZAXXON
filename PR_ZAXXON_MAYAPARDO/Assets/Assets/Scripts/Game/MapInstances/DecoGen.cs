using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DecoGen : MonoBehaviour
{
    [SerializeField] GameObject[] deco;
    // Start is called before the first frame update
    void Start()
    {
        StartingMapGen();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void StartingMapGen()
    {
        for (int n = 0; n < 100; n++)
        {
            int r = Random.Range(0, 4);
            
            int rObj = Random.Range(0, deco.Length);
            float rPosZ = Random.Range(-3f, 3f);
            float newPosZ = transform.position.z - n * 2 + rPosZ;
            float newPosX = transform.position.x + Random.Range(-20f, 20f);
            float rRotation = Random.Range(-180f, 180f);
            if (r > 2)
                Instantiate(deco[rObj], new Vector3(newPosX, transform.position.y, newPosZ), transform.rotation * Quaternion.Euler(0f, rRotation, 0f)) ;
        }
    }
}
