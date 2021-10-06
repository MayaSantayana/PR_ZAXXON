using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrefabTest : MonoBehaviour
{
    public GameObject block; 
    [SerializeField] float width = 5;
    [SerializeField] int height = 5;
    [SerializeField] Transform initPos;

    float separacion;
    
    void Wall()
    {

        for (int y=0; y<height; y++)
        {
            for (int x = 0; x < width; x++)
            {
                Instantiate(block, new Vector3(x, y, 0), Quaternion.identity);
            }
        }
    
    }
    void Generator()
    {
    separacion = 1.5f;
    //Vector3 newPos = new Vector3(Random.Range(-10f, 11f), 0f, 0f);
    
    Vector3 despl = new Vector3(separacion, 0f, 0f);
        for (int y = 0; y < height; y++)
        {
            for (int x = 0; x < width; x++)
            {
                float randispX = Random.Range(-width, width);
                float randispZ = Random.Range(-10, 11);
                //Vector3 newPos = new Vector3(Random.Range(-10f, 11f), 0f, 0f);
                Instantiate(block, new Vector3(randispX, y, randispZ), Quaternion.identity);
            }
        }
    }
// Start is called before the first frame update
void Start()
    {
        //Wall();
    }

    // Update is called once per frame
    void Update()
    {

        if (Input.GetKey(KeyCode.Space))
        {
            Generator();
        }

    }
}
