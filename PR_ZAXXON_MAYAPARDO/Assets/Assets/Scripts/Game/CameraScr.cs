using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraScr : MonoBehaviour
{
    [SerializeField] Transform playerPosition;
    [SerializeField] float smoothVelocity = 0.01F;
    [SerializeField] Vector3 camaraVelocity = Vector3.zero;
    [SerializeField] float camDist = -3.5f;
    [SerializeField] float camHeight = 3f;

    void FixedUpdate()
    {
        float newPosZ = playerPosition.position.z + camDist;
        float newPosY = playerPosition.position.y + camHeight;
        Vector3 targetPosition = new Vector3(playerPosition.position.x, newPosY, newPosZ);
        transform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref camaraVelocity, smoothVelocity);

        //transform.LookAt(playerPosition);

    }
}
