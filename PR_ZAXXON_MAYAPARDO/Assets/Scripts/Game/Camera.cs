using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Camera : MonoBehaviour
{
    [SerializeField] Transform playerPosition;
    [SerializeField] float smoothVelocity = 0.1F;
    [SerializeField] Vector3 camaraVelocity = Vector3.zero;
    [SerializeField] float camDist = -4f;
    [SerializeField] float camHeight = 1f;

    void Update()
    {
        float newPosZ = playerPosition.position.z + camDist;
        float newPosY = playerPosition.position.y + camHeight;
        Vector3 targetPosition = new Vector3(playerPosition.position.x, newPosY, newPosZ);
        transform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref camaraVelocity, smoothVelocity);

        //transform.LookAt(playerPosition);

    }
}
