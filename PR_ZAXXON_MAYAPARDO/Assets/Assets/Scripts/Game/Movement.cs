using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    //float speed = 10.0f;
    [SerializeField] Vector3 playerStart = new Vector3(0f, 0f, 0f);
    [SerializeField] Vector3 playerUp = new Vector3(0f, 3f, 0f);
    [SerializeField] Vector3 playerDown = new Vector3(0f, -3f, 0f);
    [SerializeField] Vector3 playerLeft = new Vector3(-3f, 0f, 0f);
    [SerializeField] Vector3 playerRight = new Vector3(3f, 0f, 0f);

    void ResetPos()
    {
        transform.position = playerStart;
    }
    void Move()
    {
        Vector3 playerPos = transform.position;
        float maxX = 2f;
        float minX = -2f;
        float maxY = 8f;
        float minY = -0.2f;

        float rot = Input.GetAxis("Horizontal");

        if (Input.GetKeyDown("r"))
        {
            ResetPos();
        }
        if (Input.GetKey("w"))
        {
            if (playerPos.y <= maxY)
            {
                transform.Translate(playerUp * Time.deltaTime * 3);
            }
        }

        if (Input.GetKey("s"))
        {
            if (playerPos.y >= minY)
            {
                transform.Translate(playerDown * Time.deltaTime * 3);
            }
        }

        if (Input.GetKey("d"))
        {
            if (playerPos.x < maxX)
            {
                transform.Translate(playerLeft * Time.deltaTime * 3);
            }
        }

        if (Input.GetKey("a"))
        {
            if (playerPos.x > minX)
            {
                transform.Translate(playerRight * Time.deltaTime * 3);
            }
        }

        //transform.Translate(Vector3.back * Time.deltaTime * rot * 100f);




        playerPos.x = Mathf.Clamp(playerPos.x, -maxX, maxX);
        playerPos.y = Mathf.Clamp(playerPos.y, minY, maxY);
        print(playerPos);
    }

    void Update()
    {
        Move();
    }
}
