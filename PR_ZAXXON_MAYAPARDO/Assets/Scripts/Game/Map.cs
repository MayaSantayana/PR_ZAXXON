using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Map : MonoBehaviour
{
    Vector3 mapStart = new Vector3(0, 0, 0);
    void ResetPos()
    {
        transform.position = mapStart;
    }
    void MapMove()
    {
        Vector3 newPosition = transform.position;
        transform.position = newPosition;
    }

    void Update()
    {
        if (Input.GetKeyDown("r"))
        {
            ResetPos();
        }

        MapMove();
        transform.position += new Vector3(0, 0, -10 * Time.deltaTime);
    }
}